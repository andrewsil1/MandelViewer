using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

class ImageParams : INotifyPropertyChanged
{
    #region Properties
    public FixedPoint.FixedPoint X0 { get; set; }
    public FixedPoint.FixedPoint X1 { get; set; }
    public FixedPoint.FixedPoint Y0 { get; set; }
    public int Width { get; set; }
    #endregion

    #region Constructors
    public ImageParams(FixedPoint.FixedPoint X0, FixedPoint.FixedPoint X1, FixedPoint.FixedPoint Y0, int Width)
    {
        this.X0 = X0;
        this.X1 = X1;
        this.Y0 = Y0;
        this.Width = Width;
    }
    #endregion

    public event PropertyChangedEventHandler PropertyChanged;

    // This method is called by the Set accessor of each property.  
    // The CallerMemberName attribute that is applied to the optional propertyName  
    // parameter causes the property name of the caller to be substituted as an argument.  
    private void NotifyPropertyChanged([CallerMemberName] String propertyName = "")
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}