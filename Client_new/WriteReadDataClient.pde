void datenLesenClient()
{
  String input;  
  String data[];
  String zeile[];
  while (c.available() > 0)
  {
    input = c.readString();
    data = split(input, '\n');  // Split values into an array
    for (String n : data)
    {
      zeile = split(n, ' ');
      if (zeile[0].equals("Spieler"))
      {
        server_x = float(zeile[1]);
        server_y = float(zeile[2]);
        player_character_server = float(zeile[3]);
        playerRichtung_server = float(zeile[4]);
        mousepressed_server= float(zeile[5]);
        nummer_server = int(zeile[6]);
        mouseX_server = int(zeile[7]);
        mouseY_server = int(zeile[8]);
        player_name_server = zeile[9];
        heal_client = int(zeile[10]);
        status_server = int(zeile[11]);
      }
    }
  }
}

void datenSchreibenClient()
{
  String text = "Spieler "+client_x+" "+client_y+" "+player_character_client+" "+playerRichtung_client+" "+mousepressed_client+" "+nummer_client+" "+mouseX_client+" "+mouseY_client+" "+player_name_client+" "+heal_server+"\n";
  c.write(text);
}
