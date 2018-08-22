
// 0.01745329252 = 1 graden  ==> 2 graden = 0.01745329252*2


int x = 250;
int y = 250;
int h = 250;
float start = 0;
float stop = 0.01745329252 ; 
float groei = 2;

void setup()
{
  size(500,500);
  background(250,200,0);
  noStroke();
  noFill();
}

void draw()
{
  strokeWeight(4);
  if (mousePressed || keyPressed == true) // Ik kies een situatie voor de variabele-versie omdat het meer felexiebeler is.
    {
      stop = stop + 0.01745329252 ;
      stroke(0);
    }
 
  arc(x,y,h,h,start,stop); 
}