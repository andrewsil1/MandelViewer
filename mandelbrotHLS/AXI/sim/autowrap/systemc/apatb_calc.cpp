// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "X0_V"
#define AUTOTB_TVIN_X0_V  "../tv/cdatafile/c.calc.autotvin_X0_V.dat"
// wrapc file define: "Y0_V"
#define AUTOTB_TVIN_Y0_V  "../tv/cdatafile/c.calc.autotvin_Y0_V.dat"
// wrapc file define: "X1_V"
#define AUTOTB_TVIN_X1_V  "../tv/cdatafile/c.calc.autotvin_X1_V.dat"
// wrapc file define: "width_V"
#define AUTOTB_TVIN_width_V  "../tv/cdatafile/c.calc.autotvin_width_V.dat"
// wrapc file define: "maxIter"
#define AUTOTB_TVIN_maxIter  "../tv/cdatafile/c.calc.autotvin_maxIter.dat"
// wrapc file define: "buf_r"
#define AUTOTB_TVOUT_buf_r  "../tv/cdatafile/c.calc.autotvout_buf_r.dat"
#define AUTOTB_TVIN_buf_r  "../tv/cdatafile/c.calc.autotvin_buf_r.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "buf_r"
#define AUTOTB_TVOUT_PC_buf_r  "../tv/rtldatafile/rtl.calc.autotvout_buf_r.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			X0_V_depth = 0;
			Y0_V_depth = 0;
			X1_V_depth = 0;
			width_V_depth = 0;
			maxIter_depth = 0;
			buf_r_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{X0_V " << X0_V_depth << "}\n";
			total_list << "{Y0_V " << Y0_V_depth << "}\n";
			total_list << "{X1_V " << X1_V_depth << "}\n";
			total_list << "{width_V " << width_V_depth << "}\n";
			total_list << "{maxIter " << maxIter_depth << "}\n";
			total_list << "{buf_r " << buf_r_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int X0_V_depth;
		int Y0_V_depth;
		int X1_V_depth;
		int width_V_depth;
		int maxIter_depth;
		int buf_r_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void calc (
ap_fixed<40, 5, (ap_q_mode) 4, (ap_o_mode)0, 0> X0,
ap_fixed<40, 5, (ap_q_mode) 4, (ap_o_mode)0, 0> Y0,
ap_fixed<40, 5, (ap_q_mode) 4, (ap_o_mode)0, 0> X1,
ap_uint<12> width,
unsigned short maxIter,
unsigned short* buf);

