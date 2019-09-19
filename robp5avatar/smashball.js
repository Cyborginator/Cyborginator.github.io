class SmashBall {
 constructor(_xPos, _yPos, _rgbColor) {
   this.xPos = _xPos;
   this.yPos = _yPos;
   this.rgbColor = _rgbColor;
   //this.size = _size;
 }
  display() {
  fill(50);
    stroke(50);
    //scale(this.size);
  circle(this.xPos, this.yPos, 70);
  push();
  fill(this.rgbColor);
  stroke(this.rgbColor);
  rect(this.xPos-40, this.yPos+5, 80, 7);
  rect(this.xPos-20, this.yPos-40, 15, 80);
  pop();
  }
  
  move() {
    
    if(this.yPos <= height *1.3){
    // this.yPos = this.yPos +2;
    // shorthand is +=
    this.yPos +=2;
    }
    else {
      this.yPos = -height * .3;
    }
  }
}

/*
function drawSmashBall(rgbColor) {
  fill(0);
  circle(200, 200, 70);
  push();
  fill(rgbColor);
  stroke(rgbColor);
  rect(160, 205, 80, 7);
  rect(180, 160, 15, 80);
  pop();
}
*/

//Has position
/*
function drawSmashBall(xPos, yPos, rgbColor) {
  fill(0);
  circle(xPos, yPos, 70);
  push();
  fill(rgbColor);
  stroke(rgbColor);
  rect(xPos-40, yPos+5, 80, 7);
  rect(xPos-20, yPos-40, 15, 80);
  pop();
}
*/