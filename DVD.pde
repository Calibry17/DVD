//boolean s = true;
//int v = 70;
//int a = 1;

//void setup() {
//  size(600, 800);
//  background(0, 0, 0);
//  noStroke();
//}

//void draw() {
//  fill(150, 205, 250);
//  ellipse(mouseX, mouseY, v, v);
//  fill(250, 205, 50);
//  ellipse(mouseX-100, mouseY-100, v, v);
//  fill(150, 100, 200);
//  ellipse(mouseX+100, mouseY+100, v, v);
//  fill(150, 205, 100);
//  ellipse(mouseX+100, mouseY-100, v, v);
//  fill(250, 105, 50);
//  ellipse(mouseX-100, mouseY+100, v, v);
//  if (v > 100) {
//    s = false; //dont need to say 'int s' this is only when you first declare it
//  }
//  if (v < 50) {
//    s = true;
//  }
//  if (s == true) { // 's = 1' changes s to be 1. 's == 1' checks if s is 1
//    v = v + 3;
//  } else {
//    v = v - 3;
//  }
//  fill(0, 0, 0, 30);
//  rect(0, 0, 5000, 5000);
//  //very cool :)
//  //thank you
//}


float pos1 = 700;
float pos2 = 700;
float aire;

float pos3 = 100;
float pos4 = 100;
float aire1;

float circDist;

boolean lockx = false;
boolean locky = false;

boolean lockx1 = true;
boolean locky1 = true;
//clr = color
//stpclr = stepcolor, each step is in the other tab
//isdstpclr = insidestepcolor
//The program will change color each time it touches the edge
int clr1 = 250;
int clr2 = 0;
int clr3 = 0;

int clr4 = 0;
int clr5 = 250;
int clr6 = 0;

int stpclr = 1;
int isdstpclr = 1;

int stpclr1 = 3;
int isdstpclr1 = 1;

int speed = 2;

var cjfngijcfh;

void setup() {
  size(1000, 800);
  noStroke();
  background(0);
  img = loadImage("Toyokawa.jpg");
}
//lockx == false = <--
// locky == false = ^
void draw() {
  aire = dist(pos1, pos2, pos1, pos2);
  aire1 = dist(pos3, pos4, pos3, pos4);
  circDist = dist(pos3, pos4, pos1, pos2);
  
  background(0);
  fill(clr1, clr2, clr3);
  textSize(120);
  text("DVD", pos1, pos2);
  ellipse(pos1 + 100, pos2 + 28, 200, 40);
  fill(0);
  textSize(50);
  text("video", pos1 + 45, pos2 + 45);
  //fill(0);
  //rect(0, 0, 5000, 5000);
  //fill(clr1, clr2, clr3);
  //ellipse(pos1, pos2, 100, 100);
  //fill(clr4, clr5, clr6);
  //ellipse(pos3, pos4, 100, 100);
  if (lockx == true) {
    pos1 = pos1 + speed;
  } else {
    pos1 = pos1 - speed;
  }
    if (locky == true) {
    pos2 = pos2 + speed;
  } else {
    pos2 = pos2 - speed;
  }
    if (pos1 > 900) {
        lockx = false;
        isdstpclr = isdstpclr + 1;
        ColorChanging();
    }
    if (pos1 < 100) {
        lockx = true;
        isdstpclr = isdstpclr + 1;
        ColorChanging();
    }
      if (pos2 > 900) {
        locky = false;
        isdstpclr = isdstpclr + 1;
        ColorChanging();
    }
      if (pos2 < 100) {
        locky = true;
        isdstpclr = isdstpclr + 1;
        ColorChanging();
    }
      if (isdstpclr > 5) {
        isdstpclr = 1;
        stpclr = stpclr + 1;
      }
      if (stpclr > 6) {
        stpclr = 1;
      }
      //if(circDist<100){
      //  Bouncing();
      //}

    //if (pos1 < aire1) {
    //  if (locky == true) {
    //    locky = false;
    //  }
    //  if (locky == false) {
    //    locky = true;
    //  }
    //  if (lockx == true) {
    //    lockx = false;
    //  }
    //  if (lockx == false) {
    //    lockx = true;
    //  }
    //}
    //if (pos2 < aire1) {
    //  if (locky == true) {
    //    locky = false;
    //  }
    //  if (locky == false) {
    //    locky = true;
    //  }
    //  if (lockx == true) {
    //    lockx = false;
    //  }
    //  if (lockx == false) {
    //    lockx = true;
    //  }
    //}
      
  if (lockx1 == true) {
    pos3 = pos3 + speed;
  } else {
    pos3 = pos3 - speed;
  }
    if (locky1 == true) {
    pos4 = pos4 + speed;
  } else {
    pos4 = pos4 - speed;
  }
    if (pos3 > 950) {
      lockx1 = false;
      isdstpclr1 = isdstpclr1 + 1;
      ColorChanging1();
    }
    if (pos3 < 50) {
      lockx1 = true;
      isdstpclr1 = isdstpclr1 + 1;
      ColorChanging1();
    }
      if (pos4 > 750) {
      locky1 = false;
      isdstpclr1 = isdstpclr1 + 1;
      ColorChanging1();
    }
      if (pos4 < 50) {
      locky1 = true;
      isdstpclr1 = isdstpclr1 + 1;
      ColorChanging1();
    }
      if (isdstpclr1 > 5) {
        isdstpclr1 = 1;
        stpclr1 = stpclr1 + 1;
      }
      if (stpclr1 > 6) {
        stpclr1 = 1;
      }
}


