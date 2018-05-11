/* Legs.pde
Reads values from serial port, written to the port by Arduino.
The size of an ellipse changes according to the serial values.
Must assign the correct port, see instructions below.
*/

import processing.serial.*; //imports Serial library from Processing
Serial myPort; // creates object from Serial class
int val; // creates variable for data coming from serial port


PImage photo;
PImage photo2;
PImage photo3;
PImage photo4;
PImage Flower;
PImage Cherry;

void setup() {
size(800, 500);
photo = loadImage("Legs.png");
photo2 = loadImage("Legs2.png");
photo3 = loadImage("Legs3.png");
photo4 = loadImage("Legs4.png");
Flower = loadImage("Flower.jpg");
Cherry = loadImage("Cherry Blossom.jpg");

/*
We must tell Processing which port to read from.
Run the sketch and check your console to see the results of printArray(Serial.list());
and that is how you know the port to use.
On my Mac, it is port 2 and so I open Serial.list()[2].
*/

printArray(Serial.list()); // this line prints the port list to the console
String portName = Serial.list()[1]; //change the number in the [] for the port you need
myPort = new Serial(this, portName, 9600);
}

void draw(){
if ( myPort.available() > 0) { // If data is available,
val = myPort.read(); // read it and store it in val
}

//draws an ellipse that grows and shrinks in relation to val
image(Cherry, 0, 0, 800,500);
//image(photo, 650,0, 200, 300);

imageMode(CENTER);
image(Cherry, 400,250, val*4, val*4);
//image(photo, 650,0, val*4, val*4);
//imageMode(CORNER);
//image(photo2, 0, 0, val*4, val*4);
//image(photo3, 0, 500, val*4, val*4);
//image(photo4, 500, 500, val*4, val*4);


println (val); //prints to Processing console
}
