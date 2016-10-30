//LeRoy Miller, copyright 2016 (c)
/*
This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses
*/

import processing.serial.*;

Serial myPort;  // Create object from Serial class

int state = 31;


void setup() 
{
  size(10, 10);
  myPort = new Serial(this, "/dev/ttyUSB0", 9600); //linux style
  //myPort = new Serial(this,"COM1", 9600); //windows style
  myPort.clear();
}

void draw() {
  if(myPort.available() > 0) {
    state = myPort.read();
    println(state);
    //println(binary(state));
     if (state == 49) {//Pushing box code goes here
link("http://api.pushingbox.com/pushingbox?devid=DEVICEIDGOESHERE");
  }
  state = 0;
   
}
  
  }
 
