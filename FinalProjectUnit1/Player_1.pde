class player
{
  //player image
  PImage player;
  //player possition
  float x = 300;
  float y = 300;
  
  void draw()
  {
  //player image
    player = loadImage ("Player.png");
  player.resize (50, 115);
 image (player, x, y);
  }
  void move()
  {
    //player movements
    if(keyPressed)
    {
      if (key == 'a' || key == 'A')
      {
        x = x - 5;
      }
      if (key == 'd' || key == 'D')
      {
        x = x +5;
      }
      if (key == 'w' || key == 'W')
      {
        y = y -5;
      }
      if (key == 's' || key == 'S')
      {
        y = y +5;
      }

    }
    //making sure the player does not go out of the screen
    if (x > 530)
    {
      x = x - 4;
    if (x > 550)
    {
      x = 550;
      x = x - 20;
    }
    }
     if (x < 20)
    {
      x = x + 4;
    if (x < 0)
    {
      x = 0;
      x = x + 20;
    }
    }
      if (y < 20)
    {
      y = y + 4;
    if (y < 0)
    {
      y = 0;
      y = y + 20;
    }
    }
     if (y > 465)
    {
      y = y - 4;
    if (y > 485)
    {
      y = 485;
      y = y - 20;
    }
  }
 //secret room 
  if (y > 460)
  {
    if (x > 530)
    {
      screen = 2;
    }
  }
  }
}