void ColorChanging() {
  if(stpclr == 1) {
    if (isdstpclr < 7) {
      clr2 = clr2 + 50;
    }
  }
  if(stpclr == 2) {
    if (isdstpclr < 7) {
      clr1 = clr1 - 50;
    }
  }
  if(stpclr == 3) {
    if (isdstpclr < 7) {
      clr3 = clr3 + 50;
    }
  }
  if(stpclr == 4) {
    if (isdstpclr < 7) {
      clr2 = clr2 - 50;
    }
  }
  if(stpclr == 5) {
    if (isdstpclr < 7) {
      clr1 = clr1 + 50;
    }
  }
  if(stpclr == 6) {
    if (isdstpclr < 7) {
      clr3 = clr3 - 50;
    }
  }
}

void ColorChanging1() {
  if(stpclr1 == 1) {
    if (isdstpclr1 < 7) {
      clr5 = clr5 + 50;
    }
  }
  if(stpclr1 == 2) {
    if (isdstpclr1 < 7) {
      clr4 = clr4 - 50;
    }
  }
  if(stpclr1 == 3) {
    if (isdstpclr1 < 7) {
      clr6 = clr6 + 50;
    }
  }
  if(stpclr1 == 4) {
    if (isdstpclr1 < 7) {
      clr5 = clr5 - 50;
    }
  }
  if(stpclr1 == 5) {
    if (isdstpclr1 < 7) {
      clr4 = clr4 + 50;
    }
  }
  if(stpclr1 == 6) {
    if (isdstpclr1 < 7) {
      clr6 = clr6 - 50;
    }
  }
}

//void Bouncing() {
//  pos1 = pos1 - ((100 - circDist)/2);
//  if (lockx1 == true) {
//    if (locky1 == true) {
//      if (lockx == false) {
//        if (locky == true) {
//          lockx = true;
//          locky = true;
//          lockx1 = false;
//          locky1 = true;
//      }
//        if (locky == false) {
//          lockx = true;
//          locky = true;
//          lockx1 = false;
//          locky1 = false;
//      }
//    }
//      if (lockx == true) {
//        if (locky = false) {
//          lockx = true;
//          locky = true;
//          lockx1 = true;
//          locky1 = false;
//      }
//      if (lockx == true) {
//        if (locky = true) {
//          lockx = false;
//          locky = false;
//          lockx1 = true;
//          locky1 = true;
//      }
//    }
//  }
// }
//  if (locky1 == false) {
//   if (lockx1 == false) {
//     if (locky == true) {
//       if (lockx == true) {
//         lockx = true;
//         locky = false;
//         lockx1 = true;
//         locky1 = false;
//       }
//       if (lockx == false) {
//         lockx = true;
//         locky = false;
//         lockx1 = false;
//         locky1 = true;
//       }
//     }
//     if (locky == false) {
//       if (lockx == true) {
//         lockx = false;
//         locky = true;
//         lockx1 = true;
//         locky1 = false;
//       }
//       if (lockx == false) {
//         lockx = true;
//         locky = false;
//         lockx1 = false;
//         locky1 = false;
//       }
//     }
//   }
//  }
//  if (lockx1 == false) {
//    if (locky1 == true) {
//      if (lockx == true) {
//        if (locky == true) {
//          lockx = false;
//          locky = true;
//          lockx1 = true;
//          locky1 = true;
//        }
//        if (locky == false) {
//          lockx = false;
//          locky = true;
//          lockx1 = true;
//          locky1 = false;
//        }
//      }
//      if (lockx == false) {
//        if (locky == true) {
//          lockx = true;
//          locky = false;
//          lockx1 = false;
//          locky1 = true;
//        }
//        if (locky == false) {
//          lockx = false;
//          locky = true;
//          lockx1 = false;
//          locky1 = false;
//        }
//      }
//    }
//    if (locky1 == false) {
//      if (lockx == true) {
//        if (locky == true) {
//          lockx = false;
//          locky = false;
//          lockx1 = true;
//          locky1 = true;
//        }
//        if (locky == false) {
//          lockx = false;
//          locky = false;
//          lockx1 = true;
//          locky1 = false;
//        }
//      }
//      if (lockx == false) {
//        if (locky = true) {
//          lockx = false;
//          locky = false;
//          lockx1 = false;
//          locky1 = true;
//        }
//        if (locky == false) {
//          lockx= true;
//          locky = true;
//          lockx1 = false;
//          locky1 = false;
//        }
//      }
//    }
//  }
//}
//}
//if(circDist<100){
//circDist = dist(pos3, pos4, pos1, pos2);


void DVD () {
  fill(255);
  textSize(120);
  text("DVD", 40, 120);
  //lets make it a rect() instead so we can bounce more accurately :O
  ellipse(140, 148, 200, 40);
  fill(0);
  textSize(50);
  text("video", 85, 165);
}
