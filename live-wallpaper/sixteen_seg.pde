void sixteen_seg(int val, int x, int y, int l, int b){
  
  noStroke();
 
  //A1
  fill(getColor(val, 15));
  rect(x, y, l - b/4, b, 50);
  //A2
  fill(getColor(val,14));
  rect(x + l - b/4, y, l - b/4, b, 50);
  //B
  fill(getColor(val,13));
  rect(x + 2*l - b, y + b/2, b, 2*l, 50);
  //C
  fill(getColor(val,12));
  rect(x + 2*l - b, y + l + b/2 + l, b, 2*l, 50);
  //D1
  fill(getColor(val,11));
  rect(x + l - b/4, y + 2*l + 2*l, l - b/4, b, 50);
  //D2
  fill(getColor(val,10));
  rect(x, y + 2*l + 2*l, l - b/4, b, 50);
  //E
  fill(getColor(val,9));
  rect(x - b/2, y + 2*l + b/2, b, 2*l, 50);
  //F
  fill(getColor(val,8));
  rect(x - b/2, y + b/2, b, 2*l, 50);
  //G1
  fill(getColor(val,7));
  rect(x, y + 2*l, l - b/4, b, 50);
  //G2
  fill(getColor(val,6));
  rect(x + l - b/4, y + 2*l, l - b/4, b, 50);
  //H
  fill(getColor(val,5));
  beginShape();
  vertex(x + b/2, y + b);
  vertex(x + l - b*0.75, y + 2*l - 2*b);
  vertex(x + l - b*0.75, y + 2*l);
  vertex(x + b/2, y + 3*b);
  endShape();
  //I
  fill(getColor(val,4));
  rect(x + l - b*0.75, y + b/2, b, 2*l, 50);
  //J
  fill(getColor(val,3));
  beginShape();
  vertex(x + 2*l - b, y + b);
  vertex(x + 2*l - b, y + 3*b);
  vertex(x + l + b/4, y + 2*l);
  vertex(x + l + b/4, y + 2*l - 2*b);
  endShape();
  //K
  fill(getColor(val,2));
  beginShape();
  vertex(x + b/2, y + 4*l - 2*b);
  vertex(x + b/2, y + 4*l);
  vertex(x + l - b*0.75, y + (2*l) + 3*b);
  vertex(x + l - b*0.75, y + (2*l) + b);
  endShape();
  //L
  fill(getColor(val,1));
  rect(x + l - b*0.75, y + 2*l + b/2, b, 2*l, 50);
  //M
  fill(getColor(val,0));
  beginShape();
  vertex(x + l - b*0.75 + b, y + 2*l + b);
  vertex(x + l - b*0.75 + b, y + 2*l + 3*b);
  vertex(x + 2*l - b, y + 4*l);
  vertex(x + 2*l - b, y + 4*l - 2*b);
  endShape();
  
}
