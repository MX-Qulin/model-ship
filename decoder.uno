int VCC = 5;// set voltage
int D3 = 7;
int D2 = 11;
int D1 = 10;
int D0 = 9;
int VT = 8;

int Relay1 = A0;
int Relay2 = A1;
int Relay3 = A2;
int Relay4 = A3;

int InputState = 1;     
// the setup routine runs once when you press reset:
void setup() {       
  // initialize the digital pin
  pinMode(VCC, OUTPUT); 
  pinMode(D3, INPUT); 
  pinMode(D2, INPUT); 
  pinMode(D1, INPUT); 
  pinMode(D0, INPUT); 
  pinMode(VT, INPUT);
  digitalWrite(VCC, HIGH); // maybe VCC==13 is better choice?

  Serial.begin(9600);
  delay(2000);//Waiting for rf receiver module startup
}

void loop() {
   InputState = digitalRead(VT);
   
   if(InputState){
     Serial.print("D3 D2 D1 D0 VT \n");
     InputState = digitalRead(D3);
    if(InputState) Serial.print("1  ");else Serial.print("0  ");
  
    InputState = digitalRead(D2);
    if(InputState) Serial.print("1  ");else Serial.print("0  ");
    
    InputState = digitalRead(D1);
    if(InputState) Serial.print("1  ");else Serial.print("0  ");
    
    InputState = digitalRead(D0);
    if(InputState) Serial.print("1  ");else Serial.print("0  ");
    
    Serial.print("1\n");
   }
   do{
      InputState = digitalRead(VT);
      delay(10);
    }while(InputState); 
}
