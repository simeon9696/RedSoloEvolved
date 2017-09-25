/*Lab 1 - Second File - ID number 815006344*/
#include <delays.h>
#include "xlcd.h"
#include <string.h>

/*Set configuration bits for use with the ICD 2*/
#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF

//Function Declaration
extern char getMapChar(); //function external to C file, defined in ASM file
extern void Mapname(void);

void DelayFor18TCY(void){
	Delay10TCYx(10);	
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


///Variable Declaration
unsigned int MapIndex;   //8-bit unsigned integer
char uP[7];              //8-indexed array to hold 8 char null terminated string

void main (void){

    Mapname();          //Initialize contents before retrieval 
    
    for (MapIndex = 0; MapIndex <8;MapIndex++){
	uP[MapIndex] = getMapChar(MapIndex);
    }                   //For loop to store initialized contents from registers
                        //in ASM file into char array in C file
    TRISD = 0x00;
    OpenXLCD(FOUR_BIT & LINES_5X7);
    Delay10KTCYx(10); 
    while (BusyXLCD());
    SetDDRamAddr(0x00);
    WriteCmdXLCD(0x06);
    putsXLCD(uP);
    Sleep();

    

}