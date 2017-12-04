/* 
 * File:   standbypower.h
 * Author: fudge
 *
 * Created on November 28, 2017, 5:25 PM
 */

#ifndef STANDBYPOWER_H
#define	STANDBYPOWER_H

#include <p18f452.h>
#include <delays.h>
#include "xlcd.h"
#include <stdio.h>
#include <stdlib.h>

#define    POWER_PIN_TRIS    TRISBbits.TRISB2
#define    SHUTDOWN_PIN_TRIS TRISBbits.TRISB7

#define    POWER_PIN         PORTBbits.RB2
#define    SHUTDOWN_PIN      LATBbits.LATB7

int powerFlag =0;
int count = 0;
int counter = 0;
char out[20];

void shutDownSequence(void){
    char shutdown[20];
        while(BusyXLCD());
        SetDDRamAddr(0x50); //Set cursor to top line
        while(BusyXLCD());
        Delay1KTCYx(110); //Give time for LCD to refresh, writing to it too quickly causes flicker issues
        while(BusyXLCD());
        Delay1KTCYx(110);
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

void init_StandbyPowerPins(void){
    POWER_PIN_TRIS = 1;
    SHUTDOWN_PIN_TRIS = 0;
    SHUTDOWN_PIN =0;
    return;
}

void init_StandbyPowerInterrupts(void){
    INTCON3bits.INT2IP = 1;
    INTCON2bits.INTEDG2 = 0;
    INTCON3bits.INT2IE = 1;
    return;
}
#endif	/* STANDBYPOWER_H */

