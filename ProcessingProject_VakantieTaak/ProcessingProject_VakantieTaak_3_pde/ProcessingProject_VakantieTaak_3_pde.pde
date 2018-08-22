String gameState;
int h = 250;
int y = 275;
int y2 =375; 
float start = 0;
float stop = 0.01745329252;
float compleet = 6.2831853072;
boolean State = true;

void setup()
{
  size(1000,800);
  gameState = "START";
}

void draw()
{
 clearBackground();
 if(gameState == "START"){
   startGame();
 }else if(gameState == "PlAY"){
   PlayGame();
 }else if(gameState == "END"){
   EndGame();
   stop = 0.01745329252 ;
 }
}

void startGame()
{
  textAlign(CENTER);
  textSize(20);
  fill(255,0,0);
  text("druk op een knop om de olympische ringen te maken", width/2, height/2);
  if (keyPressed==true)
  {
    gameState = "PlAY";
  }
}
void PlayGame()
{
  noFill();
  strokeWeight(8);
  if (mousePressed == State && mouseX>0 && mouseX<250 && mouseY>275 && mouseY<525) // Ik kies een situatie voor de variabele-versie omdat het meer flexiebeler is.
    {
      stop = compleet ;
    }
  if(stop >= 6.2831853072)
        {
          gameState = "END";
        }
 stroke(0,0,250); //blauw
 arc(250,y,h,h,start,stop);
 stroke(0,0,0); //zwart
 arc(500,y,h,h,start,compleet);
 stroke(250,0,0); //rood
 arc(750,y,h,h,start,compleet);
 stroke(250,200,0); //geel
 arc(375,y2,h,h,start,compleet);
 stroke(0,250,0); //groen
 arc(625,y2,h,h,start,compleet); 
  
}
void clearBackground()
{
  strokeWeight(0);
  fill(250,250,250);
  rect(0,0,width,height);
}

void EndGame()
{
  fill(0,0,0);
  rect(0,0,width,height);
  fill(250,250,250);
  textAlign(CENTER);
  textSize(20);
  text("Klik om opnieuw te spelen.",width/2, height/2);
  rect(400,450,200,100,CENTER);
  if (mousePressed==true && mouseX>400 && mouseX<600 && mouseY>450 && mouseY<550)
  {
    gameState = "PlAY"; 
  }
}