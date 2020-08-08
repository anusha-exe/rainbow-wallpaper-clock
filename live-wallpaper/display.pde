import java.util.Date;


//Real Date
int w; // 0 to 6
int d, y;

//Real Time
int h;
int r;
int m;
int n;
int sec;

//Position of clock
int l_rect=85;
int b_rect=17;
int xpoint=175;
int ypoint=290;

//Position of calendar 
int xc=xpoint+100;
int yc=ypoint+3*l_rect+b_rect;
int space=40;
int l_size=9;
int b_size=2;

//Colors
color orange;
color yellow;
color green;
color blue;
color pink;
color purple;

void setup()
{
  size(1080,1840);
  frameRate(1);
  orange = color(#FF4500);
  yellow = color(#FFFF44);
  green = color(#2EFF00);
  blue = color(#007BFE);
  pink = color(#FF60CF);
  purple=color(#770596);
}


void draw(){
 background (pink);
 h = hour()/10;
 r = hour()%10;
 m = minute()/10;
 n = minute()%10;
 sec = frameCount;
 w = new Date().getDay();
 d = day()/10;
 y = day()%10;
  
  circularGrad(width/2, height/2, pink, pink, 1);
  circularGrad(0, 0, orange, pink, 0.75);
  circularGrad(width, 0, purple, pink, 0.75);
  circularGrad(0, height, orange, pink, 0.75);
  circularGrad(width, height, yellow, pink, 0.8);
  
  //scale(0.5);
  
  
  //time
  seven_seg(nums[h], xpoint + 0*(140+l_rect)-60, ypoint, l_rect, b_rect);
  seven_seg(nums[r], xpoint + 1*(140+l_rect)-60, ypoint, l_rect, b_rect);
  seven_seg(nums[m], xpoint + 2*(140+l_rect)+30, ypoint, l_rect, b_rect);
  seven_seg(nums[n], xpoint + 3*(140+l_rect)+30, ypoint, l_rect, b_rect);
  if(sec%2==0)
  fill(255);
  else
  fill(255, 50);
  rect(xpoint + (270+l_rect), ypoint+75, 25,25, 40);
  rect(xpoint + (270+l_rect), ypoint+160, 25, 25,40);
  if(sec==59)
  sec=0;
 
 //calendar
  for(int i=0; i<3; i++){
  sixteen_seg(week[w][i], xc+i*(l_size+space), yc, l_size, b_size); //  7 : 2
  sixteen_seg(month[month()-1][i], xc+i*(l_size+space)+6*(l_size+space), yc, l_size, b_size);
  }
  
  //comma
  sixteen_seg(letters[26], xc+2*(l_size+space)+space, yc, l_size, b_size);
  
  //day
  sixteen_seg(nums_16[d], xc+ 10*(l_size+space) , yc, l_size, b_size);
  sixteen_seg(nums_16[y], xc+ 10*(l_size+space)+space, yc, l_size, b_size );
  
 
 
  }
  
  
 int getColor(int value, int shift)
{
  //bitwise operation for alpha = 0 or 1
  int alpha=255*(value>>shift & 1);
  if(alpha==0)
  alpha=20;
  int g=255;
  int b=255;
  int r=255;
  return color(r, g, b, alpha);
  
}  
  




  
  
