//Global Variables
int appWidth, appHeight; 
//
//Declare Geometry: sqaure, landscape, portrait
fullScreen();;
appWidth = width;
appHeight = height;
String ls="Landscape or Sqaure", p="portrait", DO="Display Orientation", instruct="Bruh, watch yo code";
String orientation = ( width > height ) ? ls : p;
println (DO, orientation);
//
println("\t\tWidth="+width,"\tHeight="+height); //key variables
println ("Display Monitor:","\twidth="+displayWidth, "& height="+displayHeight);
//
//Fit CANVAS into Display Monitor 
if (width > displayWidth) appWidth = 0; //CANVAS-width will not fit
if (height > displayHeight) appHeight = 0; //CANVAS-height will not fit 
if (appWidth != 0 && appHeight != 0 )print("Display Geomtery is good to go (for now).");
if (appWidth == 0 || appHeight ==0 )println("STOP, this code is broken");


 
 
