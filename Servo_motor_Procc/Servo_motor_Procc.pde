import processing.serial.*;

Serial puerto;
boolean clockwise = true; 

void setup() {
  size(400, 400);
  println(Serial.list()); 
  puerto = new Serial(this, Serial.list()[0], 9600); 
}

void draw() {
  background(255);
  fill(0);
  ellipse(width/2, height/2, 50, 50);
}

void mousePressed() {
  if (dist(mouseX, mouseY, width/2, height/2) < 25) {
    clockwise = !clockwise; 
    if (clockwise) {
      puerto.write('C'); 
    } else {
      puerto.write('A'); 
    }
  }
}
