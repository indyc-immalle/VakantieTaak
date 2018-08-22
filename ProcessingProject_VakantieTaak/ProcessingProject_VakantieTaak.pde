float arc = 0;
boolean state = false;
int getal = 10;
void setup()
{
  size(500,500);
  background(0);
  
  if(arc == TWO_PI)
  {
    state = true;
  }
   
}

void draw()
{
  strokeWeight(8);
  stroke(#FF0870);
  arc(250,250,250,250,0,arc);
  
  if(state == true) // laat uw eind score zien.
  {
    background(250);
  }
}


void mousePressed() // klikken = cirkel compleet maken. 
{
  arc = QUARTER_PI / getal + arc; // getal is random bepaalt.
}

void keyPressed() // reset button
{
  if (key == 'b' || key == 'B')
  {
      state = false;
  }
}