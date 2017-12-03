#include <p18f452.h>
#include <delays.h>
#include "xlcd.h"
#include <stdio.h>
#include <stdlib.h>

#define    POWER_PIN_TRIS    TRISBbits.TRISB2
#define    SHUTDOWN_PIN_TRIS TRISBbits.TRISB7

#define    POWER_PIN         PORTBbits.RB2
#define    SHUTDOWN_PIN      LATBbits.LATB7

#pragma config WDT = OFF //Disable watchdog timer
#pragma config LVP = OFF //Disable low voltage programming

#define _XTAL_FREQ 4000000UL

int powerFlag =0;
int count = 0;
int counter = 0;
char out[20];

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

void shutDownSequence(void){
    char shutdown[20];
        while(BusyXLCD());
        SetDDRamAddr(0x40); //Set cursor to top line
        while(BusyXLCD());
        Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
        while(BusyXLCD());
        putrsXLCD("Power disconnected...");
        for(count = 5; count >=1; count--){
            sprintf(shutdown,"Shutdown in:  %ds",count);
            while(BusyXLCD());
            SetDDRamAddr(0x50); //Set cursor to top line
            while(BusyXLCD());
            Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
            while(BusyXLCD());
            putsXLCD(shutdown);
            Delay1KTCYx(200);
            Delay1KTCYx(200);
            Delay1KTCYx(200);
            Delay1KTCYx(200);
            Delay1KTCYx(200);
            while(BusyXLCD());
            SetDDRamAddr(0x50); //Set cursor to top line
            while(BusyXLCD());
            putrsXLCD("                    ");
        }
        SHUTDOWN_PIN =1;
   return;
}

void setFlag(void){
    if(POWER_PIN==0){
        powerFlag=1;
    }
    if(POWER_PIN==1){
        powerFlag=0;
    }
    return;
}

void checkFlag(void){
    if(powerFlag==1){
        shutDownSequence();
    }
    return;
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
    
    if(INTCON3bits.INT2IF==1){
       INTCON3bits.INT2IE=0;
       
         setFlag();
     
       INTCON3bits.INT2IF = 0;
       INTCON3bits.INT2IE = 1;
    }
    
    INTCONbits.GIE = 1;
    return;
}

void init_StandbyPowerPins(void){
    POWER_PIN_TRIS = 1;
    SHUTDOWN_PIN_TRIS = 0;
    SHUTDOWN_PIN =0;
    return;
}

void init_StandbyPowerInterrupts(void){
    RCONbits.IPEN = 1;              //Enable Priority Levels
    INTCON3bits.INT2IP = 1;
    INTCON2bits.INTEDG2 = 0;
    INTCON3bits.INT2IE = 1;
    INTCONbits.GIE = 1;
    return;
}
void main (void){
    
    init_StandbyPowerPins();
    init_StandbyPowerInterrupts();
    init_LCD();
 
    while(1){
        while(BusyXLCD());
        SetDDRamAddr(0x00); //Set cursor to top line
        while(BusyXLCD());
        Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
        while(BusyXLCD());
        sprintf(out,"Count Value %d",counter);
        putsXLCD(out); 
        counter++;
        
        checkFlag();
    }
}