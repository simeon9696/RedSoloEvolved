/* 
 * File:   keypad.h
 * Author: Simeon Ramjit & Ezekiel Cudjoe
 *
 * Created on November 28, 2017, 9:40 PM
 */

#ifndef KEYPAD_H
#define	KEYPAD_H

#define encoderA_TRIS_PIN    TRISCbits.TRISC7
#define encoderB_TRIS_PIN    TRISCbits.TRISC6
#define encoderC_TRIS_PIN    TRISCbits.TRISC5
#define encoderD_TRIS_PIN    TRISCbits.TRISC4

#define encoderA_PIN         PORTCbits.RC7
#define encoderB_PIN         PORTCbits.RC6
#define encoderC_PIN         PORTCbits.RC5
#define encoderD_PIN         PORTCbits.RC4

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
    int portCValues=0;   
    char keyPressed[20];
    char displayOut[20];

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
           //displayTemperature();
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

#endif	/* KEYPAD_H */

