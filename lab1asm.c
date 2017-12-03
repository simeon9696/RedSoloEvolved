#include <p18f452.h>
#include <delays.h>
#include "xlcd.h"
#include <string.h>
#include <stdio.h>

//#pragma config OSC = HS
#pragma config WDT = OFF //Disable watchdog timer
//#pragma config LVP = OFF //Disable low voltage programming

unsigned int MapIndex = 0;
extern void intMapName(void);
extern char getMapChar(void);
extern char MapName;
char grpName[7];


#define _XTAL_FREQ 4000000UL

void DelayFor18TCY(void)
 {
 Delay10TCYx(2); //delays 20 cycles
 return;
 }
 /*****/
 void DelayPORXLCD(void)   // minimum 15ms
 {
 Delay100TCYx(0xA0);
 Delay100TCYx(0xA0); 
 Delay100TCYx(0xA0); 
 Delay100TCYx(0xA0);
   
 return;
 }
 /*****/
 void DelayXLCD(void)     // minimum 5ms
 {
 Delay100TCYx(0x50);      // 100TCY * 54
 Delay100TCYx(0x50);  
 Delay100TCYx(0x50);  

 return;
 }
 
void main(void){
    //char grpName[7] = "hello";
    
    intMapName();
    for(MapIndex=0;MapIndex<=6;MapIndex++){
        grpName[MapIndex] = getMapChar();
    }
    while(1){
       PORTD = 0X00;
       TRISD = 0x00;
    OpenXLCD(FOUR_BIT & LINES_5X7);
    while( BusyXLCD() );
    SetDDRamAddr(0x00);
    WriteCmdXLCD( SHIFT_DISP_LEFT );
    while( BusyXLCD() );
    WriteCmdXLCD( BLINK_ON );
    while( BusyXLCD() );
    putsXLCD(grpName);
    while( BusyXLCD() );
    Sleep(); 
    }
       
}