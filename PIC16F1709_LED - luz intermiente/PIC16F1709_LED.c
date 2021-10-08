



void main() {
  ANSELA = 0x00;  // seleciones I/O digitales del bloque A
  WPUA = 0x00;   // desactiva todos los pull-up del bloque A
  ODA1_bit = 0x00; // push-pull en la salida
  ODA2_bit = 0x00; // push-pull
  ODA5_bit = 0x00; // push-pull
  OSCCON = 0x7B;  // [0111 1011] Selecciona Oscilador Interno 16 MHz
  TRISA = 0x19; //(RA3 siempre input, RA0,RA4 input)-> [0001 1001]
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