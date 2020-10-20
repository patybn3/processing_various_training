/* Assignment 5-7
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
14 October 2020

7. three_hor: divide a 300 x 300 into 3 horizontal rectangles and color
them red, yellow, and blue

The work I am submitting is my own in its entirety
*/

// Code starts here

// set global variables for colors
int red = color(186, 0, 0);
int yellow = color(255, 234, 99);
int blue = color(128, 217, 255);
int gray = color(71);

// create setup function to hold program setting
void setup(){
  size(300, 300);
  // remove form's stroke
  noStroke();
}

// create draw function to run commands
void draw(){
  // set a background color of yellow
  background(yellow);

  // set variables for x and y locations
  // origin 0
  int orig = 0;
  // wide equal to the width of the screen
  int wide = width;
  // tall equal to the height of the screen
  int tall = height;
  // size is equal to the width of the screen divided by 3
  int size = tall/3;
  /* rectloc is equal to the width of the screen minus the width
  divide by 3 */
  float rectloc = tall - size;

  // call function horizontalRect to draw rect
  horizontalRect(red, orig, orig, wide, size);
  horizontalRect(blue, orig, rectloc, wide, size);

}

/* Function horizontalRect calls params "c" of type integer for color
selection, "x" for x location of type float, "y" for y location of type
float, "wide" for the width of the rectangle and tall for the height */

void horizontalRect(int c, float x, float y, float wide, float tall){
  // fill with param c for color
  fill(c);
  // create rectangle passing remaining params.
  rect(x, y, wide, tall);
}

// end.
