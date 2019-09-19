var randomVariable = 270;
let mic;
let micLevel;
let backgroundColor;
let smashBall1;
let smashBall2;
let eyeColor = 60;

function setup() {
  createCanvas(500, 400);
  
    angleMode(DEGREES);
  
  mic = new p5.AudioIn()
  mic.start();
  
  //micLevel = (mic.getLevel(0.9) + micLevel)/2;
  
  backgroundColor = color(200, 100, 100);
  
  smashBall1 = new SmashBall(100, 300, backgroundColor);
  smashBall2 = new SmashBall(400, 350, backgroundColor);
  //console.log(smashBall1);
  
    backgroundColor = color(100, 100, 200);
  
  smashBall3 = new SmashBall(100, 300, backgroundColor);
  smashBall4 = new SmashBall(400, 350, backgroundColor);
  
  console.log("INSTRUCTIONS");
  console.log("ROB's hand waves when you talk to him! Try saying hello!");
  console.log("Move the mouse inside his body to switch ROB to Super Famicom colors!");
  console.log("Move the mouse outside his body to switch ROB back to NES colors.");
  console.log("To change ROB's eyes red, move the mouse inside his left eye and click.");
  console.log("To change ROB's eyes back to gray, move the mouse to his right eye and click.");
}

function drawFeet(variable) {
  quad(140, variable, 360, variable, 310, 350, 200, 350);
   quad(variable, 240, 230, 240, 140, variable, 360, variable);
}

function drawEars() {
  rect(195, 35, 30, 30, 10);
  rect(280, 35, 30, 30, 10);
}

function drawEyes() {
  fill(eyeColor);
  //stroke(60);
  ellipse(227, 47, 35);
  ellipse(278, 47, 35);
}

/*
function drawWrists(angleVariable) {
  fill(0);
  push();
  translate(63, 90);
  rotate(-angleVariable);
  rect(-10, -5, 65, 35, 10);
  pop();
  rect(385, 250, 65, 35, 10);
}
*/

function drawArmsUpper() {
  //rect(60, 160, 30, 110, 10);
  rect(60, 75, 30, 110, 10);
  rect(415, 160, 30, 110, 10);
}

function drawLeftArmBottom() {
  push();
  rotate(60);
  rect(170, -80, 30, 110, 10);
  pop();
}

function drawRightArmBottom() {
  push();
  rotate(120);
  rect(-80, -470, 30, 110, 10);
  pop();
}

function draw() {
  //console.log("mouse x is " + mouseX);
  //console.log("mic level is " + micLevel);
  
  //micLevel = mic.getLevel();
  //micLevel = (mic.getLevel(0.9) + micLevel)/2;
  
  //angleWave = -map(mouseX, 0, 400, 0, 80);
  
  //console.log("Mic level is " + mic.getLevel() * 50);
  if(mic.getLevel() * 50 > 1) {
    angleWave = -map(mic.getLevel() * 25, 0, 1, 30, 150, true);
  }
  else {
    angleWave = -map(mic.getLevel() * 50, 0, 1, 30, 150, true);
  }
  //angleWave = -map(micLevel * 10, 0, 1, 0, 80);
  //rect(140, 100, 225, 55, 25);
  if(mouseX >= 140 && mouseX <= 365 && mouseY <= 155 && mouseY >= 100){
    //console.log("mouse x is " + mouseX);
    background(100, 100, 200);       smashBall3.display();
  smashBall4.display();
    
    smashBall3.move();
    smashBall4.move();
    mouseInBody();
  }
  else {
    background(200, 100, 100);smashBall1.display();
  smashBall2.display();
    
  smashBall1.move();
  smashBall2.move();
        defaultProgram();
  }
}

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

function mouseInBody() {
  backgroundColor = color(100, 100, 200);
  
  
  //laser
  fill(255, 0, 0);
  //stroke(255, 0, 0);
  ellipse(250, 20, 10);
  
  //"feet" base
  fill(220, 0, 80);
   quad(140, 270, 360, 270, 310, 360, 200, 360);
  
  fill(255, 255, 200);
  //stroke(200);
  
  //ears
  drawEars();
  
  //"feet"
  drawFeet(randomVariable);
  
  //waist ellipse
  ellipse(250, 270, 90, 60);
  
  //neck
  rect(235, 70, 30, 170);
  
  //torso
  rect(140, 100, 225, 55, 25);
  
  //torso square
  rect(220, 100, 60, 30, 10);
  
  //waist
  rect(230, 240, 40, 25, 5);
  
  //head
  rect(200, 20, 105, 55, 15);
  
  //visor
  fill(0);
  //stroke(0);
  rect(205, 25, 95, 45, 10);

  //eyes
  drawEyes();
  
  //wrists
  //drawWrists(mouseX);
  
  fill(220, 0, 80);
  //arms upper
  drawArmsUpper();
  
  //arms bottom
  drawLeftArmBottom();
  drawRightArmBottom();
  
  //wrists
  fill(0);
  push();
  translate(75, 90);
  rotate(angleWave);
  rect(0, -20, 65, 35, 10);
  pop();
  rect(385, 250, 65, 35, 10);
}

function defaultProgram() {
  backgroundColor = color(200, 100, 100);
  
  //draw smash ball
  //drawSmashBall(100, 300, color(200, 100,100));
  
  
  //laser
  fill(255, 0, 0);
  //stroke(255, 0, 0);
  ellipse(250, 20, 10);
  
  //"feet" base
  fill(120);
   quad(140, 270, 360, 270, 310, 360, 200, 360);
  
  fill(200);
  //stroke(200);
  
  //ears
  drawEars();
  
  //"feet"
  drawFeet(randomVariable);
  
  //waist ellipse
  ellipse(250, 270, 90, 60);
  
  //neck
  rect(235, 70, 30, 170);
  
  //torso
  rect(140, 100, 225, 55, 25);
  
  //torso square
  rect(220, 100, 60, 30, 10);
  
  //waist
  rect(230, 240, 40, 25, 5);
  
  //head
  rect(200, 20, 105, 55, 15);
  
  //visor
  fill(0);
  //stroke(0);
  rect(205, 25, 95, 45, 10);

  //eyes
  drawEyes();
  
  //wrists
  //drawWrists(mouseX);
  
  fill(120);
  //arms upper
  drawArmsUpper();
  
  //arms bottom
  drawLeftArmBottom();
  drawRightArmBottom();
  
  //wrists
  fill(0);
  push();
  translate(75, 90);
  rotate(angleWave);
  rect(0, -20, 65, 35, 10);
  pop();
  rect(385, 250, 65, 35, 10);
}

function mouseClicked() {
  if(dist(mouseX, mouseY, 227, 47) <= 35) {
   eyeColor = color(200, 0, 0); 
  }
  else if(dist(mouseX, mouseY, 278, 47) <= 35) {
    eyeColor = 60;
  }
  else {
    value = 60;
  }
}