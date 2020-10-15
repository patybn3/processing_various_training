/* Assigment 5-2
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
12 October 2020 

2. colored_circles: draw 2 concentric circles.

(Question: directions only say to create 2 circles, but the task is called
colored circles. Was I supposed to color them?
I didn't)

I have used other sources, as detailed in my submitted source file. 
List these sources:

https://processing.org/examples/functions.html

*/

// Code starts here.

// Use built-in function setup to set program settings
void setup(){
  // set screen size to 500px wide and 500px tall.
  size(500, 500);
}

/* set 3 global variables to be used later to set the x location to 250, the
y location to 250 and the size of the future circle to 400px */
int xloc = 250;
int yloc = 250;
int size = 400;

// Create a "draw" function to run the commands
void draw(){
  // set the screen background color to white.
  background(255);
  // call the function drawCircle twice to create each circle
  /* set the params of the first circle to x to xloc (250px), y to xloc(250). 
  Give it a width of "size" (400) and a height of "size" (400). */
  drawCircle(xloc, yloc, size, size);
  /* set the params of the second circle to x to xloc (250px), y to xloc(250).
  Give it a width of "size" divided by 2 (200) and a height of "size" divided 
  by 2 (200). */
  drawCircle(xloc, yloc, size/2, size/2);
}

/* Function drawCircle calls 4 params, "x" of type float sets the x location on the screen.
"y" of type float sets the y location on the screen. "w" of type float
sets the width of the circle and "h" of type float sets the height.
*/
void drawCircle(float x, float y, float w, float h){
  // remove the filling of the circles
  noFill();
  // create local variable for the color red and set it to 190, 0, 0
  int red = color(190, 0, 0);
  // set the stroke to red
  stroke(red);
  // call function strokeWeight and pass 40
  strokeWeight(40);
  // call function ellipse and pass params x, y, w, h
  ellipse(x, y, w, h);
}

// There you have, the target logo. Not sponsored. Yet.
// end.
