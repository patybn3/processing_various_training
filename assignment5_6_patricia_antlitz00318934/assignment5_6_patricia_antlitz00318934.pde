/* Assigment 5-6
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
12 October 2020 

6. four_square: divide a 200 x 200 canvas in n=4 equal squares and apply 
different colors to each

The work I am submitting is my own in its entirety
*/

// code starts here.

// set up global variables for colors to be used and origin point
int darkPink = color(168, 50, 137);
int black = color(0);
int blue = color(50, 129, 168);
int green = color(94, 168, 50);
int orig = 0;

// Frunction setup holds program settings
void setup(){
  // set screen size to 200px by 200px
  size(200, 200);
  // remove stroke from forms
  noStroke();
}

// Function draw holds the commands to run the program
void draw(){
  // no backgound color needed
  
  // set local variables for size and location of x and y
  int wide = width/2;
  int tall = height/2;
  
  // call function drawRect 
  /* sets the color to black, x = 0, y = 0, make it as wide as half of the
  width and as tall as half of the height */
  drawRect(black, orig, orig, wide, tall);
  /* sets the color green, x = 0, y = half of the screen's height, 
  make it as wide as half of the width and as tall as half of the height */
  drawRect(green, orig, tall, wide, tall);
  /* sets the color to darkPink, x = half of the width, y = 0, 
  make it as wide as half of the width and as tall as half of the height */
  drawRect(darkPink, wide, orig, wide, tall);
  /* sets the color to blue, x = half of the width, y = half of the height,
  make it as wide as half of the width and as tall as half of the height */
  drawRect(blue, wide, tall, wide, tall);
  
}

/*Function drawRect created a square on the screen. It takes param "c" for
color, param "x" for the x location, "y" for the y location. Param wide for
the width of the square and param tall for the height. */
void drawRect(int c, int x, int y, int wide, int tall){
  // fill square with param "c"
  fill(c);
  // call rect fucntion and pass remaining params
  rect(x, y, wide, tall);
}

//end.
