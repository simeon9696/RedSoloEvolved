#include <p18f452.h>
#include <delays.h>
#include "xlcd.h"
#include <stdio.h>
#include <stdlib.h>
#include <timers.h>
#include <capture.h>
#include <math.h>

#pragma config OSC = HS
#pragma config WDT = OFF //Disable watchdog timer
#pragma config LVP = OFF //Disable low voltage programming

#define _XTAL_FREQ 4000000UL


/*************Global Variable Declarations*********************/

int value1 = 0, value2 = 0;//variables to store captured time values
int risingedge = 0;
int interval = 0;
int count=0,overflow=0;
int lastval =0;
int x;
int flag = 0;
int nn=0, nn50=0;//interval counters
float hrv =0;
char output[20];

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

void init_Timer1(void){
    //Configure Timer1 for Capture Mode
    OpenTimer1 (TIMER_INT_ON & T1_16BIT_RW & T1_PS_1_1 & T1_OSC1EN_OFF & T1_SYNC_EXT_OFF & T1_SOURCE_INT & T1_SOURCE_CCP ); 
    OpenCapture1 (CAPTURE_INT_ON & C1_EVERY_RISE_EDGE); //Configure capture mode to interrupt on every rising edge
}

void outputHRV(void){
    //Display HRV reading on LCD
    sprintf(output,"HRV: %d",hrv);  
    while(BusyXLCD()); 
    SetDDRamAddr( 0x00 );
    putsXLCD(output);
    Delay1KTCYx(10);
}


 
/******************INTERRUPTS******************/

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
    
    float temp_val = 0;
    if(PIR1bits.TMR1IF==1){
        PIR1bits.TMR1IF=0;//Clear flag
        overflow++;
    } 
    if(PIR1bits.CCP1IF==1){  
       
        PIR1bits.CCP1IF = 0;  
        if(risingedge == 0)
        {
            if (x == 0)
            {
                value1 = ReadCapture1();//Store value
            }
            else
            {
                value2 = ReadCapture1();//Store value
            }
        }
        else if ( (risingedge == 1) && (x == 0))
        {
            value2 = ReadCapture1();   
        }
        risingedge++;
        if( (risingedge > 1) || (x == 1))
        {
            x = 1;
            interval = 65535*overflow + (value2 - value1);//calculate interval
            nn++;
            lastval = value2;
            value1 = lastval;
            temp_val = interval/1000;
            
            if(temp_val > 50){
                nn50++;
                PORTDbits.RD3 = !PORTDbits.RD3;//Toggle pin
            }
            risingedge = 0;
            if(nn == 10)
            {
                //Calculate HRV 
                hrv = ((float)nn50/(float)10)*100;               
                flag = 1;
                
                CloseCapture1();
                CloseTimer1();
            }   
        }      
    }   
    return;
}

/******************MAIN CODE******************/
 
 void main(){
    
    init_LCD(); //initialise LCD
     
    RCONbits.IPEN = 1;    //Enable Priority Levels 
    IPR1bits.CCP1IP = 1;  //Set CCPIP interrupt to high priority
    PIR1bits.CCP1IF = 0;  //Clear CCP1 Interrupt Flag   
    IPR1bits.TMR1IP = 1;  //Set Timer1 interrupt to high priority
    PIE1bits.TMR1IE = 1;  //Enable Timer1 Interrupt 
    PIR1bits.TMR1IF=0;    //Clear Timer1 Interrupt Flag 
    INTCONbits.GIEH= 1;   //Enable global high priority interrupts
    
    TRISDbits.RD3 = 0;    //Configure RD3 pin for output
    PORTDbits.RD7 = 0;    //Set RD3 pin low    
    TRISCbits.RC2 = 1;    //Configure RC2 as an input pin
     
    init_Timer1(); //Initialize Timer
     
    while(1)
    {
        if (flag ==1)
        {
            outputHRV();
        }
    }
    
 }
