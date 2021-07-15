void setup()
{
  size(1920, 1080);
  clientRunning = false;

  backgroundgame = loadImage("backgroundgame.png");

  Mario_character = loadImage("Mario.png");
  Luigi_character = loadImage("Luigi.png");
  gun = loadImage("gun.png"); 
  Background_Start =loadImage("Status0.png");
  menu =loadImage("Menubutton.png");
  x = loadImage("x.png");
  y = loadImage("y.png");
  backgroundminimap = loadImage("backgroundminimap.png");
  Startmusik = new SoundFile(this, "LoadingScreenMusic.mp3");

  soundon = true;
  noCursor();
}
