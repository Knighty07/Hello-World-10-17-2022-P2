//Global Variables
int appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect; 
//
void setup() {
  //Declare Display Geometry: square, landscape, portrait
  size(800, 600); //Use size for debugging
  //fullScreen(); //Use fullScreen for easy deployment
  appWidth = width;
  appHeight = height;
  //
  //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bro, turn your phone to fix";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  if ( appWidth < appHeight ) { //Declare Landscape Mode
    println(instruct);
  } else {
    //Fit CANVAS into Display Monitor
    if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.!!!! :)");
    } else {
      println("STOP, the code is broken");
    }
  }
  //
  //If ORIENTATION is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //Population
  centerwidth = width * 1/2;
  centerheight = height * 1/2
  xStart = centerwidth - (width * 1/4);
  yStart = centerheight - (height * 1/4);
  widthRect=width * 1/2
  heightRect= height * 1/2
} //End setup
//
void draw() {
  ellipse(120,30,15,40); 
  circle(69,69,69);
  square(100,200,45);
  circle(100,200,45);
rect(120, 97, 230, 230, 40);
  rect(xStart, yStart, widthRect, heightRect);
  
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
