/* 
 * File:   heartbeat.h
 * Author: Simeon Ramjit & Ezekiel Cudjoe
 *
 * Created on November 29, 2017, 12:43 AM
 */

#ifndef HEARTBEAT_H
#define	HEARTBEAT_H

#include <p18f452.h>
#include <delays.h>
#include "xlcd.h"
#include <stdio.h>
#include <stdlib.h>
#include <timers.h>

#define HeartbeatLedIndicator_TRIS_PIN TRISDbits.TRISD3
#define HeartbeatLedIndicator_PIN LATDbits.LATD3
/*************Global Variable Declarations*********************/

int heartBeats =0;
int allowCount=0;
char out[20];

/*********************Function Definitions*************************/

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
    init_HeartbeatInterrupts();
    WriteTimer0(0x676A);            //Timer interrupts at 10s w/256 prescaler
    HeartbeatLedIndicator_PIN = 1;
    allowCount = 0;

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

#endif	/* HEARTBEAT_H */

