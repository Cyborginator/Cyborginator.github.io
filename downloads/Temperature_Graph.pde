void setup() {
    // The size of the sketch window
    size(1000, 1000); // size(width, height)
    smooth(); // blends the edges of shapes with background pixels
} //setup

void draw() {
   stroke(0);
   strokeWeight(2);
    rect(200, 0, 1000, 800);
    line(0, 800, 800, 800);
    strokeWeight(6);
    stroke(0,0,255);
    line(200, 800, (800), ((100-68)*10));
    stroke(255,0,0);
    line(200, 800, (800), ((100-56)*10));
    strokeWeight(2);
    stroke(0,255,0);
    line(200, 800, (800), ((100-68)*10));
    stroke(100,100,0);
    line(200, 800, (800), ((100-65)*10));
    stroke(0,100,100);
    line(200, 800, (800), ((100-67)*10));
    stroke(255,0,255);
    line(200, 800, (800), ((100-70)*10));
    stroke(0,255,255);
    line(200, 800, (800), ((100-74)*10));
    stroke(255,255,0);
    line(200, 800, (800), ((100-61)*10));
} //draw
