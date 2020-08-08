//Colors
color orange;
color yellow;
color green;
color blue;
color pink;
color purple;


void circularGrad(int x, int y, color c1, color c2, float l){
  float d = dist(0, 0, width, height)*l;
  noFill();
  for(int r = 0; r < d; r++){
     float inter = map(r, 0, d, 0, 1);
     int alpha = int(map(r, 0, d, 255, 0));
     color c = lerpColor(c1, c2, inter);
     stroke(c, alpha);
     ellipse(x, y, r*2, r*2);
    
  }
}


  

