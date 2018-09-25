class zombie
{
  //possition of zombie
  float x;
  float y;
  //zombie image
  PImage zombieImage;
  float Speed;

  zombie()
  {
    x = 0;
    y = 300;
    zombieImage = loadImage ("Zombie.png");
    zombieImage.resize(100, 100);
    Speed = random(0.2, 2.6);
  }

  void draw()
  {
    image (zombieImage, x, y);
  }
  //zombie movement (following player)
  void move(float px, float py)
  {
    if (px > x)
    {
      x = x + Speed;
    }
    if (px< x)
    {
      x = x - Speed;
    }
    if (py > y)
    {
      y = y + Speed;
    }
    if (py < y)
    {
      y = y - Speed;
    }
    // collisions (if zombie hits player)
    if (x + 75 > px)
    {
      if (x < px + 30)
      {
        if (y + 75 > py)
        {
          if (y < py + 85)
          { 
            screen = 3;
            print ("collision");
          }
        }
      }
    }
  }
}
