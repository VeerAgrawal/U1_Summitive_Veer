//
player player1;
zombie target;
//screen variable
int screen = 1;
//sound for screen 2
import processing.sound.*; 
SoundFile sound;
String WinningSound = "Win.mp3";
String path;
//array
zombie[] enemie = new zombie [10];
//zombies moving 
int AliveZombies = 1;
//clock
int startingTime;
float TextFont;

void setup()
{
  size (600, 600);
  player1 = new player();
  target = new zombie();
  //sound
  path = sketchPath("Win.mp3");
  sound = new SoundFile(this, path);
  //array
  for (int i = 0; i < 10; i ++)
  {
    enemie[i] = new zombie ();
  }
  //clock
     startingTime = millis();
}
void draw()
{
  if (screen == 1)
  {
    background (200, 100, 19);
    //clock
 
 int seconds = (millis() - startingTime) / 1000;
 fill(0,0,0);
 textSize(20);
 text( 0+":" + (seconds),100,100);
 if (millis()> 70000)
 {
   screen = 4;
 }
 
    //border   
    fill (255,255,255);
    rect (580, 0, 20, 600 );
    rect (0, 580, 600, 20);
    rect (0, 0, 600, 20);
    rect (0, 0, 20, 600);
    //Making zombies enter the game after a specific time
    if (millis()>10000)
    {
      if (millis()<10018)
      {
        AliveZombies = AliveZombies + 1;
        print("spawend1");
      }
    }
    if (millis()>20000)
    {
      if (millis()<20018)
      {
        AliveZombies = AliveZombies + 1;
        print("Spawned2");
      }
    }
    if (millis()>30000)
    {
      if (millis()< 30018)
      {
        AliveZombies = AliveZombies + 1;
        print("Spawned3");
      }
    }
    if (millis()>40000)
    {
      if (millis()< 40018)
      {
        AliveZombies = AliveZombies + 1;
        print("Spawned4");
      }
    }
    if (millis()>50000)
    {
      if (millis()< 50018)
      {
        AliveZombies = AliveZombies + 1;
        print("Spawned5");
      }
      if (millis()>60000)
      {
        if (millis()<60018) 
        {
          AliveZombies = AliveZombies + 4;
               print("Spawned6");
        }
  
        textSize(50);
        text("you Survived 60 Seconds", 10, 100);
      }
    }
    //playing my classes
    player1.draw();
    player1.move();
    target.draw();
    target.move(player1.x, player1.y);

    for (int i=0; i < AliveZombies; i ++)
    {

      enemie[i].move(player1.x, player1.y);
      enemie[i].draw();
    }
  }
  // Secret room
  else if (screen == 2)
  {
    background (0);
    textSize(50);
    text ("You Found a Secret Door", 2, 50);
    text ("You Win", 200, 300);
    text ("press 'L' to go on", 20, 500);
    sound.play();
     //to go back to the game from secret room
  if (keyPressed)
  {
    if (key == 'L'|| key == 'l')
    {
      screen =1;
    }
  }
  }
 //you loose screen (if zombie collides with player)
  else if (screen == 3)
  {
    background (80, 30, 240);
    textSize(30);
    text ("A zombie touched you, You Loose", 0, 300);
  }
    // if you survive long enough(you win screen)
  else if (screen == 4)
  {
    background (80, 30, 240);
    textSize(30);
    text ("You survived over 60 seconds. You win", 0, 300);
  }
}
