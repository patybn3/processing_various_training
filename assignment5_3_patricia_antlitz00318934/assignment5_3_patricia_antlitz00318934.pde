/* Assigment 5-3
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
12 October 2020 

3. four_circles: divide the canvas into 4 and draw circles and color them
with your favorite colors

The work I am submitting is my own in its entirety

*/

// Code starts here.

// Use built-in function setup to set program settings
void setup(){
  // set screen size to 500px wide and 500px tall.
  size(500, 500);
}

// setting global variables

// set a variable of type integer to 0 as the origin point of the screen
int orig = 0;

// color variables
int blue = color(188, 224, 235); // pastel blue
int yellow = color(255, 254, 212); // pastel yellow
int pink = color(255, 209, 220); // pastel pink
int white = color(255);
int lightGray = color(235);
int midGray = color(220);

// Create function "draw" to run commands
void draw(){
  // set the background of the screen to the color lightGray
  background(lightGray);
  
  // call function drawCross to draw the cross that divides the screen
  drawCross();
  
  // set local variables 
  int size = 200; // set the size of the circles to 200px
  int xloc = width/4; // set the x location to the width divided by 4
  int yloc = height/4; // set the x location to the height divided by 4
  
  // calls function drawCircles
  
  /* first call sets the color to blue, location to x = xloc (width/4 = 125px),
  y = yloc (height/4 = 125 px), and width and height of "size:" (200px) */
  drawCircles(blue, xloc, yloc, size, size);
  /* first call sets the color to yellow, location to x = xloc (width/4 = 125px),
  y = yloc times 3 (height/4 = 125px*3 = 375 px), and width and height of 
  "size:" (200px) */
  drawCircles(yellow, xloc, yloc*3, size, size);
  /* first call sets the color to pink, location to x = xloc times 3
  (width/4 = 125px*3 = 375 px), y = yloc (height/4 = 125px), 
  and width and height of "size:" (200px) */
  drawCircles(pink, xloc*3, yloc, size, size);
  /* first call sets the color to white, location to x = xloc times 3
  (width/4 = 125px*3 = 375 px), y = yloc time 3 (height/4 = 125px*3 = 375 px), 
  and width and height of "size:" (200px) */
  drawCircles(white, xloc*3, yloc*3, size, size);
}

// Function drawCross contains the commands to the cross that divides the screen
void drawCross(){
  // set the stroke of the lines to the midGray color
  stroke(midGray);
  // set the strokeWeight to 5
  strokeWeight(5);
  
  // set local variables for the screen's width and height
  int wide = width;
  int tall = height;
  // set a variable defining the coordinates for half of the width of the screen
  int xHalf = wide/2;
   // set a variable defining the coordinates for half of the height of the screen
  int yHalf = tall/2;
  
  /* Create a line with the first point at x = xHalf (250px), y = to orig (0),
  and the second point at x = xHalf and y = tall (screen height) */
  line(xHalf, orig, xHalf, tall);
  /* Create a line with the first point at x = orig (0), y = to yHalf (250px),
  and the second point at x = wide (screen width) and y = yHalf */
  line(orig, yHalf, wide, yHalf);
}

/* drawCircle function. Calles for 5 params. Param "c" of type integer
will be called at frunction fill() to set the color of the circle. Param "x",
"y", "w" and "h" are called at function ellipse() and represent the x location,
the y location, the width and the height of the circles. */
void drawCircles(int c, float x, float y, float w, float h){
  // remove stroke/border
  noStroke();
  // fill the circle with a color passing param "c"
  fill(c);
  // create a circle with function ellipse and call params x, y, w and h
  ellipse(x, y, w, h);
}

// end.
