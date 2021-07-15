//        VOID KEY PRESSED
void keyPressed()
{
  if (key == 49)
  {
    debug = true;
  }

  if (key == 50)
  {
    debug = false;
  }
  if (status==1)
  {
    switch(key)
    {
    case 'w':
      taste[0] = true;
      break;
    case 'W':
      taste[0] = true;
      break;

    case 'a':
      taste[1] = true;
      break;
    case 'A':

      taste[1] = true;
      break;
    case 's':
      taste[2] = true;
      break;
    case 'S':
      taste[2] = true;
      break;

    case 'd':
      taste[3] = true;
      break;  
    case 'D':
      taste[3] = true;
      break;
    }
  }

  if (status==0)
  {
    if (key==ENTER || key==RETURN) 
    {
      if (player_name_server.length()!=0)
      {
        state=1;
        return;
      }
    } 

    if (keyCode == 32)
    {
      return;
    }

    if (state==0)
    {
      if (player_name_server.length()<8)
      {
        player_name_server = player_name_server + key;
      }

      if (keyCode == 8 && player_name_server.length()>1)
      {
        player_name_server = player_name_server.substring(0, player_name_server.length() - 2);
      }
    }
  }      
  //SOUND TOGGLE
  if (status == 2)
  {  
    if (keyCode == 32)
    {
      if (soundon == true)
      {
        soundon=false;
      } else
      {
        if (soundon == false)
        {
          soundon=true;
        }
      }
    }
  }
  //OPTIONS SERVER INGAME
  if (menu_ingame)
  {
    if ( keyCode == 32 && debug == true)
    {
      if (serverRunning == true)
      {
        serverRunning=false;
      } else
      {
        if (serverRunning == false)
        {
          serverRunning=true;
        }
      }
    }
  }
} 
//                VOID KEY RELEASED
void keyReleased()
{
  if (status==1)
  {
    switch(key)
    {
    case 'w':
      taste[0] = false;
      break;
    case 'W':
      taste[0] = false;
      break;

    case 'a':
      taste[1] = false;
      break;
    case 'A':
      taste[1] = false;
      break;

    case 's':
      taste[2] = false;
      break;
    case 'S':
      taste[2] = false;
      break;

    case 'd':
      taste[3] = false;
      break;  
    case 'D':
      taste[3] = false;
      break;
    }
  }
}

void mousePressed()
{
  if (status == 1&& menu_ingame == false)
  {
    mousepressed_server = 1;
  }
}

void mouseReleased()
{
  if (status == 1)
  {
    mousepressed_server = 0;
  }
}
