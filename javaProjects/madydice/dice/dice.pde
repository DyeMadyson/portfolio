Die die;
Die[]dice;
int total=0;
int runningTotal=0;
void setup()
{
  size(700, 700);
  noLoop();
  dice=new Die [16];
  for (int i =0; i<4; i++) {
    for (int j =0; j<4; j++) {
      dice[i*4+j] = new Die(50+120*j, 50+ 120*i);
        //dice[i].roll();
    }
  }

}
void draw(){
  background(10, 70, 73);
  for (Die x : dice){
    x.show();
  }
   if (mousePressed) {
      total=0;
      for (int i =0; i<4; i++) {
        for (int j =0; j<4; j++) {
          dice[i*4+j] = new Die(50+120*j, 50+ 120*i);
        }
      }
    }
}


void mousePressed(){
  redraw();
}
class Die 
{
  private int x;
  private int y;
  private int rand;
  //variable declarations here
  Die(int x, int y) //constructor

  {
    //variable initializations here
    this.x=x;
    this.y=y;
    rand=(int)(Math.random()*6)+1;
    total += rand;
    runningTotal += rand;
  }
  void roll()
  {
   
  }
    void show()
    {
      fill(255, 200, 200);
      textSize(25);
      text("Total: " + total, 90, 600);
      fill(255, 200, 200);
      textSize(25);
      text("Running Total: " + runningTotal, 90, 550);

      fill(255, 255, 255);
      rect(x, y, 100, 100, 17);
      if (mousePressed) {
        //println(rand);
        if (rand==1) {
          fill(0, 0, 0);
          ellipse(x+50, y+50, 20, 20);
        }
        if (rand==2) {
          fill(0, 0, 0);
          ellipse(x+75, y+75, 20, 20);
          ellipse(x+25, y+25, 20, 20);
        }
        if (rand==3) {
          fill(0, 0, 0);
          ellipse(x+50, y+50, 20, 20);
          ellipse(x+75, y+75, 20, 20);
          ellipse(x+25, y+25, 20, 20);
        }
        if (rand==4) {
          fill(0, 0, 0);
          ellipse(x+25, y+25, 20, 20);
          ellipse(x+75, y+25, 20, 20);
          ellipse(x+25, y+75, 20, 20);
          ellipse(x+75, y+75, 20, 20);
        }
        if (rand==5) {
          fill(0, 0, 0);
          ellipse(x+25, y+25, 20, 20);
          ellipse(x+75, y+25, 20, 20);
          ellipse(x+25, y+75, 20, 20);
          ellipse(x+75, y+75, 20, 20);
          ellipse(x+50, y+50, 20, 20);
        }
        if (rand==6) {
          fill(0, 0, 0);
          ellipse(x+25, y+25, 20, 20);
          ellipse(x+75, y+25, 20, 20);
          ellipse(x+25, y+75, 20, 20);
          ellipse(x+75, y+75, 20, 20);
          ellipse(x+25, y+50, 20, 20);
          ellipse(x+75, y+50, 20, 20);
        }
      }
    }
  }
