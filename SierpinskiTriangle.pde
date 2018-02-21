int sizio = 20;
public void setup()
{
  size(600,500);
  background(0);
}
public void draw()
{
  
}
public void mouseDragged()//optional
{
  
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= sizio) {
    triangle(x,y, x+len/2, y-len, x+len, y);
  }
  else {
      sierpinski(x,y, len/2);
      sierpinski(x+len/2, y, len/2);
      sierpinski(x+len/4, y-len/2, len/2);
    }
}
void mousePressed(){
  sierpinski(200, 300, 200);
  text("This Sierpinski Triangle would like to apologize for not being all that you'd like it to be.", 50, 400);
}