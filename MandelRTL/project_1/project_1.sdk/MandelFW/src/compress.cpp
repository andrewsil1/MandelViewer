#include "xparameters.h"
#include "xil_assert.h"
#include "xcalc.h"

#include "malloc.h"
#include "lz4frame.h"
#include "xxhash.h"

extern u8* compressBuffer;
#define PSRAM_BASE				XPAR_PSRAM_IP_0_S00_AXI_BASEADDR

u32 CompressOutput(u32 compressCapacity, u32 imageSize) {
	 LZ4F_cctx* cctxPtr;	//compressionContext object

	 LZ4F_errorCode_t error = LZ4F_createCompressionContext(&cctxPtr, LZ4F_VERSION);
	 if (error != 0) {
		#ifdef DEBUG
		 xil_printf("Error creating compression context: %s", LZ4F_getErrorName(error));
		#endif
		return XST_FAILURE;
	 }

	 LZ4F_frameInfo_t frameInfo;
	 frameInfo.blockSizeID = LZ4F_max1MB;
	 frameInfo.blockMode = LZ4F_blockLinked;
	 frameInfo.contentChecksumFlag = LZ4F_noContentChecksum; //disabled
	 frameInfo.dictID = 0;
	 frameInfo.blockChecksumFlag = LZ4F_noBlockChecksum; //disabled
	 frameInfo.contentSize = imageSize;

	 LZ4F_preferences_t prefs;
	 memset(&prefs,0,sizeof(prefs));
	 prefs.frameInfo = frameInfo;
	 prefs.compressionLevel = 0; //default (fast mode)
	 prefs.autoFlush = 1; //always flush, less use of internal buffers
	 prefs.favorDecSpeed = 0; //Don't care about decompression speed, much more so about the encode side. :-)

	 u32 bytesWritten = 0;

	 u32 returncode = LZ4F_compressBegin(cctxPtr, compressBuffer , compressCapacity, &prefs);
	 if (LZ4F_isError(returncode)) {
		 xil_printf("Error with compressBegin: %s\r\n",LZ4F_getErrorName(returncode));
		 return XST_FAILURE;
	 } else
		 bytesWritten += returncode;

	 volatile u32 bufferIndex = PSRAM_BASE;
	 u32 chunkSize = imageSize > 0x100000 ? 0x100000 : imageSize; // Chunk is minimum of complete buffer, or 1MB.

	 while (chunkSize > 0) {
		 returncode = LZ4F_compressUpdate(cctxPtr, compressBuffer+bytesWritten, compressCapacity-bytesWritten, (void*) bufferIndex, chunkSize, NULL);
		 if (LZ4F_isError(returncode)) {
				 xil_printf("Error with compressUpdate: %s\r\n",LZ4F_getErrorName(returncode));
				 return XST_FAILURE;
		 } else
		 {
			 bytesWritten += returncode;
			 bufferIndex += chunkSize;
		 }
		 imageSize -= chunkSize;
		 chunkSize = imageSize > 0x100000 ? 0x100000 : imageSize; // Chunk is minimum of complete buffer, or 1MB.
	 }

	 returncode = bytesWritten += LZ4F_compressEnd(cctxPtr, compressBuffer+bytesWritten, compressCapacity-bytesWritten, NULL);

	 if (LZ4F_isError(returncode)) {
	 	 		 xil_printf("Error with compressEnd: %s\r\n",LZ4F_getErrorName(returncode));
	 	 		 return XST_FAILURE;
	 } else
	 	 bytesWritten = returncode; //The returncode from compressEnd is the _entire_ size of the frame and includes the bytes from the prior calls.
	 #ifdef DEBUG
	 	 xil_printf("Successfully compressed to %d bytes.\r\n",bytesWritten);
	 #endif

	 LZ4F_freeCompressionContext(cctxPtr);
	 return bytesWritten;
 }
