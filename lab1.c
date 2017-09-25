/*Lab 1 first file - ID number 815006344*/
#include<p18f452.h>

/*Set configuration bits for use with ICD 2*/
#pragma config OSC = HS
#pragma config WDT = OFF
#pragma config LVP = OFF

int i=0;

void main (void){

    TRISB = 0x00;
    
    
    for(i=1; i<= 15;i++){
        PORTB = i;
    }

}