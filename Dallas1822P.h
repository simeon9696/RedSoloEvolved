/* 
 * File:   Dallas1822P.h
 * Author: Ezekiel Cudjoe & Simeon Ramjit
 *
 * Created on November 28, 2017, 8:33 PM
 */

#ifndef DALLAS1822P_H
#define	DALLAS1822P_H

#include <p18f452.h>
#include <delays.h>
#include "xlcd.h"
#include <stdio.h>
#include <stdlib.h>
#include "ow.h"
#include <string.h>

#define  TRANSISTOR_TRIS_PIN TRISBbits.TRISB3
#define  TRANSISTOR_PIN LATBbits.LATB3   

unsigned char TempMSB;
unsigned char TempLSB;
unsigned int MSBTemporary = 0;
unsigned int LSBTemporary =0;
unsigned int TempInt = 0;
unsigned char degree = 0xDF;
float fracFloat = 0.0000;
int sign = 0;
int fracInt =0;
int x = 0;
char Temperature[20];
char displaySign=0;

void init_TempPins(void){
    TRANSISTOR_TRIS_PIN =0;
}

void startTempConvert(void){
        TempInt = 0;
        fracInt= 0;
        fracFloat =0.0;
        
        ow_reset();  //reset 1822P
        ow_write_byte(0xCC); // Skip ROM Check
        ow_write_byte(0x44); //Temperature conversion 
        TRANSISTOR_PIN = 1;  //Strong pullup to provide current that parasitic capacitance can't provide
        
         for(x = 1; x<=8;x++){ //800ms (750ms is recommended conversion time))
           Delay1KTCYx(100);
        }
        
        TRANSISTOR_PIN = 0; //Turn off strong pullup
        //Read Dallas 1822P
        ow_reset(); //reset device
        ow_write_byte(0xCC); //skip ROM check
        ow_write_byte(0xBE); //Send read scratchpad on 1822P
        TempLSB = ow_read_byte(); //Read first byte, LS and store in TempLSB
        TempMSB = ow_read_byte(); //Read first byte, MS and store in TempMSB
        //Really don't care about the other bytes, stop reading and prep data for LCD
        
        
        //Acquire Integer
        LSBTemporary = TempLSB >> 4; 
        MSBTemporary = TempMSB << 4;
        TempInt = MSBTemporary | LSBTemporary;
        
        //Acquire Fraction
        if(TempLSB & 0x01){fracFloat += 0.0625;}
        if(TempLSB & 0x02){fracFloat += 0.125;}
        if(TempLSB & 0x04){fracFloat += 0.25;}
        if(TempLSB & 0x08){fracFloat += 0.5;}
        fracInt =fracFloat*1000;

        //Sign check
        sign = ((TempMSB >> 3 )& 0x3F);
        if(sign == 0){
            displaySign = '+';

        }
        else{
            displaySign = '-';

        }
        return;
}

int getTemperatureInteger(void){
    return TempInt;
}

int getTemperatureFraction(void){
    return fracInt;
}
char getSign(void){
    return displaySign;
}
#endif	/* DALLAS1822P_H */

