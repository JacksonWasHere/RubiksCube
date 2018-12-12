class Cube {
  Cubie[][][] cubies;
  public Cube(){
    int size = 3;
    cubies = new Cubie[size][size][size];
    for(int z = 0; z<size; z++){
      for(int y = 0; y<size; y++){
        for(int x = 0; x<size; x++){
          cubies[z][y][x] = new Cubie(10*size-x*20-10,10*size-y*20-10,10*size-z*20-10);
        }
      }
    }
  }
  
  void makeMove(String sequence){
    makeMove(split(sequence," "));
  }
  
  void makeMove(String[] sequence){
    for(String c: sequence){
      switch(c){
        case "R":
          r();
          break;
        case "R'":
          r();
          r();
          r();
          break;
        case "R2":
          r();
          r();
          break;
        case "L":
          l();
          break;
        case "L'":
          l();
          l();
          l();
          break;
        case "L2":
          l();
          l();
          break;
        case "U":
          u();
          break;
        case "U'":
          u();
          u();
          u();
          break;
        case "U2":
          u();
          u();
          break;
        case "D":
          d();
          break;
        case "D'":
          d();
          d();
          d();
          break;
        case "D2":
          d();
          d();
          break;
        case "F":
          f();
          break;
        case "F'":
          f();
          f();
          f();
          break;
        case "F2":
          f();
          f();
          break;
        case "B":
          b();
          break;
        case "B'":
          b();
          b();
          b();
          break;
        case "B2":
          b();
          b();
          break;
        default:
          //println("Not a move");
          break;
      }
    }
  }
  
  void drawCube(){
    for(Cubie[][] face:cubies){
      for(Cubie[] row: face){
        for(Cubie piece:row){
          piece.drawCubie();
        }
      }
    }
  }
  
  //this is a terrible way to do this
  void r(){
    color[] temp = cubies[0][2][2].faces;
    cubies[0][2][2].faces = cubies[2][2][2].faces;
    cubies[0][2][2].r();
    cubies[2][2][2].faces = cubies[2][0][2].faces;
    cubies[2][2][2].r();
    cubies[2][0][2].faces = cubies[0][0][2].faces;
    cubies[2][0][2].r();
    cubies[0][0][2].faces = temp;
    cubies[0][0][2].r();
    
    color[] temp2 = cubies[2][1][2].faces;
    cubies[2][1][2].faces = cubies[1][0][2].faces;
    cubies[2][1][2].r();
    cubies[1][0][2].faces = cubies[0][1][2].faces;
    cubies[1][0][2].r();
    cubies[0][1][2].faces = cubies[1][2][2].faces;
    cubies[0][1][2].r();
    cubies[1][2][2].faces = temp2;
    cubies[1][2][2].r();
  }
  void l(){
    color[] temp = cubies[0][0][0].faces;
    cubies[0][0][0].faces = cubies[2][0][0].faces;
    cubies[0][0][0].l();
    cubies[2][0][0].faces = cubies[2][2][0].faces;
    cubies[2][0][0].l();
    cubies[2][2][0].faces = cubies[0][2][0].faces;
    cubies[2][2][0].l();
    cubies[0][2][0].faces = temp;
    cubies[0][2][0].l();
    
    color[] temp2 = cubies[1][2][0].faces;
    cubies[1][2][0].faces = cubies[0][1][0].faces;
    cubies[1][2][0].l();
    cubies[0][1][0].faces = cubies[1][0][0].faces;
    cubies[0][1][0].l();
    cubies[1][0][0].faces = cubies[2][1][0].faces;
    cubies[1][0][0].l();
    cubies[2][1][0].faces = temp2;
    cubies[2][1][0].l();
  }
  void u(){
    color[] temp = cubies[0][2][0].faces;
    cubies[0][2][0].faces = cubies[2][2][0].faces;
    cubies[0][2][0].u();
    cubies[2][2][0].faces = cubies[2][2][2].faces;
    cubies[2][2][0].u();
    cubies[2][2][2].faces = cubies[0][2][2].faces;
    cubies[2][2][2].u();
    cubies[0][2][2].faces = temp;
    cubies[0][2][2].u();
    
    color[] temp2 = cubies[1][2][2].faces;
    cubies[1][2][2].faces = cubies[0][2][1].faces;
    cubies[1][2][2].u();
    cubies[0][2][1].faces = cubies[1][2][0].faces;
    cubies[0][2][1].u();
    cubies[1][2][0].faces = cubies[2][2][1].faces;
    cubies[1][2][0].u();
    cubies[2][2][1].faces = temp2;
    cubies[2][2][1].u();
  }
  void d(){
    color[] temp = cubies[0][0][2].faces;
    cubies[0][0][2].faces = cubies[2][0][2].faces;
    cubies[0][0][2].d();
    cubies[2][0][2].faces = cubies[2][0][0].faces;
    cubies[2][0][2].d();
    cubies[2][0][0].faces = cubies[0][0][0].faces;
    cubies[2][0][0].d();
    cubies[0][0][0].faces = temp;
    cubies[0][0][0].d();
    
    color[] temp2 = cubies[2][0][1].faces;
    cubies[2][0][1].faces = cubies[1][0][0].faces;
    cubies[2][0][1].d();
    cubies[1][0][0].faces = cubies[0][0][1].faces;
    cubies[1][0][0].d();
    cubies[0][0][1].faces = cubies[1][0][2].faces;
    cubies[0][0][1].d();
    cubies[1][0][2].faces = temp2;
    cubies[1][0][2].d();
  }
  void b(){
    color[] temp = cubies[0][0][0].faces;
    cubies[0][0][0].faces = cubies[0][2][0].faces;
    cubies[0][0][0].b();
    cubies[0][2][0].faces = cubies[0][2][2].faces;
    cubies[0][2][0].b();
    cubies[0][2][2].faces = cubies[0][0][2].faces;
    cubies[0][2][2].b();
    cubies[0][0][2].faces = temp;
    cubies[0][0][2].b();
    
    color[] temp2 = cubies[0][1][2].faces;
    cubies[0][1][2].faces = cubies[0][0][1].faces;
    cubies[0][1][2].b();
    cubies[0][0][1].faces = cubies[0][1][0].faces;
    cubies[0][0][1].b();
    cubies[0][1][0].faces = cubies[0][2][1].faces;
    cubies[0][1][0].b();
    cubies[0][2][1].faces = temp2;
    cubies[0][2][1].b();
  }
  void f(){
    color[] temp = cubies[2][0][2].faces;
    cubies[2][0][2].faces = cubies[2][2][2].faces;
    cubies[2][0][2].f();
    cubies[2][2][2].faces = cubies[2][2][0].faces;
    cubies[2][2][2].f();
    cubies[2][2][0].faces = cubies[2][0][0].faces;
    cubies[2][2][0].f();
    cubies[2][0][0].faces = temp;
    cubies[2][0][0].f();
    
    color[] temp2 = cubies[2][2][1].faces;
    cubies[2][2][1].faces = cubies[2][1][0].faces;
    cubies[2][2][1].f();
    cubies[2][1][0].faces = cubies[2][0][1].faces;
    cubies[2][1][0].f();
    cubies[2][0][1].faces = cubies[2][1][2].faces;
    cubies[2][0][1].f();
    cubies[2][1][2].faces = temp2;
    cubies[2][1][2].f();
  }
}
