class Cubie {
  color[] faces;
  int x, y, z;
  public Cubie(int x, int y, int z) {
    //w g r y b o
    faces = new color[]{color(255), color(0, 250, 0), color(250, 0, 0), color(250, 230, 80), color(0, 0, 250), color(250, 100, 0)};
    this.x = x;
    this.y = y;
    this.z = z;
  }

  void drawCubie() {
    //Front
    fill(faces[1]);
    beginShape();
    vertex(x-10, y-10, z-10);
    vertex( x+10, y-10, z-10);
    vertex( x+10, y+10, z-10);
    vertex(x-10, y+10, z-10);
    endShape(CLOSE);

    //Back
    fill(faces[4]);
    beginShape();
    vertex(x-10, y-10, z+10);
    vertex( x+10, y-10, z+10);
    vertex( x+10, y+10, z+10);
    vertex(x-10, y+10, z+10);
    endShape(CLOSE);

    //Right
    fill(faces[2]);
    beginShape();
    vertex(x-10, y-10, z-10);
    vertex( x-10, y-10, z+10);
    vertex( x-10, y+10, z+10);
    vertex(x-10, y+10, z-10);
    endShape(CLOSE);

    //Left
    fill(faces[5]);
    beginShape();
    vertex(x+10, y-10, z-10);
    vertex( x+10, y-10, z+10);
    vertex( x+10, y+10, z+10);
    vertex(x+10, y+10, z-10);
    endShape(CLOSE);

    //Top
    fill(faces[3]);
    beginShape();
    vertex(x-10, y+10, z-10);
    vertex( x+10, y+10, z-10);
    vertex( x+10, y+10, z+10);
    vertex(x-10, y+10, z+10);
    endShape(CLOSE);

    //Top
    fill(faces[0]);
    beginShape();
    vertex(x-10, y-10, z-10);
    vertex( x+10, y-10, z-10);
    vertex( x+10, y-10, z+10);
    vertex(x-10, y-10, z+10);
    endShape(CLOSE);
  }
  void r() {
    color temp = faces[0];
    faces[0] = faces[1];
    faces[1] = faces[3];
    faces[3] = faces[4];
    faces[4] = temp;
  }
  void l() {
    color temp = faces[4];
    faces[4] = faces[3];
    faces[3] = faces[1];
    faces[1] = faces[0];
    faces[0] = temp;
  }
  void u() {
    color temp = faces[1];
    faces[1] = faces[2];
    faces[2] = faces[4];
    faces[4] = faces[5];
    faces[5] = temp;
  }
  void d() {
    color temp = faces[5];
    faces[5] = faces[4];
    faces[4] = faces[2];
    faces[2] = faces[1];
    faces[1] = temp;
  }
  void b() {
    color temp = faces[0];
    faces[0] = faces[2];
    faces[2] = faces[3];
    faces[3] = faces[5];
    faces[5] = temp;
  }
  void f() {
    color temp = faces[5];
    faces[5] = faces[3];
    faces[3] = faces[2];
    faces[2] = faces[0];
    faces[0] = temp;
  }
}
