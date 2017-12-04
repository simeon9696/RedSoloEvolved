/*
 * File:   newmain.c
 * Author: Simeon Ramjit & Ezekiel Cudjoe
 *
 * Created on November 28, 2017, 5:01 PM
 */

#include <p18f452.h>
#include <delays.h>
#include "xlcd.h"
#include "SST39SF040v2.h"
#include "standbypower.h"
#include "Dallas1822P.h"
#include <stdio.h>
#include <adc.h>
#include <stdlib.h>
#include <pwm.h>
#include <timers.h>

#pragma config WDT = OFF //Disable watchdog timer
#pragma config LVP = OFF //Disable low voltage programming

#define _XTAL_FREQ 4000000UL

#define encoderA_TRIS_PIN    TRISCbits.TRISC7
#define encoderB_TRIS_PIN    TRISCbits.TRISC6
#define encoderC_TRIS_PIN    TRISCbits.TRISC5
#define encoderD_TRIS_PIN    TRISCbits.TRISC4

#define encoderA_PIN         PORTCbits.RC7
#define encoderB_PIN         PORTCbits.RC6
#define encoderC_PIN         PORTCbits.RC5
#define encoderD_PIN         PORTCbits.RC4

#define speaker_HRV_TRIS_PIN TRISCbits.TRISC2
#define speaker_HRV_PIN      LATCbits.LATC2
#define C 0x65 //prescaler of 16
#define toneAmount 3

/********************Heartbeat Pins*****************/
#define HeartbeatLedIndicator_TRIS_PIN TRISDbits.TRISD3
#define HeartbeatLedIndicator_PIN LATDbits.LATD3

/*Heartbeat Variables*/
int heartBeats =0;
int allowCount=0;
char out[20];

int captureFlag=0;

/***********************KEYPAD VARIABLES***************************/
int portCValues=0;   
char keyPressed[20];
char displayOut[20];
    
//Temperature Global Variables//
char displayLCD[20];
char temperatureSign='0';
int temperatureInteger =0;
int temperatureFraction =0;
int temperatureFlag=0;
 
    
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
/**********************Keypad Functions**************************************/

void init_KeypadPins(){
    encoderA_TRIS_PIN=1;
    encoderB_TRIS_PIN=1;
    encoderC_TRIS_PIN=1;
    encoderD_TRIS_PIN=1;
    return;
}

void init_KeypadInterrupts(){
     INTCONbits.INT0IE = 1;
     INTCON2bits.INTEDG0 = 0;
}

void readAndDisplayKey(void){


    portCValues = 0;
    portCValues = portCValues | encoderA_PIN;
    portCValues = portCValues << 1;
    portCValues = portCValues | encoderB_PIN;
    portCValues = portCValues << 1;
    portCValues = portCValues | encoderC_PIN;
    portCValues = portCValues << 1;
    portCValues = portCValues | encoderD_PIN;
  
    switch (portCValues){
        case 0x00:
          sprintf(keyPressed,"1");
          break;
        case 0x01:
          sprintf(keyPressed,"4");
          break;
        case 0x03:
          sprintf(keyPressed,"7");
          break;
        case 0x02:
          sprintf(keyPressed,"*");
          break;
        case 0x04:
          sprintf(keyPressed,"2");
          break;
        case 0x05:
          sprintf(keyPressed,"5");
          break;
        case 0x07:
          sprintf(keyPressed,"8");
          break;
        case 0x06:
          sprintf(keyPressed,"0");
          break;
        case 0x08:
          sprintf(keyPressed,"3");
          break;
        case 0x09:
          sprintf(keyPressed,"6");
          break;
        case 0x0B:
          sprintf(keyPressed,"9");
          break;
        case 0x0A:
          sprintf(keyPressed,"#");
          break;
        case 0x0C:
          sprintf(keyPressed,"A");
          captureFlag=0;
          break;
        case 0x0D:
          sprintf(keyPressed,"B");
          break;
        case 0x0F:
          sprintf(keyPressed,"C");
          break;
        case 0x0E:
          sprintf(keyPressed,"D");
          break;
          
    }
        //sprintf(displayOut,"Key Pressed: %s",keyPressed);
        //while(BusyXLCD());
        //SetDDRamAddr(0x00); //Set cursor to top line
        //while(BusyXLCD());
       // Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
        //while(BusyXLCD());
        //putsXLCD(displayOut);  
    return;    
 } 

