#line 1 "F:/clases virtual de pic/PIC16F1709/PIC16F1709_LED - luz intermiente/PIC16F1709_LED.c"




void main() {
 ANSELA = 0x00;
 WPUA = 0x00;
 ODA1_bit = 0x00;
 ODA2_bit = 0x00;
 ODA5_bit = 0x00;
 OSCCON = 0x7B;
 TRISA = 0x19;
 LATA = 0x00;


 for(;;){

 RA1_bit = 0x00;
 RA2_bit = 0x01;
 delay_ms(100);
 RA1_bit = 0x01;
 RA2_bit = 0x02;
 delay_ms(100);
 }
}
