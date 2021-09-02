int readPin = 6;  //6p set
int servopin = 7; //7p servo
  
void servopulse(int angle){  
  int pulsewidth=(angle*11)+500;  
  digitalWrite(servopin,HIGH);   
  delayMicroseconds(pulsewidth); 
  digitalWrite(servopin,LOW);    
  delayMicroseconds(20000-pulsewidth);  
}  
  
void setup(){  
   pinMode(servopin,OUTPUT);
}  
  
void loop(){  
  //读取电位器
  int readValue = analogRead(readPin);  
  int angle = readValue / 4;  
  //发50个脉冲  
  for(int i=0;i<50;i++){  
     //引用脉冲函数  
     servopulse(angle);  
  }  
}  
