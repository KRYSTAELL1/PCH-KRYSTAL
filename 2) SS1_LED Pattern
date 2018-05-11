/*KRYSTAL_2_Pattern_Sequencing Blink with Button*/ 

const int buttonPin = 7; 
int buttonState = 0;   

int LED1 = 13;
int LED2 = 12;
int LED3 = 11;
int LED4 = 10;
int LED5 = 9;

void setup() {
   pinMode(LED1, OUTPUT);
   pinMode(LED2, OUTPUT);
   pinMode(LED3, OUTPUT);
   pinMode(LED4, OUTPUT);
   pinMode(LED5, OUTPUT);
   pinMode(buttonPin, INPUT);
}


void loop() {
  buttonState = digitalRead(buttonPin);
  
  if (buttonState == HIGH) {
  digitalWrite(LED1, HIGH);    // turn on LED1 
 // delay(4000);                  // delete this for two LED to turn on
  digitalWrite(LED5, HIGH);    // turn on LED1 
  delay(4000);                  // wait for 200ms 
  digitalWrite(LED2, HIGH);    // turn on LED2
  //delay(2000);                  // wait for 200ms   
  digitalWrite(LED4, HIGH);    // turn on LED1 
  delay(2000);                  // wait for 200ms    
  digitalWrite(LED3, HIGH);    // turn on LED3 
  delay(1000);                  // wait for 200ms

    
     
  } else {
    //when you dont touch the button
  if (buttonState == LOW) {
    digitalWrite(LED3, HIGH);     // turn off LED1
         delay(50);                     
  digitalWrite(LED2, HIGH);     // turn off LED3
            delay(50);   
  digitalWrite(LED4, HIGH);     // turn off LED1
             delay(50);  
   digitalWrite(LED1, HIGH);     // turn off LED1
              delay(50);     
   digitalWrite(LED5, HIGH);     // turn off LED2
            delay(50); 
  
  digitalWrite(LED3, LOW);     // turn off LED1
                            
  digitalWrite(LED2, LOW);     // turn off LED3
                   
  digitalWrite(LED4, LOW);     // turn off LED1
            
   digitalWrite(LED1, LOW);     // turn off LED1
              
   digitalWrite(LED5, LOW);     // turn off LED2
                   
  }
  }
}
