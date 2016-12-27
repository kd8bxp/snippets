
int duration;
void count() {
  duration = duration + 1;
}
void setup() {
  // put your setup code here, to run once:

pinMode (3, OUTPUT); //IR Sender
pinMode (2, INPUT); //IR Receiver
Serial.begin(9600);
attachInterrupt(0, count, RISING);
}

void loop() {
  // put your main code here, to run repeatedly:
for (int i=0; i<50; i++) {
  digitalWrite(3, HIGH);
  //delay(10);
  //duration = pulseIn(2,HIGH);
  delay(10);
  digitalWrite(3, LOW);
  //int duration1 = pulseIn(2, LOW, 10);
  delay(10);
  //duration = duration + duration1;
}
//int duration = pulseIn(2, HIGH);
Serial.print("Duration: ");
Serial.println(duration / 4.00);
duration = 0;
delay(1000);
}