/********************Speaker Functions***************************************/
void playAlarmTone(void){
    int toneCount =0;
    speaker_HRV_TRIS_PIN = 0;
    SetDCPWM1(30);
    OpenTimer2(TIMER_INT_OFF & T2_PS_1_4 & T2_POST_1_1);

     for (toneCount=0; toneCount<toneAmount; toneCount++) {     //play x notes inside song array
      
      OpenPWM1(C); 
                               //set PWM frequency according to entries in song array
      Delay1KTCYx(400*2); //each note is played for 400ms*relative length

      OpenPWM1(1); 		//the PWM frequency set beyond audible range
                                //in order to create a short silence between notes
      Delay1KTCYx(255); 	//play nothing for 50 ms                  
      }
    CloseTimer2();
    ClosePWM1();
    return;
}

/**********************HeartBeat Functions***********************************/
void init_HeartbeatInterrupts(void){
    INTCONbits.TMR0IF = 0;          //Clear Timer0 Interrupt Flag
    INTCON2bits.TMR0IP = 0;          //Timer0 High Priority
    INTCONbits.TMR0IE = 1;          //Enable Timer0 Interrupt
    INTCON3bits.INT1IP = 0;
    INTCON2bits.INTEDG1 = 0;
    INTCON3bits.INT1IE = 1;
    return;
}

void init_HeartbeatPins(void){
     HeartbeatLedIndicator_TRIS_PIN=0;
     return;
}

void init_Timer0(void){
 
    OpenTimer0(TIMER_INT_ON & T0_16BIT & T0_SOURCE_INT & T0_PS_1_256);
    return;
}

void startHeartBeatSample(void){
    init_Timer0();
    init_HeartbeatPins();
    init_HeartbeatInterrupts();
    WriteTimer0(0x676A);            //Timer interrupts at 10s w/256 prescaler
    HeartbeatLedIndicator_PIN = 1;
    allowCount = 0;
    while(allowCount=0){}
    return;
}

void stopHeartBeatSample(void){
    allowCount=1;
    HeartbeatLedIndicator_PIN = 0;
    INTCON3bits.INT1IE = 0;
    CloseTimer0();
    
    if(allowCount==1){
    while(BusyXLCD());
    SetDDRamAddr(0x00); //Set cursor to top line
    while(BusyXLCD());
    Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
    while(BusyXLCD());
    heartBeats = (6*heartBeats);
    if(heartBeats>100){
        playAlarmTone();
    }
    sprintf(out,"Heartbeat:%dBPM",heartBeats);
    putsXLCD(out); 
    }
    heartBeats=0;
}

void heartBeatCount(void){
    if(allowCount==0){
    heartBeats++;
    while(BusyXLCD());
    SetDDRamAddr(0x00); //Set cursor to top line
    while(BusyXLCD());
    Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
    while(BusyXLCD());
    sprintf(out,"Heartbeat:%d",heartBeats);
    putsXLCD(out); 
    }    
    return;
 } 

