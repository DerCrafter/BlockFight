//OtherLibrarys
import processing.sound.*;
import processing.video.*;

//Network Library
import processing.net.*;
Server s; 
Client c;
boolean serverRunning;
int playernummer = 0;

Client[] server_c = new Client[16];

//PlayerVariable/Eigenmschaften

float server_x= 100;    // x-Koordinate
float server_y= 100;    // y-Koordinate
float client_x= 1550; // x-Koordinate
float client_y= 900;  // y-Koordinate
//mousevariable
float mouseX_server=70;
float mouseY_server= 80;
float mouseX_client= 1650;
float mouseY_client= 1000;
//playercharacter variable
float player_character_server = 0;
float player_character_client = 0;
//playername 
String player_name_server="";
String player_name_client="";
//statusfrom server
int status_server;
//Heal
int heal_server = 100000;
int heal_client = 100000;
//ImageDeklarieren
PImage Mario_character, Luigi_character;
PImage gun;
PImage Background_Start;
PImage backgroundgame;
PImage backgroundminimap;
//DEBUG
boolean debug;
//TastenSteuerung
boolean[] taste = new boolean[4];
int state;
//punktesystem
int points;
//MENU
PImage menu;
PImage x;
PImage y;
//berechnung von abstand player kugeln
float[] x_server = new float[100];
float[] y_server = new float[100];
//INGAME MENU

//STATUS Anzeige
int status;
boolean menu_ingame = false;

//Musik
SoundFile Startmusik;
boolean soundon;
int buttonCooldown;
//SHOOTINGS

float playerRichtung_server;
float[] KugelX_server = new float[50];
float[] KugelY_server = new float[50];
float[] KugelRichtung_server = new float[50];
int nummer_server=0;
float mousepressed_server;

float playerRichtung_client;
float[] KugelX_client = new float[50];
float[] KugelY_client = new float[50];
float[] KugelRichtung_client = new float[50];
int nummer_client=0;
float mousepressed_client;
