#include <dht.h>

dht DHT;

#define DHT11_PIN 7

/*************************************************** 
  This is a example sketch demonstrating graphic drawing
  capabilities of the SSD1351 library for the 1.5" 
  and 1.27" 16-bit Color OLEDs with SSD1351 driver chip

  Pick one up today in the adafruit shop!
  ------> http://www.adafruit.com/products/1431
  ------> http://www.adafruit.com/products/1673
 
  If you're using a 1.27" OLED, change SCREEN_HEIGHT to 96 instead of 128.

  These displays use SPI to communicate, 4 or 5 pins are required to  
  interface
  Adafruit invests time and resources providing this open source code, 
  please support Adafruit and open-source hardware by purchasing 
  products from Adafruit!

  Written by Limor Fried/Ladyada for Adafruit Industries.  
  BSD license, all text above must be included in any redistribution

  The Adafruit GFX Graphics core library is also required
  https://github.com/adafruit/Adafruit-GFX-Library
  Be sure to install it!
 ****************************************************/

// Screen dimensions
#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT 128 // Change this to 96 for 1.27" OLED.

// You can use any (4 or) 5 pins 
#define SCLK_PIN 2
#define MOSI_PIN 3
#define DC_PIN   4
#define CS_PIN   5
#define RST_PIN  6

// Color definitions
#define  BLACK           0x0000
#define BLUE            0x001F
#define RED             0xF800
#define GREEN           0x07E0
#define CYAN            0x07FF
#define MAGENTA         0xF81F
#define YELLOW          0xFFE0  
#define WHITE           0xFFFF

#include <Adafruit_GFX.h>
#include <Adafruit_SSD1351.h>
#include <SPI.h>

// Option 1: use any pins but a little slower
Adafruit_SSD1351 tft = Adafruit_SSD1351(SCREEN_WIDTH, SCREEN_HEIGHT, CS_PIN, DC_PIN, MOSI_PIN, SCLK_PIN, RST_PIN);  

// Option 2: must use the hardware SPI pins 
// (for UNO thats sclk = 13 and sid = 11) and pin 10 must be 
// an output. This is much faster - also required if you want
// to use the microSD card (see the image drawing example)
//Adafruit_SSD1351 tft = Adafruit_SSD1351(SCREEN_WIDTH, SCREEN_HEIGHT, &SPI, CS_PIN, DC_PIN, RST_PIN);

float p = 3.1415926;

int INA = 9; 
int INB = 8;

void setup(){
  Serial.begin(9600);
  //Serial.print("hello!");
  tft.begin();

  //Serial.println("init");

  // You can optionally rotate the display by running the line below.
  // Note that a value of 0 means no rotation, 1 means 90 clockwise,
  // 2 means 180 degrees clockwise, and 3 means 270 degrees clockwise.
  //tft.setRotation(1);
  // NOTE: The test pattern at the start will NOT be rotated!  The code
  // for rendering the test pattern talks directly to the display and
  // ignores any rotation.

  
  uint16_t time = millis();
  tft.fillRect(0, 0, 128, 128, BLACK);
  time = millis() - time;

pinMode(INA,OUTPUT); 
pinMode(INB,OUTPUT); 
  
}

void loop(){
  int chk = DHT.read11(DHT11_PIN);
  Serial.print("Temperature = ");
  Serial.println(DHT.temperature);
  Serial.print("Humidity = ");
  Serial.println(DHT.humidity);
  int temp = 70;
  temp = temp - DHT.temperature;
  tft.fillScreen(BLACK);
  tft.setCursor(0, 5);
  tft.setRotation(2);
  tft.setTextColor(RED);  
  tft.setTextSize(2);
  tft.println("Temp: ");
  tft.println(temp);
  tft.setTextColor(BLUE);
  tft.println("DHT Temp: ");
  tft.println(DHT.temperature);
  tft.setTextColor(GREEN);
  tft.println("Humidity: ");
  tft.println(DHT.humidity);
  //tft.println("Seconds of Fan Delay: ");
  //tft.println(DHT.humidity/10);
  //analogWrite(INA, 0);
  //analogWrite(INB,100);
  //digitalWrite(INA,255);
  //digitalWrite(INB,0); 
  delay(300);
  
  /*
  analogWrite(INA, HIGH);
  analogWrite(INB,LOW);
  delay(DHT.humidity*100);
  analogWrite(INA, LOW);
  analogWrite(INB,LOW);
  delay(DHT.humidity*100);
  
  
  if(DHT.humidity > 25){
    analogWrite(INA, 255);
    analogWrite(INB, 0);
  }
  if(DHT.humidity > 15){
    analogWrite(INA, 100);
    analogWrite(INB, 0);
  }
  else {
    analogWrite(INA, 0);
    analogWrite(INB, 0);
  }
  */
}
