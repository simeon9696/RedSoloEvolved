#include <p18f452.h>
#include <delays.h>
#include "xlcd.h"
#include <string.h>
#include <stdio.h>
#include <adc.h>
#include <stdlib.h>
#include <float.h>
#include <pwm.h>
#include <timers.h> 



#pragma config WDT = OFF //Disable watchdog timer
#pragma config LVP = OFF //Disable low voltage programming

#define _XTAL_FREQ 4000000UL


 void DelayFor18TCY(void){
     Nop(); Nop(); Nop(); Nop(); 
     Nop(); Nop(); Nop(); Nop(); 
     Nop(); Nop(); Nop(); Nop(); 
     Nop(); Nop();
     return;
}

void DelayXLCD(void){
    Delay1KTCYx(5);	
    return;
}

void DelayPORXLCD(void){
    Delay1KTCYx(15);
    return;
}

void init_LCD(void){
    
    TRISD = 0x00;
    PORTD = 0x00;
    OpenXLCD(FOUR_BIT & LINES_5X7);
    while(BusyXLCD());
    SetDDRamAddr(0x00);
    WriteCmdXLCD( SHIFT_DISP_LEFT );
    while(BusyXLCD());
    WriteCmdXLCD( BLINK_ON );
    while(BusyXLCD());
    return;
 }


void readAndDisplayKey(void){

    int output;    
    char y[20];
    char out[20];
    output = 0;
    output = output | PORTCbits.RC7;
    output = output << 1;
    output = output | PORTCbits.RC6;
    output = output << 1;
    output = output | PORTCbits.RC5;
    output = output << 1;
    output = output | PORTCbits.RC4;
  
    switch (output){
        case 0x00:
          sprintf(y,"1");
          break;
        case 0x01:
          sprintf(y,"4");
          break;
        case 0x03:
          sprintf(y,"7");
          break;
        case 0x02:
          sprintf(y,"*");
          break;
        case 0x04:
          sprintf(y,"2");
          break;
        case 0x05:
          sprintf(y,"5");
          break;
        case 0x07:
          sprintf(y,"8");
          break;
        case 0x06:
          sprintf(y,"0");
          break;
        case 0x08:
          sprintf(y,"3");
          break;
        case 0x09:
          sprintf(y,"6");
          break;
        case 0x0B:
          sprintf(y,"9");
          break;
        case 0x0A:
          sprintf(y,"#");
          break;
        case 0x0C:
          sprintf(y,"A");
          break;
        case 0x0D:
          sprintf(y,"B");
          break;
        case 0x0F:
          sprintf(y,"C");
          break;
        case 0x0E:
          sprintf(y,"D");
          break;
          
    }
        
        while(BusyXLCD());
        SetDDRamAddr(0x00); //Set cursor to top line
        while(BusyXLCD());
        Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
        while(BusyXLCD());
        sprintf(out,"Key Pressed: %s",y);
        //sprintf(out,"%04x",output);
        putsXLCD(out);      
 } 

    
 
/******************INTERRUPT THINGS******************/
void high_ISR(void);
 
#pragma code high_vector = 0x08
 void high_interrupt_vector(void){
     _asm 
     GOTO high_ISR
     _endasm
 }
#pragma code 
 
#pragma interrupt high_ISR
void high_ISR(void){
    INTCONbits.GIE = 0;
    
    if(INTCONbits.INT0F==1){

     
     readAndDisplayKey();
     
     
     INTCONbits.INT0E = 0;
     INTCONbits.INT0F = 0;
     
    }
    INTCONbits.INT0E = 1;
    INTCONbits.GIE = 1;
    return;
}

/******************MAIN CODE******************/
 
 void main(){
     
    TRISCbits.RC7=1;
    TRISCbits.RC6=1;
    TRISCbits.RC5=1;
    TRISCbits.RC4=1;
     INTCONbits.GIE = 1;
     INTCONbits.INT0IE = 1;
     INTCON2bits.INTEDG0 = 0;
     init_LCD();
     while(1){}
 }
