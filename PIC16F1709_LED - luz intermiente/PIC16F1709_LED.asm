
_main:

;PIC16F1709_LED.c,5 :: 		void main() {
;PIC16F1709_LED.c,6 :: 		ANSELA = 0x00;  // seleciones I/O digitales del bloque A
	CLRF       ANSELA+0
;PIC16F1709_LED.c,7 :: 		WPUA = 0x00;   // desactiva todos los pull-up del bloque A
	CLRF       WPUA+0
;PIC16F1709_LED.c,8 :: 		ODA1_bit = 0x00; // push-pull en la salida
	BCF        ODA1_bit+0, BitPos(ODA1_bit+0)
;PIC16F1709_LED.c,9 :: 		ODA2_bit = 0x00; // push-pull
	BCF        ODA2_bit+0, BitPos(ODA2_bit+0)
;PIC16F1709_LED.c,10 :: 		ODA5_bit = 0x00; // push-pull
	BCF        ODA5_bit+0, BitPos(ODA5_bit+0)
;PIC16F1709_LED.c,11 :: 		OSCCON = 0x7B;  // [0111 1011] Selecciona Oscilador Interno 16 MHz
	MOVLW      123
	MOVWF      OSCCON+0
;PIC16F1709_LED.c,12 :: 		TRISA = 0x19; //(RA3 siempre input, RA0,RA4 input)-> [0001 1001]
	MOVLW      25
	MOVWF      TRISA+0
;PIC16F1709_LED.c,13 :: 		LATA = 0x00;
	CLRF       LATA+0
;PIC16F1709_LED.c,16 :: 		for(;;){
L_main0:
;PIC16F1709_LED.c,18 :: 		RA1_bit = 0x00;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;PIC16F1709_LED.c,19 :: 		RA2_bit = 0x01;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;PIC16F1709_LED.c,20 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_main3:
	DECFSZ     R13, 1
	GOTO       L_main3
	DECFSZ     R12, 1
	GOTO       L_main3
	DECFSZ     R11, 1
	GOTO       L_main3
;PIC16F1709_LED.c,21 :: 		RA1_bit = 0x01;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;PIC16F1709_LED.c,22 :: 		RA2_bit = 0x02;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;PIC16F1709_LED.c,23 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_main4:
	DECFSZ     R13, 1
	GOTO       L_main4
	DECFSZ     R12, 1
	GOTO       L_main4
	DECFSZ     R11, 1
	GOTO       L_main4
;PIC16F1709_LED.c,24 :: 		}
	GOTO       L_main0
;PIC16F1709_LED.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
