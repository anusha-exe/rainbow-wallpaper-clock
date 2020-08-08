/**The gradient system is what gives the wallpaper 
its charm and meaning. Enjoy fiddling with it!

Basically it is based on a example from Processing of Linear Gradient.
In short what this function does is it takes two colour arguments, c1 and c2, and draws continuous
concentric circles. As the radius expands the stroke colour, which was c1 at the begining, become more and more c2-ish and
at the end it becomes c2. Also, the alpha value is mapped with the radius so it increases with the radius. That's what
gives the gradient a soft effect.
*/


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


  

