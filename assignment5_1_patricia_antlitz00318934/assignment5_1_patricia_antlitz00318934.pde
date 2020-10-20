/* Assignment 5-1
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
12 October 2020

1. horizontal: draw 4 horizontal parallel lines with the same distance
among the lines

The work I am submitting is my own in its entirety

*/


// Code starts here

  /* set global variable "yellow" of type integer to set the color yellow,
  Red 250, Green 230 and Blue 160 */
  int yellow = color(250, 230, 160);

// Use built-in function setup to set program settings
void setup(){
  // set screen size to 500px wide and 500px tall.
  size(500, 500);
}

// Use built-in function "draw" to run commands
void draw(){
  // Set the screen background color to the variable yellow
  background(yellow);

  // call drawLines function to allow the function to run, passing no params
  drawLines();
}

// drawLines function
void drawLines(){
  // set a local variable for the origin point of the screen, set it to 0
  int orig = 0;
  // set a local variable for the screen's height, set it to height
  int screenH = height;

  /* lines are to be placed on the x axis of the screen. Since the screen is
  500px wide, we are going to place the lines at 100, 200, 300 and 400. That
  will allow a separation of 100px between the lines.

  Dividing the width of the screen by 5 will bring the first line to px 100 */
  float line1 = width/5;
  // variable line1 is set to 100px, multiply by 2 to bring it to 200
  float line2 = line1 *2;
  // variable line1 is set to 100px, multiply by 3 to bring it to 300
  float line3 = line1 *3;
  // variable line2 is set to 200px, multiply by 2 to bring it to 400
  float line4 = line2 *2;

  // Set the stroke for the line to black
  stroke(0);
  // Use strokeWeight to make the line thicker, setting it to 20
  strokeWeight(20);

  /* Create first line, place the first point at position x = line1
  (100), y = orig (0), second point at x = line1 and y = height of screen,
  screenH */
  line(line1, orig, line1, screenH);
  /* Create second line, place the first point at position x = line2
  (200), y = orig (0), second point at x = line2 and y = height of screen,
  screenH */
  line(line2, orig, line2, screenH);
  /* Create third line, place the first point at position x = line3
  (300), y = orig (0), second point at x = line3 and y = height of screen,
  screenH */
  line(line3, orig, line3, screenH);
  /* Create the last line, place the first point at position x = line4
  (400), y = orig (0), second point at x = line4 and y = height of screen,
  screenH */
  line(line4, orig, line4, screenH);
}

//end.
