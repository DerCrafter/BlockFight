//OtherLibrarys
import processing.sound.*;
import processing.video.*;

//Network Library
import processing.net.*;
Client c; // Variable für den Client

boolean clientRunning;
int playernummer = 0; 

String ip_connect = "localhost";

//PlayerVariable/Eigenmschaften
float server_x= 100; // x-Koordinate
float server_y= 100; // y-Koordinate
float client_x = 1550; // x-Koordinate
float client_y= 900; // y-Koordinate
//mousevariable
float mouseX_server=70;
float mouseY_server= 80;
float mouseX_client= 1650;
float mouseY_client= 1000;
//playercharacter variable
float player_character_server = 0;
float player_character_client = 0;
//playername 
String player_name_client=""; 
String player_name_server=""; 
//check status from server
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
boolean debug = false;
//TastenSteuerung
boolean[] taste = new boolean[4];
//textfelder
int state;
int state_ip;
//punktesystem
int points;
//MENU
PImage menu;
PImage x;
PImage y;
//berechnung von abstand player kugeln
float[] x_client = new float[100];
float[] y_client = new float[100];
//INGAME MENU

//STATUS Anzeige
int status = 0;
boolean menu_ingame = false;

//Musik
SoundFile Startmusik;
boolean soundon;
int buttonCooldown;

//SHOOTINGS
float playerRichtung_server;
float[] KugelRichtung_server = new float[50];
float[] KugelX_server = new float[50];
float[] KugelY_server = new float[50];
int nummer_server=0;
float mousepressed_server;

float playerRichtung_client;
float[] KugelX_client = new float[50];
float[] KugelY_client = new float[50];
float[] KugelRichtung_client = new float[50];
int nummer_client=0;
float mousepressed_client;