void AESL_WRAP_calc (
ap_fixed<40, 5, (ap_q_mode) 4, (ap_o_mode)0, 0> X0,
ap_fixed<40, 5, (ap_q_mode) 4, (ap_o_mode)0, 0> Y0,
ap_fixed<40, 5, (ap_q_mode) 4, (ap_o_mode)0, 0> X1,
ap_uint<12> width,
unsigned short maxIter,
unsigned short* buf)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "buf_r"
		aesl_fh.read(AUTOTB_TVOUT_PC_buf_r, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_buf_r, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_buf_r, AESL_token); // data

			sc_bv<16> *buf_r_pc_buffer = new sc_bv<16>[7500];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'buf_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'buf_r', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					buf_r_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_buf_r, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_buf_r))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: buf_r
				{
					// bitslice(15, 0)
					// {
						// celement: buf(15, 0)
						// {
							sc_lv<16>* buf_lv0_0_7499_1 = new sc_lv<16>[7500];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: buf(15, 0)
						{
							// carray: (0) => (7499) @ (1)
							for (int i_0 = 0; i_0 <= 7499; i_0 += 1)
							{
								if (&(buf[0]) != NULL) // check the null address if the c port is array or others
								{
									buf_lv0_0_7499_1[hls_map_index].range(15, 0) = sc_bv<16>(buf_r_pc_buffer[hls_map_index].range(15, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: buf(15, 0)
						{
							// carray: (0) => (7499) @ (1)
							for (int i_0 = 0; i_0 <= 7499; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : buf[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : buf[0]
								// output_left_conversion : buf[i_0]
								// output_type_conversion : (buf_lv0_0_7499_1[hls_map_index]).to_uint64()
								if (&(buf[0]) != NULL) // check the null address if the c port is array or others
								{
									buf[i_0] = (buf_lv0_0_7499_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] buf_r_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "X0_V"
		char* tvin_X0_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_X0_V);

		// "Y0_V"
		char* tvin_Y0_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_Y0_V);

		// "X1_V"
		char* tvin_X1_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_X1_V);

		// "width_V"
		char* tvin_width_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_width_V);

		// "maxIter"
		char* tvin_maxIter = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_maxIter);

		// "buf_r"
		char* tvin_buf_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_buf_r);
		char* tvout_buf_r = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_buf_r);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_X0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_X0_V, tvin_X0_V);

		sc_bv<40> X0_V_tvin_wrapc_buffer;

		// RTL Name: X0_V
		{
			// bitslice(39, 0)
			{
				// celement: X0.V(39, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : X0
						// sub_1st_elem          : 
						// ori_name_1st_elem     : X0
						// regulate_c_name       : X0_V
						// input_type_conversion : (X0).range().to_string(SC_BIN).c_str()
						if (&(X0) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<40> X0_V_tmp_mem;
							X0_V_tmp_mem = (X0).range().to_string(SC_BIN).c_str();
							X0_V_tvin_wrapc_buffer.range(39, 0) = X0_V_tmp_mem.range(39, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_X0_V, "%s\n", (X0_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_X0_V, tvin_X0_V);
		}

		tcl_file.set_num(1, &tcl_file.X0_V_depth);
		sprintf(tvin_X0_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_X0_V, tvin_X0_V);

		// [[transaction]]
		sprintf(tvin_Y0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_Y0_V, tvin_Y0_V);

		sc_bv<40> Y0_V_tvin_wrapc_buffer;

		// RTL Name: Y0_V
		{
			// bitslice(39, 0)
			{
				// celement: Y0.V(39, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : Y0
						// sub_1st_elem          : 
						// ori_name_1st_elem     : Y0
						// regulate_c_name       : Y0_V
						// input_type_conversion : (Y0).range().to_string(SC_BIN).c_str()
						if (&(Y0) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<40> Y0_V_tmp_mem;
							Y0_V_tmp_mem = (Y0).range().to_string(SC_BIN).c_str();
							Y0_V_tvin_wrapc_buffer.range(39, 0) = Y0_V_tmp_mem.range(39, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_Y0_V, "%s\n", (Y0_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_Y0_V, tvin_Y0_V);
		}

		tcl_file.set_num(1, &tcl_file.Y0_V_depth);
		sprintf(tvin_Y0_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_Y0_V, tvin_Y0_V);

		// [[transaction]]
		sprintf(tvin_X1_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_X1_V, tvin_X1_V);

		sc_bv<40> X1_V_tvin_wrapc_buffer;

		// RTL Name: X1_V
		{
			// bitslice(39, 0)
			{
				// celement: X1.V(39, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : X1
						// sub_1st_elem          : 
						// ori_name_1st_elem     : X1
						// regulate_c_name       : X1_V
						// input_type_conversion : (X1).range().to_string(SC_BIN).c_str()
						if (&(X1) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<40> X1_V_tmp_mem;
							X1_V_tmp_mem = (X1).range().to_string(SC_BIN).c_str();
							X1_V_tvin_wrapc_buffer.range(39, 0) = X1_V_tmp_mem.range(39, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_X1_V, "%s\n", (X1_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_X1_V, tvin_X1_V);
		}

		tcl_file.set_num(1, &tcl_file.X1_V_depth);
		sprintf(tvin_X1_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_X1_V, tvin_X1_V);

		// [[transaction]]
		sprintf(tvin_width_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_width_V, tvin_width_V);

		sc_bv<12> width_V_tvin_wrapc_buffer;

		// RTL Name: width_V
		{
			// bitslice(11, 0)
			{
				// celement: width.V(11, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : width
						// sub_1st_elem          : 
						// ori_name_1st_elem     : width
						// regulate_c_name       : width_V
						// input_type_conversion : (width).to_string(2).c_str()
						if (&(width) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<12> width_V_tmp_mem;
							width_V_tmp_mem = (width).to_string(2).c_str();
							width_V_tvin_wrapc_buffer.range(11, 0) = width_V_tmp_mem.range(11, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_width_V, "%s\n", (width_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_width_V, tvin_width_V);
		}

		tcl_file.set_num(1, &tcl_file.width_V_depth);
		sprintf(tvin_width_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_width_V, tvin_width_V);

		// [[transaction]]
		sprintf(tvin_maxIter, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_maxIter, tvin_maxIter);

		sc_bv<16> maxIter_tvin_wrapc_buffer;

		// RTL Name: maxIter
		{
			// bitslice(15, 0)
			{
				// celement: maxIter(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : maxIter
						// sub_1st_elem          : 
						// ori_name_1st_elem     : maxIter
						// regulate_c_name       : maxIter
						// input_type_conversion : maxIter
						if (&(maxIter) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> maxIter_tmp_mem;
							maxIter_tmp_mem = maxIter;
							maxIter_tvin_wrapc_buffer.range(15, 0) = maxIter_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_maxIter, "%s\n", (maxIter_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_maxIter, tvin_maxIter);
		}

		tcl_file.set_num(1, &tcl_file.maxIter_depth);
		sprintf(tvin_maxIter, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_maxIter, tvin_maxIter);

		// [[transaction]]
		sprintf(tvin_buf_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_buf_r, tvin_buf_r);

		sc_bv<16>* buf_r_tvin_wrapc_buffer = new sc_bv<16>[7500];

		// RTL Name: buf_r
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: buf(15, 0)
				{
					// carray: (0) => (7499) @ (1)
					for (int i_0 = 0; i_0 <= 7499; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : buf[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : buf[0]
						// regulate_c_name       : buf
						// input_type_conversion : buf[i_0]
						if (&(buf[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> buf_tmp_mem;
							buf_tmp_mem = buf[i_0];
							buf_r_tvin_wrapc_buffer[hls_map_index].range(15, 0) = buf_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 7500; i++)
		{
			sprintf(tvin_buf_r, "%s\n", (buf_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_buf_r, tvin_buf_r);
		}

		tcl_file.set_num(7500, &tcl_file.buf_r_depth);
		sprintf(tvin_buf_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_buf_r, tvin_buf_r);

		// release memory allocation
		delete [] buf_r_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		calc(X0, Y0, X1, width, maxIter, buf);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_buf_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_buf_r, tvout_buf_r);

		sc_bv<16>* buf_r_tvout_wrapc_buffer = new sc_bv<16>[7500];

		// RTL Name: buf_r
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: buf(15, 0)
				{
					// carray: (0) => (7499) @ (1)
					for (int i_0 = 0; i_0 <= 7499; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : buf[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : buf[0]
						// regulate_c_name       : buf
						// input_type_conversion : buf[i_0]
						if (&(buf[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> buf_tmp_mem;
							buf_tmp_mem = buf[i_0];
							buf_r_tvout_wrapc_buffer[hls_map_index].range(15, 0) = buf_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 7500; i++)
		{
			sprintf(tvout_buf_r, "%s\n", (buf_r_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_buf_r, tvout_buf_r);
		}

		tcl_file.set_num(7500, &tcl_file.buf_r_depth);
		sprintf(tvout_buf_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_buf_r, tvout_buf_r);

		// release memory allocation
		delete [] buf_r_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "X0_V"
		delete [] tvin_X0_V;
		// release memory allocation: "Y0_V"
		delete [] tvin_Y0_V;
		// release memory allocation: "X1_V"
		delete [] tvin_X1_V;
		// release memory allocation: "width_V"
		delete [] tvin_width_V;
		// release memory allocation: "maxIter"
		delete [] tvin_maxIter;
		// release memory allocation: "buf_r"
		delete [] tvout_buf_r;
		delete [] tvin_buf_r;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

