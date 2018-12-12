Cube bob = new Cube(); //<>//
float angley = PI, anglex=0;
float[] directions = new float[]{0, 0};
String scramble = "R2 L2 F' L' F' D R L' F' D2 B2 L2 F R2 F' U2 B' U2 B' U2";
void setup() {
  size(640, 320, P3D);
  
}
void draw() {
  background(255);
  translate(320, 160, 100);
  rotateX(anglex);
  rotateY(angley);
  anglex+=directions[0];
  angley+=directions[1];
  bob.drawCube();
}

void keyPressed() {
  if (key=='l') {
    bob.l();
  } else if (key=='r') {
    bob.r();
  } else if (key=='u') {
    bob.u();
  } else if (key=='d') {
    bob.d();
  } else if (key=='f') {
    bob.f();
  } else if (key=='b') {
    bob.b();
  }
  if (keyCode==UP) {
    directions[0]=0.01;
  } else if (keyCode==DOWN) {
    directions[0]=-0.01;
  } else if (keyCode==LEFT) {
    directions[1]=-0.01; //<>//
  } else if (keyCode==RIGHT) {
    directions[1]=0.01;
  }
}
void keyReleased() {
  if (keyCode==UP) {
    directions[0]=0;
  } else if (keyCode==DOWN) {
    directions[0]=0;
  } else if (keyCode==LEFT) {
    directions[1]=0;
  } else if (keyCode==RIGHT) {
    directions[1]=0;
  }
}
