import java.util.Date;

int w;
int mnth;
int d;
int ay;

//Real Time
int h;
int r;
int m;
int n;
int sec;
//rect variables
int l_rect=130;
int b_rect=40;
int xpoint=300;
int ypoint=240;
int colon_w = 60;
//Colors
color orange;
color yellow;
color green;
color blue;
color pink;
color purple;
color indigo;
void setup ()
{
  size(800, 500);
  frameRate(1);
  orange = color(#FE7000);
  yellow = color(#F0FF00);
  green = color(#2EFF00);
  blue = color(#007BFE);
  pink = color(#FF60CF);
  purple = color(#770596);
  indigo = color(#27E0B9);
}


void draw(){
  
  h=hour()/10;
  r=hour()%10;
  m=minute()/10;
  n=minute()%10;
  sec=second();
  w = new Date().getDay();
  mnth = month() - 1;
  d = day()/10;
  ay = day() % 10;
  int xCal = xpoint + l_rect + 5*b_rect/2;
  int yCal = ypoint + 2*l_rect + 3*b_rect + 70;
  int lCal = l_rect/6;  int bCal = 5;    // 7 : 2
  
  circularGrad(0, 0, purple, pink, 0.75);
  circularGrad(width, 0, indigo, pink, 0.75);
  circularGrad(0, height, orange, pink, 0.75);
  circularGrad(width, height, yellow, pink, 0.75);
  
  scale(0.5);

  //clock
  seven_seg(nums[h], xpoint + 0*(180+l_rect)-100, ypoint, l_rect, b_rect);
  seven_seg(nums[r], xpoint + 1*(180+l_rect)-100, ypoint, l_rect, b_rect);
  seven_seg(nums[m], xpoint + 2*(180+l_rect)+70, ypoint, l_rect, b_rect);
  seven_seg(nums[n], xpoint + 3*(180+l_rect)+70, ypoint, l_rect, b_rect);
  if(frameCount % 2 == 0)
  fill(255);
  else
  fill(255, 20);
  rect(xpoint + 1*(180+l_rect)+180, ypoint + 100, colon_w, colon_w, 50);
  rect(xpoint + 1*(180+l_rect)+180, ypoint + 240, colon_w, colon_w, 50);
  
  //Calender
  
    // Month

  for(int i = 0; i < 3; i++){
      sixteen_seg(month[mnth][i], xCal, yCal, lCal, bCal);  // x : y : 7 : 2
      xCal += l_rect/2;  
    }
  xCal += l_rect/4;
    // Date
  sixteen_seg(nums_16[d], xCal, yCal, lCal, bCal); xCal += l_rect/2;
  sixteen_seg(nums_16[ay], xCal, yCal, lCal, bCal); xCal += l_rect/2;
    // Comma
  sixteen_seg(4, xCal, yCal, lCal, bCal); xCal += l_rect/2;
    // Day of the Week
    //xCal += 1.5*l_rect;
  for(int i = 0; i < 3; i++){
  sixteen_seg(week[w][i], xCal, yCal, lCal, bCal); xCal += l_rect/2;
    }
  

  }

  
int getColor(int value, int shift)
{//bitwise operation for alpha=0 or 1
  int alpha=255*(value>>shift & 1);
  if(alpha==0)
  alpha = 30;
  int g = 255;
  int b = 255;
  int r = 255;
  return color(r, g, b, alpha);
  
}  
  
