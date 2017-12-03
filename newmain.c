#include <p18f452.h>
#include <delays.h>
#include "xlcd.h"
#include <stdio.h>
#include <stdlib.h>
#include <timers.h>



#pragma config WDT = OFF //Disable watchdog timer
#pragma config LVP = OFF //Disable low voltage programming

#define _XTAL_FREQ 4000000UL

/*************Global Variable Declarations*********************/

int heartBeats =0;
int allowCount=0;
char out[20];

/*********************Function Declarations*************************/
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
     
    PORTD = 0x00;
    TRISD = 0x00;
    OpenXLCD(FOUR_BIT & LINES_5X7);
    while(BusyXLCD());
    SetDDRamAddr(0x00);
    WriteCmdXLCD( SHIFT_DISP_LEFT );
    while(BusyXLCD());
    WriteCmdXLCD( BLINK_ON );
    while(BusyXLCD());
    return;
 }

void init_Timer0(void){
 
    OpenTimer0(TIMER_INT_ON & T0_16BIT & T0_SOURCE_INT & T0_PS_1_256);
}

void startHeartBeatSample(void){
    
    INTCONbits.TMR0IE = 1;          //Enable Timer0 Interrupt
    INTCONbits.TMR0IF = 0;          //Clear Timer0 Interrupt Flag
    INTCON2bits.TMR0IP = 1;          //Timer0 High Priority
    WriteTimer0(0x676A);            //Timer interrupts at 10s w/256 prescaler
    //WriteTimer0(57224); 
    TRISDbits.RD3 = 0;
    PORTDbits.RD3 =1;
    allowCount = 0;

}

void stopHeartBeatSample(void){
    allowCount=1;
    PORTDbits.RD3 =0;
    INTCON3bits.INT1IE = 0;
    CloseTimer0();
    
    if(allowCount==1){
    while(BusyXLCD());
    SetDDRamAddr(0x00); //Set cursor to top line
    while(BusyXLCD());
    Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
    while(BusyXLCD());
    heartBeats = (6*heartBeats);
    sprintf(out,"Heartbeat:%d BPM",heartBeats);
    putsXLCD(out); 
    }
}

void heartBeatCount(void){

    if(allowCount==0){
    heartBeats++;
    while(BusyXLCD());
    SetDDRamAddr(0x00); //Set cursor to top line
    while(BusyXLCD());
    Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
    while(BusyXLCD());
    sprintf(out,"Heartbeat: %d",heartBeats);
    putsXLCD(out); 
    }    
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
    
    if(INTCON3bits.INT1IF==1){
        INTCON3bits.INT1IE = 0;
        heartBeatCount();
        INTCON3bits.INT1IF = 0;
        INTCON3bits.INT1IE = 1;
    }
    
    if(INTCONbits.TMR0IF==1){
        INTCONbits.TMR0IE= 0;
        stopHeartBeatSample();
        INTCONbits.TMR0IF==0;
    }
    INTCONbits.GIE = 1;
    return;
}

/******************MAIN CODE******************/
 
 void main(){
     init_LCD();
     init_Timer0();
     RCONbits.IPEN = 1;              //Enable Priority Levels
     INTCON3bits.INT1IP = 1;
     INTCON2bits.INTEDG1 = 0;
     INTCON3bits.INT1IE = 1;
     INTCONbits.GIE = 1;

     startHeartBeatSample();
     while(1){}
 }
