//Global Variables
int appWidth, appHeight; 
//
//Declare Geometry: sqaure, landscape, portrait
size(2000,1000);
appWidth = width;
appHeight = height;
println("\t\tWidth="+width,"\tHeight="+height); //key variables
println ("Display Monitor:","\twidth="+displayWidth, "& height="+displayHeight);
//
//Fit CANVAS into Display Monitor 
if (width > displayWidth) appWidth = 0; //CANVAS-width will not fit
if (height > displayHeight) appHeight = 0; //CANVAS-height will not fit 
if (appWidth != 0 && appHeight != 0 )print("Display Geomtery is good to go.");
if (appWidth == 0 || appHeight ==0 )println("STOP, this code is broken");
String ls="Landscape or Sqaure", p="portrait", DO="Display Orientation", instruct=Bruh, watch yo tone";

 
 
