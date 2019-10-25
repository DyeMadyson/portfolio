int size = 0;
int startTime;
int startX=250;
int startY=0;
int endX=250;
int endY=0;
boolean start = false;
int timer=0;
int a=0;
PImage pig;
PImage darkcloud;


void setup()
{
  size(500, 500);
  background(255,255,255);
  strokeWeight(5);
  pig = loadImage("pepa.png");
  pig.resize(200, 200);
  darkcloud = loadImage("data/c.png");
  darkcloud.resize(350, 200);
}
void draw(){
    background(255,255,255);
  fill(0, 0, 0, 25);
  rect(-5, -5, width+10, height+10);
  imageMode(CENTER);
  imageMode(CENTER);
    
    stroke(200, 0, 90);
    while (endY<height) {
      endY= startY + (int)(Math.random()*10);
      endX= startX + (int)(Math.random()*20)-10;
      line(startX, startY, endX, endY);
      startX=endX;
      startY=endY;

      int time = millis() - startTime; 
      if (time > 250) {
        startTime = millis();
        reset();
      }
    }
      image(pig, 250, 400);
      image(darkcloud , 250, 90);
     reset();
  
}
  void reset() {
    startX=250;
    startY=0;
    endX=250;
    endY=0;
}
