//Global Variables
int appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect; 
color black=#504D4D, white=#FFFFFF, blue=#1970B4,purple=#6422D1, yellow=#FEFF4B;
color yellowNightMode=#F8FC00, purpleNightMode=#FA0096;
float thick, thin;
Boolean grayScale=false, randomColour=false, blackBackground=false, nightMode=false;
//
void setup() {
  //Declare Display Geometry: square, landscape, portrait
  size(1200, 800); //Use size for debugging
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
  centerWidth = width * 1/2;
  centerHeight = height * 1/2;
  xStart = centerWidth - (width * 1/4);
  yStart = centerHeight - (height * 1/4);
  widthRect = appWidth * 1/2;
  heightRect = appHeight  * 1/2;
  thick = appWidth *1/60;
  thin = appWidth *1/120;
} //End setup
//
void draw() {
  if ( grayScale == true ) background(225) ; //Gray Scale 0-255
  //random(a, b)
    if ( randomColour == true ) background( color( random(0, 255), random(255), random(255) ) ); //color(r,g,b), Casting 
  //Night Mode
  if ( blackBackground == true ) background(black);
  //
  strokeWeight(thick); //noStroke()
  //Night Mode Decision
  if ( nightMode == true )
  {
    stroke(yellowNightMode);
    fill(purpleNightMode);
  } else
  {
    stroke(yellow);
    fill(purple);
  }
  ellipse(120,30,15,40); 
  circle(69,69,69);
  square(100,200,45);
  circle(100,200,45);
  line(400,400,800,700);
rect(120, 97, 230, 230, 40);
  rect(xStart, yStart, widthRect, heightRect);
  background(170); //gray scale 0-255
  background( color( random(0,220), random(0,255), random(255) ) ); //color (r,g,b)
  //Night Mode
  background(black);
  //
  strokeWeight(thin);
  stroke(purple);//purpleNightMode
  fill(blue);//blueNightMode
  rect(xStart, yStart, widthRect, heightRect);
  fill(black);// Reset default
  stroke(black);//Reset default
  strokeWeight(1);//Resets default
} //End draw
//
void keyPressed() {
  grayScale = false;
  randomColour = false;
  blackBackground = false;
  if ( key=='A' || key=='a' ) grayScale = true;
  if ( key=='S' || key=='s' ) randomColour = true;
  if ( key=='W' || key=='w' ) blackBackground = true;
} //End keyPressed
//
void mousePressed() {
  if ( mouseButton == LEFT ) nightMode = true;
  if ( mouseButton == RIGHT ) nightMode = false;
} //End mousePressed
//
// End Main Program

//Working on other test world for 3D primitives
