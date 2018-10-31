PImage b;
int ewidth = 30;
int eheight = 30;
char shape;
char colorKey;
char transparent = 'o';
char size;
void setup() {
 size(400, 400);
 smooth();
}
void draw() {
  
  // triggering the clear_print function
  if (keyPressed) {
    clear_print();
  }
  // triggering the newkeychoice
  if (mousePressed) {
    newkeyChoice();
  }
}
  
void newkeyChoice() {
 stroke(random(255), random(255), random(255));
 fill(random(255), random(255), random(255));
// Sets the shape an elipse
if(key == 'e') {
   shape = key;
   key = size;
}
// Sets the shape a square
else if(key == 's') {
  shape = key;
  key = size;
}
// Sets the shape a line
else if(key == 'l') {
  shape = key;
  key = size;
}
// Sets the shape as an image
else if(key == 'i') {
  shape = key;
  key = size;
}
// Sets the color to red
else if(key == 'r') {
  colorKey = key;
  key = size;
}
// Sets the color to green
else if(key == 'g') {
  colorKey = key;
  key = size;
}
// Sets the color to blue
else if(key == 'b') {
  colorKey = key;
  key = size;
}
// Sets the color to violet
else if(key == 'v') {
  colorKey = key;
  key = size;
}
// Sets the color to cyan
else if(key == 'c') {
  colorKey = key;
  key = size;
}
// Sets the color to autumn colors
else if(key == 'a') {
  colorKey = key;
  key = size;
}
// Sets the color back to default random rainbow
else if(key == 'd') {
  colorKey = key;
  key = size;
}
// Sets the shape to be random transparency or transparent for line
else if(key == 't') {
  transparent = key;
  key = size;
}
// Sets the transparency to opaque
else if(key == 'o') {
  transparent = key;
  key = size;
}
else if(key == '1') {
  size = key;
  if(ewidth <= 400) {
    ewidth = ewidth + 5;
    eheight = eheight +5;
    //delay(500);
  }
  else {
    ewidth = 0;
    eheight = 0;
  }
}
else if(key == '2') {
  size = key;
    if(ewidth > 0) {
    ewidth = ewidth - 5;
    eheight = eheight - 5;
    //delay(500);
    }
    else {
      ewidth = 400;
      eheight = 400;
    }
}
else if(key == '3') {
  size = key;
  eheight = 30;
  ewidth = 30;
}
  if (mousePressed) {
    if(shape == 's') {
      if(transparent == 't') {
                if(colorKey == 'r') {
          fill(random(255), 0, 0, random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else if(colorKey == 'g') {
          fill(0, random(255), 0, random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else if(colorKey == 'b') {
          fill(0, 0, random(255), random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else if(colorKey == 'v') {
          fill(random(255), 0, random(255), random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else if(colorKey == 'c') {
          fill(0, random(255), random(255), random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else if(colorKey == 'a') {
          fill(random(255), random(255), 0, random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else if(colorKey == 'd') {
          fill(random(255), random(255), random(255), random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else {
          fill(random(255), random(255), random(255), random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
      }
      else {
        if(colorKey == 'r') {
          fill(random(255), 0, 0);
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else if(colorKey == 'g') {
          fill(0, random(255), 0);
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else if(colorKey == 'b') {
          fill(0, 0, random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
         else if(colorKey == 'v') {
          fill(random(255), 0, random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else if(colorKey == 'c') {
          fill(0, random(255), random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else if(colorKey == 'a') {
          fill(random(255), random(255), 0);
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
         else if(colorKey == 'd') {
          fill(random(255), random(255), random(255));
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
        else {
          rect(mouseX - (ewidth / 2), mouseY - (eheight / 2), ewidth, eheight);
        }
      }
    }
   else if(shape == 'e') {
     if(transparent == 't') {
           if(colorKey == 'r') {
          fill(random(255), 0, 0, random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else if(colorKey == 'g') {
          fill(0, random(255), 0, random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else if(colorKey == 'b') {
          fill(0, 0, random(255), random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
         else if(colorKey == 'v') {
          fill(random(255), 0, random(255), random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else if(colorKey == 'c') {
          fill(0, random(255), random(255), random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else if(colorKey == 'a') {
          fill(random(255), random(255), random(255), random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else if(colorKey == 'd') {
          fill(random(255), random(255), random(255), random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else {
          fill(random(255), random(255), random(255), random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
     }
     else {
        if(colorKey == 'r') {
          fill(random(255), 0, 0);
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else if(colorKey == 'g') {
          fill(0, random(255), 0);
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else if(colorKey == 'b') {
          fill(0, 0, random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
         else if(colorKey == 'v') {
          fill(random(255), 0, random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else if(colorKey == 'c') {
          fill(0, random(255), random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else if(colorKey == 'a') {
          fill(random(255), random(255), 0);
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else if(colorKey == 'd') {
          fill(random(255), random(255), random(255));
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
        else {
          ellipse(mouseX, mouseY, ewidth, eheight);
        }
     }
   }
   else if(shape == 'l') {
     if(transparent == 't') {
         if(colorKey == 'r') {
          stroke(random(255), 0, 0, 80);
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
        else if(colorKey == 'g') {
          stroke(0, random(255), 0, 80);
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
        else if(colorKey == 'b') {
          stroke(0, 0, random(255), 80);
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
         else if(colorKey == 'v') {
          stroke(random(255), 0, random(255), 80);
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
        else if(colorKey == 'c') {
          stroke(0, random(255), random(255), 80);
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
        else if(colorKey == 'a') {
          stroke(random(255), random(255), 0, 80);
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
          else if(colorKey == 'd') {
          stroke(random(255), random(255), random(255), 80);
          line(mouseX, mouseY, pmouseX, pmouseY);
          }
        else {
          stroke(random(255), random(255), random(255), 80);
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
     }
     else {
        if(colorKey == 'r') {
          stroke(random(255), 0, 0);
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
        else if(colorKey == 'g') {
          stroke(0, random(255), 0);
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
        else if(colorKey == 'b') {
          stroke(0, 0, random(255));
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
         else if(colorKey == 'v') {
          stroke(random(255), 0, random(255));
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
        else if(colorKey == 'c') {
          stroke(0, random(255), random(255));
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
        else if(colorKey == 'a') {
          stroke(random(255), random(255), 0);
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
          else if(colorKey == 'd') {
            stroke(random(255), random(255), random(255));
            line(mouseX, mouseY, pmouseX, pmouseY);
          }
        else {
          line(mouseX, mouseY, pmouseX, pmouseY);
        }
     }
   }
   else if(shape == 'i') {
    b = loadImage("https://dl1.cbsistatic.com/i/r/2016/08/17/1f593ebf-40ca-4d87-8e26-2a248b6b1e39/thumbnail/64x64/60ebefddbec32b3e79d317f9e0c43e2c/imgingest-5234865137632075882.png");
    image(b, mouseX - 30, mouseY - 30);
   }
   else {
     if(transparent == 't') {
         fill(random(255), random(255), random(255), random(255));
         ellipse(mouseX, mouseY, 20, 20);
         fill(random(255), random(255), random(255), random(255));
         rect(mouseX-5, mouseY-5, 10, 10);
     }
     else {
       fill(random(255), random(255), random(255));
       ellipse(mouseX, mouseY, 20, 20);
       fill(random(255), random(255), random(255), random(255));
       rect(mouseX-5, mouseY-5, 10, 10);
     }
   }
   stroke(random(255), random(255), random(255));
  }
}

void clear_print() {

  // these 2 options let you choose between clearing the background
  // and saveing the current image as a file.
  if (key == 'x' || key == 'X') {
    background(206, 206, 206);
  } else if (key == 'p' || key == 'P') {
    saveFrame("images/00cw_m-####.png");
    //this will save the name as the intials and a millis counting number.
    // it will always be larger in value then the last one.
  }
}
