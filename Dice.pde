Die die;
int a = 0;
int b = 0;
int c = 0;
int d = 0;
int e = 0;
int f = 0;
int g = 1;
int h = 0;
int r = 0;
int sum = 0;
void setup(){
     
    size(600,700);
    background(0);
    textAlign(CENTER,CENTER);
    rectMode(CENTER);
    textSize(15);
    noLoop();
    stroke(255);
  }
void draw(){
background(0);
      int j = 0;
      int m = 0;
      while(j < 10){
      int n = m++;
      int i = 0;
        while(i < n){
          die = new Die(50*(i+1),50*(j+1));
          die.roll();
          die.show();
          i++;
        }
        j++;
      }
      sum = a*1+b*2+c*3+d*4+e*5+f*6;
      stroke(255);
      fill(255);
      text("total = " + sum, 300, 600);
      text("# of rolls: "+g,300,630);
      line(350,90,350,250);
      line(350,250,530,250);
      fill(255);
      for(int q = 230; q > 80; q = q - 20){
        line(345,q,350,q);
        h = h + 2;
        fill(255);
        text(""+h,330,q);
      }
      for(int w=380; w<560; w=w+30){
        line(w,250,w,255);
        r++;
        fill(255);
        text(""+r,w,265);
      }
      text("number rolled",480,290);
      translate(100,450);
      rotate(-PI/2);
      text("# of appearances",300,200);
  }
void mousePressed(){
          sum = 0;
          a = 0;
          b = 0;
          c = 0;
          d = 0;
          e = 0;
          f = 0;
          g++;
          h = 0;
          r = 0;
          
      redraw();
  }
 
  class Die{
    
      int theX, theY, diceroll;

      Die(int x, int y){
          theX = x;
          theY = y;

      }
      void roll(){
      diceroll = (int)((Math.random()*6)+1);
      }
      void show(){

       if(diceroll%2 == 0){
       fill(0,200,0);
       rect(theX,theY,40,40,5);
       }
       else if(diceroll%2 == 1){
       fill(200,0,0);
       rect(theX,theY,40,40,5);
       }
       
      if(diceroll == 1){
        fill(0,200,0);
        ellipseMode(CENTER);
        ellipse(theX,theY,8,8);
        a++;
        line(380,250,380,250-10*a);
      }
      else if(diceroll == 2){
        fill(200,0,0);
        ellipse(theX-10,theY,8,8);
        ellipse(theX+10,theY,8,8);
        b++;
        line(410,250,410,250-10*b);
      }
      else if(diceroll == 3){
        fill(0,200,0);
        ellipse(theX,theY,8,8);
        ellipse(theX+10,theY-10,8,8);
        ellipse(theX-10,theY+10,8,8);
        c++;
        line(440,250,440,250-10*c);
      }
      else if(diceroll == 4){
        fill(200,0,0);
        ellipse(theX+10,theY-10,8,8);
        ellipse(theX+10,theY+10,8,8);
        ellipse(theX-10,theY-10,8,8);
        ellipse(theX-10,theY+10,8,8);
        d++;
        line(470,250,470,250-10*d);
      }
      else if(diceroll == 5){
        fill(0,200,0);
        ellipse(theX,theY,8,8);
        ellipse(theX+10,theY+10,8,8);
        ellipse(theX+10,theY-10,8,8);
        ellipse(theX-10,theY+10,8,8);
        ellipse(theX-10,theY-10,8,8);
        e++;
        line(500,250,500,250-10*e);
      }
      else{
        fill(200,0,0);
        ellipse(theX+10,theY-10,8,8);
        ellipse(theX+10,theY+10,8,8);
        ellipse(theX-10,theY-10,8,8);
        ellipse(theX-10,theY+10,8,8);
        ellipse(theX-10,theY,8,8);
        ellipse(theX+10,theY,8,8);
        f++;
        line(530,250,530,250-10*f);
      }
    }
  }