/*******************Display Functions*****************************/
void displayWelcome(void){
    unsigned char micro = 0xE6;
    char displayMessageOne[20];
    char displayMessageTwo[20];
    sprintf(displayMessageOne,"PIC18 Pulse &");
    sprintf(displayMessageTwo,"Glucose Monitor");
    
    while(BusyXLCD());
    SetDDRamAddr(0x00); //Set cursor to top line
    while(BusyXLCD());
    Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
    while(BusyXLCD());
    putrsXLCD("Team Red Solo");
    
    while(BusyXLCD());
    SetDDRamAddr(0x40); //Set cursor to top line
    while(BusyXLCD());
    Delay1KTCYx(10); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
    while(BusyXLCD());
    putsXLCD(displayMessageOne);
    
    while(BusyXLCD());
    SetDDRamAddr(0x10); //Set cursor to top line
    while(BusyXLCD());
    Delay1KTCYx(10); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
    while(BusyXLCD());
    putsXLCD(displayMessageTwo);
    
    clearLCD();
    return;

}

void displayTemperature(void){
        startTempConvert();
        temperatureInteger= getTemperatureInteger();
        temperatureFraction = getTemperatureFraction();
        temperatureSign = getSign();
        if(temperatureInteger >= 40){
            playAlarmTone();
        }
        sprintf(displayLCD,"Temp: %c%d.%03d%cC",temperatureSign,temperatureInteger,temperatureFraction,degree);
        
        while(BusyXLCD());
        SetDDRamAddr(0x40); //Set cursor to top line
        while(BusyXLCD());
        Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
        while(BusyXLCD());
        putsXLCD(displayLCD); 
        return;
}

void displayMenu(void){
    while(BusyXLCD());
    SetDDRamAddr(0x00); //Set cursor to top line
    while(BusyXLCD());
    Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
    while(BusyXLCD());
    putrsXLCD("Select Option:");
    
    while(BusyXLCD());
    SetDDRamAddr(0x40); //Set cursor to top line
    while(BusyXLCD());
    Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
    while(BusyXLCD());
    putrsXLCD("A.) Capture Mode");
    
    while(BusyXLCD());
    SetDDRamAddr(0x10); //Set cursor to top line
    while(BusyXLCD());
    Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
    while(BusyXLCD());
    putrsXLCD("B.) View Mode");
    return;
}


void init_InterruptPriority(void){
    RCONbits.IPEN = 1;
    INTCONbits.GIEH=1;
    INTCONbits.GIEL=1;
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

/*********************Capture Mode**********************************/
void captureMode(void){
    startHeartBeatSample();
    displayTemperature();
    captureFlag=1;
    return;
}

/******************INTERRUPT THINGS******************/
void high_ISR(void);
void low_ISR(void);

#pragma code high_vector = 0x08
 void high_interrupt_vector(void){
     _asm 
     GOTO high_ISR
     _endasm
 }
#pragma code 
 
#pragma interrupt high_ISR
void high_ISR(void){
    INTCONbits.GIEH = 0;
    
    if(INTCONbits.INT0F==1){

        readAndDisplayKey();

        INTCONbits.INT0E = 1;
        INTCONbits.INT0F = 0;
     
    }
    
    if(INTCON3bits.INT2IF==1){
       INTCON3bits.INT2IE=0;
       
         setFlag();
         
       INTCON3bits.INT2IE = 1;
       INTCON3bits.INT2IF = 0;
       
    }
 

    INTCONbits.GIEH = 1;
    return;
}

#pragma code low_vector = 0x18
 void low_interrupt_vector(void){
     _asm 
     GOTO low_ISR
     _endasm
 }
#pragma code 
 
#pragma interruptlow low_ISR
void low_ISR(void){
    INTCONbits.GIEL = 0;
    
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
    INTCONbits.GIEL = 1;
}

void main(void) {
    
    init_StandbyPowerPins();
    init_StandbyPowerInterrupts();
    init_TempPins();
    init_KeypadPins();
    init_KeypadInterrupts();
    init_InterruptPriority();
    init_LCD();
    displayWelcome();
    displayMenu();

    
    
    while(1){

        
        if(portCValues==0x0C && captureFlag !=1){
            clearLCD();
            captureMode();
        }
        
        //if(portCValues==0x0D) && displayFlag !=0){
         //   clearLCD();
        //}
       checkFlag();
    }
    return;
}
