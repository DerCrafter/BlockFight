void datenLesenServer()
{
  String input;
  String data[];
  String zeile[];
  c = s.available(); // erster Client aktivieren
  while (c != null)
  {
    input = c.readString();
    data = split(input, '\n');  // Split values into an array
    for (String n : data)
    {
      zeile = split(n, ' ');
      if (zeile[0].equals("Spieler"))
      {
        client_x = float(zeile[1]);
        client_y = float(zeile[2]);
        player_character_client = float(zeile[3]);
        playerRichtung_client = float(zeile[4]);
        mousepressed_client = float(zeile[5]);
        nummer_client = int(zeile[6]);
        mouseX_client = int(zeile[7]);
        mouseY_client = int(zeile[8]);
        player_name_client = zeile[9];
        heal_server = int(zeile[10]);
      }
    }
    c = s.available(); // zweiter, dritter,... Client aktivieren
  }
}

void datenSchreibenServer()
{
  String text = "Spieler "+server_x+" "+server_y+" "+player_character_server+" "+playerRichtung_server+" "+mousepressed_server+" "+nummer_server+" "+mouseX_server+" "+mouseY_server+" "+player_name_server+" "+heal_client+" "+status_server+"\n";
  s.write(text);
}
