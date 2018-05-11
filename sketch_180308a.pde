/*
Reads values from serial port, written to the port by Arduino.
The size of an ellipse changes according to the serial values.
Must assign the correct port, see instructions below.
*/

import processing.serial.*; //imports Serial library from Processing

int i;

PImage photo;
Serial myPort; // creates object from Serial class
int val; // creates variable for data coming from serial port
float touch;



void setup(){
  size(5000, 3000);
background (10,150,150);
 photo = loadImage("Water.png");
  image(photo, 0, 0);


/*
We must tell Processing which port to read from.
Run the sketch and check your console to see the results of printArray(Serial.list());
and that is how you know the port to use.
On my Mac, it is port 2 and so I open Serial.list()[2].
*/

printArray(Serial.list()); // this line prints the port list to the console
String portName = Serial.list()[7]; // 
myPort = new Serial(this, portName, 9600);

}


void draw(){

if ( myPort.available() > 0) { // If data is available,
val = myPort.read(); // read it and store it in val


 touch = map(val, 48, 58, 0, 100);


 pushMatrix();
blendMode(DIFFERENCE);
fill (val*8,touch*8,touch*4);
noStroke();
ellipseMode(CENTER);

 // use if statement to get the rectangle to start from the beginning again!
i++;
 ellipse (i*10, 100 ,100, val); 
ellipse (i*10, 300 ,100, val); 
ellipse (i*10, 500 ,100, val); 
ellipse (i*10, 700 ,100, val); 
ellipse (i*10, 900 ,100, val); 
ellipse (i*10, 1100 ,100, val); 
ellipse (i*10, 1300,100, val); 
ellipse (i*10, 1700 ,100, val); 
ellipse (i*10, 1900 ,100, val); 
if (i> 1000)  //once i reaches 1498 then it goes back to 0, so the rect starts from the beginning 
  i=0;
  popMatrix();

println (touch); //prints to Processing console

}
}