float richtungMaus_client(float x, float y)

{

  float winkel;

  float difx = mouseX-x;

  float dify = mouseY-y;

  winkel = degrees(atan(dify/difx));

  if (difx<0) {
    winkel = winkel+180;
  }

  winkel = (winkel+360)%360;

  return(winkel);
}

float richtungMaus_server(float x, float y)

{

  float winkel;

  float difx = mouseX_server-x;

  float dify = mouseY_server-y;

  winkel = degrees(atan(dify/difx));

  if (difx<0) {
    winkel = winkel+180;
  }

  winkel = (winkel+360)%360;

  return(winkel);
}


void spielerZeichnen_server(float x, float y)

{

  translate(x, y);

  rotate(radians(richtungMaus_server(server_x, server_y)-90));
  if (status_server == 1)
  {
    image(gun, -15, -15, 30, 30);
  }
  rotate(-radians(richtungMaus_server(server_x, server_y)-90));

  translate(-x, -y);
}    

void spielerZeichnen_client(float x, float y)

{
  if (status == 1)
  {
    translate(x, y);

    rotate(radians(richtungMaus_client(client_x, client_y)-90));

    image(gun, -15, -15, 30, 30);

    rotate(-radians(richtungMaus_client(client_x, client_y)-90));

    translate(-x, -y);
  }
}    

float abstand(float x1, float y1, float x2, float y2)

{

  float wert;

  wert = sqrt(sq(x1-x2)+sq(y1-y2));

  return(wert);
}
