
_display:

;MyProject2.c,4 :: 		void display(char p, char c)
;MyProject2.c,6 :: 		PORTA &= 0b11110000; //liniile de sel. digit - oprite
	IN         R16, PORTA+0
	ANDI       R16, 240
	OUT        PORTA+0, R16
;MyProject2.c,7 :: 		PORTC &= 0b00000000; //liniile de sel. Seg. - oprite
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;MyProject2.c,8 :: 		switch(c){
	JMP        L_display0
;MyProject2.c,9 :: 		case 0:
L_display2:
;MyProject2.c,10 :: 		PORTC |= 0b00111111;break;//codificare cifra 0
	IN         R16, PORTC+0
	ORI        R16, 63
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,11 :: 		case 1:
L_display3:
;MyProject2.c,12 :: 		PORTC |= 0b00000110;break;
	IN         R16, PORTC+0
	ORI        R16, 6
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,13 :: 		case 2:
L_display4:
;MyProject2.c,14 :: 		PORTC |=0b01011011;break;
	IN         R16, PORTC+0
	ORI        R16, 91
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,15 :: 		case 3:
L_display5:
;MyProject2.c,16 :: 		PORTC |=0b01001111;break;
	IN         R16, PORTC+0
	ORI        R16, 79
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,17 :: 		case 4:
L_display6:
;MyProject2.c,18 :: 		PORTC |=0b01100110;break;
	IN         R16, PORTC+0
	ORI        R16, 102
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,19 :: 		case 5:
L_display7:
;MyProject2.c,20 :: 		PORTC |=0b01101101;break;
	IN         R16, PORTC+0
	ORI        R16, 109
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,21 :: 		case 6:
L_display8:
;MyProject2.c,22 :: 		PORTC |=0b01111100;break;
	IN         R16, PORTC+0
	ORI        R16, 124
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,23 :: 		case 7:
L_display9:
;MyProject2.c,24 :: 		PORTC |=0b00000111;break;
	IN         R16, PORTC+0
	ORI        R16, 7
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,25 :: 		case 8:
L_display10:
;MyProject2.c,26 :: 		PORTC |=0b01111111;break;
	IN         R16, PORTC+0
	ORI        R16, 127
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,27 :: 		case 9:
L_display11:
;MyProject2.c,28 :: 		PORTC |=0b01101111;break;
	IN         R16, PORTC+0
	ORI        R16, 111
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,29 :: 		case 10:
L_display12:
;MyProject2.c,30 :: 		PORTC |=0b01110110;break; //H
	IN         R16, PORTC+0
	ORI        R16, 118
	OUT        PORTC+0, R16
	JMP        L_display1
;MyProject2.c,32 :: 		}
L_display0:
	LDI        R27, 0
	CP         R3, R27
	BRNE       L__display96
	JMP        L_display2
L__display96:
	LDI        R27, 1
	CP         R3, R27
	BRNE       L__display97
	JMP        L_display3
L__display97:
	LDI        R27, 2
	CP         R3, R27
	BRNE       L__display98
	JMP        L_display4
L__display98:
	LDI        R27, 3
	CP         R3, R27
	BRNE       L__display99
	JMP        L_display5
L__display99:
	LDI        R27, 4
	CP         R3, R27
	BRNE       L__display100
	JMP        L_display6
L__display100:
	LDI        R27, 5
	CP         R3, R27
	BRNE       L__display101
	JMP        L_display7
L__display101:
	LDI        R27, 6
	CP         R3, R27
	BRNE       L__display102
	JMP        L_display8
L__display102:
	LDI        R27, 7
	CP         R3, R27
	BRNE       L__display103
	JMP        L_display9
L__display103:
	LDI        R27, 8
	CP         R3, R27
	BRNE       L__display104
	JMP        L_display10
L__display104:
	LDI        R27, 9
	CP         R3, R27
	BRNE       L__display105
	JMP        L_display11
L__display105:
	LDI        R27, 10
	CP         R3, R27
	BRNE       L__display106
	JMP        L_display12
L__display106:
L_display1:
;MyProject2.c,33 :: 		switch(p){
	JMP        L_display13
;MyProject2.c,34 :: 		case 1:
L_display15:
;MyProject2.c,35 :: 		PORTA |= 0b00001000;break;//activare digit 1
	IN         R27, PORTA+0
	SBR        R27, 8
	OUT        PORTA+0, R27
	JMP        L_display14
;MyProject2.c,36 :: 		case 2:
L_display16:
;MyProject2.c,37 :: 		PORTA |= 0b00000100;break;//activare digit 2
	IN         R16, PORTA+0
	ORI        R16, 4
	OUT        PORTA+0, R16
	JMP        L_display14
;MyProject2.c,38 :: 		case 3:
L_display17:
;MyProject2.c,39 :: 		PORTA |=0b00000010;break;
	IN         R16, PORTA+0
	ORI        R16, 2
	OUT        PORTA+0, R16
	JMP        L_display14
;MyProject2.c,40 :: 		case 4:
L_display18:
;MyProject2.c,41 :: 		PORTA |=0b00000001;break;
	IN         R16, PORTA+0
	ORI        R16, 1
	OUT        PORTA+0, R16
	JMP        L_display14
;MyProject2.c,42 :: 		}
L_display13:
	LDI        R27, 1
	CP         R2, R27
	BRNE       L__display107
	JMP        L_display15
L__display107:
	LDI        R27, 2
	CP         R2, R27
	BRNE       L__display108
	JMP        L_display16
L__display108:
	LDI        R27, 3
	CP         R2, R27
	BRNE       L__display109
	JMP        L_display17
L__display109:
	LDI        R27, 4
	CP         R2, R27
	BRNE       L__display110
	JMP        L_display18
L__display110:
L_display14:
;MyProject2.c,44 :: 		}
L_end_display:
	RET
; end of _display

_init_timer:

;MyProject2.c,46 :: 		void init_timer(){
;MyProject2.c,48 :: 		TCCR0 = 0b00001011; //CTC-3,6; Prescaler-0,1,2
	LDI        R27, 11
	OUT        TCCR0+0, R27
;MyProject2.c,49 :: 		TCNT0 = 0;
	LDI        R27, 0
	OUT        TCNT0+0, R27
;MyProject2.c,50 :: 		OCR0 = 125;
	LDI        R27, 125
	OUT        OCR0+0, R27
;MyProject2.c,51 :: 		TIMSK |= 0b00000010;
	IN         R27, TIMSK+0
	SBR        R27, 2
	OUT        TIMSK+0, R27
;MyProject2.c,52 :: 		}
L_end_init_timer:
	RET
; end of _init_timer

_Timer0_ISR:
	PUSH       R30
	PUSH       R31
	PUSH       R27
	IN         R27, SREG+0
	PUSH       R27

;MyProject2.c,54 :: 		void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP
;MyProject2.c,56 :: 		if(go==0)  //populare vector
	PUSH       R2
	PUSH       R3
	LDS        R16, _go+0
	CPI        R16, 0
	BREQ       L__Timer0_ISR113
	JMP        L_Timer0_ISR19
L__Timer0_ISR113:
;MyProject2.c,58 :: 		for(i=0;i<dif;i++)
	LDI        R27, 0
	STS        _i+0, R27
L_Timer0_ISR20:
	LDS        R17, _i+0
	LDS        R16, _dif+0
	CP         R17, R16
	BRLO       L__Timer0_ISR114
	JMP        L_Timer0_ISR21
L__Timer0_ISR114:
;MyProject2.c,60 :: 		r=rand()%8;
	CALL       _rand+0
	LDI        R20, 8
	LDI        R21, 0
	CALL       _Div_16x16_S+0
	MOVW       R16, R24
	STS        _r+0, R16
;MyProject2.c,61 :: 		if(r>6)
	LDI        R18, 6
	CP         R18, R16
	BRLO       L__Timer0_ISR115
	JMP        L_Timer0_ISR23
L__Timer0_ISR115:
;MyProject2.c,63 :: 		r%=10;
	LDS        R16, _r+0
	LDI        R20, 10
	CALL       _Div_8x8_U+0
	MOV        R16, R25
	STS        _r+0, R16
;MyProject2.c,64 :: 		}
L_Timer0_ISR23:
;MyProject2.c,65 :: 		led[i]=r;
	LDI        R17, #lo_addr(_led+0)
	LDI        R18, hi_addr(_led+0)
	LDS        R16, _i+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R17
	ADC        R31, R18
	LDS        R16, _r+0
	ST         Z, R16
;MyProject2.c,66 :: 		PORTD |= (1<<led[i]); //aprindere led
	LDI        R17, #lo_addr(_led+0)
	LDI        R18, hi_addr(_led+0)
	LDS        R16, _i+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R17
	ADC        R31, R18
	LD         R16, Z
	MOV        R27, R16
	LDI        R17, 1
	TST        R27
	BREQ       L__Timer0_ISR117
L__Timer0_ISR116:
	LSL        R17
	DEC        R27
	BRNE       L__Timer0_ISR116
L__Timer0_ISR117:
	IN         R16, PORTD+0
	OR         R16, R17
	OUT        PORTD+0, R16
;MyProject2.c,67 :: 		if(delay==0) delay_ms(50);
	LDS        R16, _delay+0
	LDS        R17, _delay+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR118
	CPI        R16, 0
L__Timer0_ISR118:
	BREQ       L__Timer0_ISR119
	JMP        L_Timer0_ISR24
L__Timer0_ISR119:
	LDI        R18, 3
	LDI        R17, 138
	LDI        R16, 86
L_Timer0_ISR25:
	DEC        R16
	BRNE       L_Timer0_ISR25
	DEC        R17
	BRNE       L_Timer0_ISR25
	DEC        R18
	BRNE       L_Timer0_ISR25
	NOP
	NOP
L_Timer0_ISR24:
;MyProject2.c,68 :: 		if(delay==1) delay_ms(45);
	LDS        R16, _delay+0
	LDS        R17, _delay+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR120
	CPI        R16, 1
L__Timer0_ISR120:
	BREQ       L__Timer0_ISR121
	JMP        L_Timer0_ISR27
L__Timer0_ISR121:
	LDI        R18, 3
	LDI        R17, 73
	LDI        R16, 103
L_Timer0_ISR28:
	DEC        R16
	BRNE       L_Timer0_ISR28
	DEC        R17
	BRNE       L_Timer0_ISR28
	DEC        R18
	BRNE       L_Timer0_ISR28
	NOP
L_Timer0_ISR27:
;MyProject2.c,69 :: 		if(delay==2) delay_ms(40);
	LDS        R16, _delay+0
	LDS        R17, _delay+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR122
	CPI        R16, 2
L__Timer0_ISR122:
	BREQ       L__Timer0_ISR123
	JMP        L_Timer0_ISR30
L__Timer0_ISR123:
	LDI        R18, 3
	LDI        R17, 8
	LDI        R16, 120
L_Timer0_ISR31:
	DEC        R16
	BRNE       L_Timer0_ISR31
	DEC        R17
	BRNE       L_Timer0_ISR31
	DEC        R18
	BRNE       L_Timer0_ISR31
L_Timer0_ISR30:
;MyProject2.c,70 :: 		if(delay==3) delay_ms(35);
	LDS        R16, _delay+0
	LDS        R17, _delay+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR124
	CPI        R16, 3
L__Timer0_ISR124:
	BREQ       L__Timer0_ISR125
	JMP        L_Timer0_ISR33
L__Timer0_ISR125:
	LDI        R18, 2
	LDI        R17, 199
	LDI        R16, 137
L_Timer0_ISR34:
	DEC        R16
	BRNE       L_Timer0_ISR34
	DEC        R17
	BRNE       L_Timer0_ISR34
	DEC        R18
	BRNE       L_Timer0_ISR34
	NOP
L_Timer0_ISR33:
;MyProject2.c,71 :: 		if(delay==4) delay_ms(30);
	LDS        R16, _delay+0
	LDS        R17, _delay+1
	CPI        R17, 0
	BRNE       L__Timer0_ISR126
	CPI        R16, 4
L__Timer0_ISR126:
	BREQ       L__Timer0_ISR127
	JMP        L_Timer0_ISR36
L__Timer0_ISR127:
	LDI        R18, 2
	LDI        R17, 134
	LDI        R16, 154
L_Timer0_ISR37:
	DEC        R16
	BRNE       L_Timer0_ISR37
	DEC        R17
	BRNE       L_Timer0_ISR37
	DEC        R18
	BRNE       L_Timer0_ISR37
L_Timer0_ISR36:
;MyProject2.c,72 :: 		if(delay>=5) delay_ms(25);
	LDS        R18, _delay+0
	LDS        R19, _delay+1
	LDI        R16, 5
	LDI        R17, 0
	CP         R18, R16
	CPC        R19, R17
	BRGE       L__Timer0_ISR128
	JMP        L_Timer0_ISR39
L__Timer0_ISR128:
	LDI        R18, 2
	LDI        R17, 69
	LDI        R16, 170
L_Timer0_ISR40:
	DEC        R16
	BRNE       L_Timer0_ISR40
	DEC        R17
	BRNE       L_Timer0_ISR40
	DEC        R18
	BRNE       L_Timer0_ISR40
	NOP
	NOP
L_Timer0_ISR39:
;MyProject2.c,73 :: 		PORTD &= 0b00000000; //stins
	IN         R16, PORTD+0
	ANDI       R16, 0
	OUT        PORTD+0, R16
;MyProject2.c,58 :: 		for(i=0;i<dif;i++)
	LDS        R16, _i+0
	SUBI       R16, 255
	STS        _i+0, R16
;MyProject2.c,74 :: 		}
	JMP        L_Timer0_ISR20
L_Timer0_ISR21:
;MyProject2.c,75 :: 		go=1;
	LDI        R27, 1
	STS        _go+0, R27
;MyProject2.c,76 :: 		i=0;
	LDI        R27, 0
	STS        _i+0, R27
;MyProject2.c,78 :: 		}
L_Timer0_ISR19:
;MyProject2.c,80 :: 		if(PINB != 0 && go==1) // adica avem o apasare de buton pe undeva, nu stim exact ce buton, urmeaza sa verificam si vectorul e populat
	IN         R16, PINB+0
	CPI        R16, 0
	BRNE       L__Timer0_ISR129
	JMP        L__Timer0_ISR94
L__Timer0_ISR129:
	LDS        R16, _go+0
	CPI        R16, 1
	BREQ       L__Timer0_ISR130
	JMP        L__Timer0_ISR93
L__Timer0_ISR130:
L__Timer0_ISR92:
;MyProject2.c,84 :: 		if(PINB & (1<<0)) //testare pin PB0
	IN         R16, PINB+0
	SBRS       R16, 0
	JMP        L_Timer0_ISR45
;MyProject2.c,86 :: 		if(starePB0 == 0)
	LDS        R16, _starePB0+0
	CPI        R16, 0
	BREQ       L__Timer0_ISR131
	JMP        L_Timer0_ISR46
L__Timer0_ISR131:
;MyProject2.c,88 :: 		starePB0 = 1;
	LDI        R27, 1
	STS        _starePB0+0, R27
;MyProject2.c,89 :: 		if(led[i]==0)
	LDI        R17, #lo_addr(_led+0)
	LDI        R18, hi_addr(_led+0)
	LDS        R16, _i+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R17
	ADC        R31, R18
	LD         R16, Z
	CPI        R16, 0
	BREQ       L__Timer0_ISR132
	JMP        L_Timer0_ISR47
L__Timer0_ISR132:
;MyProject2.c,91 :: 		i++;
	LDS        R16, _i+0
	SUBI       R16, 255
	STS        _i+0, R16
;MyProject2.c,92 :: 		}
	JMP        L_Timer0_ISR48
L_Timer0_ISR47:
;MyProject2.c,95 :: 		i=0;
	LDI        R27, 0
	STS        _i+0, R27
;MyProject2.c,96 :: 		display(1,0);
	CLR        R3
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,97 :: 		}
L_Timer0_ISR48:
;MyProject2.c,98 :: 		}
L_Timer0_ISR46:
;MyProject2.c,99 :: 		display(1,i);
	LDS        R3, _i+0
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,100 :: 		}
	JMP        L_Timer0_ISR49
L_Timer0_ISR45:
;MyProject2.c,103 :: 		starePB0 = 0;
	LDI        R27, 0
	STS        _starePB0+0, R27
;MyProject2.c,104 :: 		delay_ms(5);
	LDI        R17, 65
	LDI        R16, 239
L_Timer0_ISR50:
	DEC        R16
	BRNE       L_Timer0_ISR50
	DEC        R17
	BRNE       L_Timer0_ISR50
;MyProject2.c,105 :: 		}
L_Timer0_ISR49:
;MyProject2.c,107 :: 		if(PINB & (1<<1)) //testare pin PB1
	IN         R16, PINB+0
	SBRS       R16, 1
	JMP        L_Timer0_ISR52
;MyProject2.c,109 :: 		if(starePB1 == 0)
	LDS        R16, _starePB1+0
	CPI        R16, 0
	BREQ       L__Timer0_ISR133
	JMP        L_Timer0_ISR53
L__Timer0_ISR133:
;MyProject2.c,111 :: 		starePB1 = 1;
	LDI        R27, 1
	STS        _starePB1+0, R27
;MyProject2.c,112 :: 		if(led[i]==1)
	LDI        R17, #lo_addr(_led+0)
	LDI        R18, hi_addr(_led+0)
	LDS        R16, _i+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R17
	ADC        R31, R18
	LD         R16, Z
	CPI        R16, 1
	BREQ       L__Timer0_ISR134
	JMP        L_Timer0_ISR54
L__Timer0_ISR134:
;MyProject2.c,115 :: 		i++;
	LDS        R16, _i+0
	SUBI       R16, 255
	STS        _i+0, R16
;MyProject2.c,117 :: 		}
	JMP        L_Timer0_ISR55
L_Timer0_ISR54:
;MyProject2.c,120 :: 		i=0;
	LDI        R27, 0
	STS        _i+0, R27
;MyProject2.c,121 :: 		display(1,0);
	CLR        R3
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,122 :: 		}
L_Timer0_ISR55:
;MyProject2.c,123 :: 		}
L_Timer0_ISR53:
;MyProject2.c,124 :: 		display(1,i);
	LDS        R3, _i+0
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,125 :: 		}
	JMP        L_Timer0_ISR56
L_Timer0_ISR52:
;MyProject2.c,128 :: 		starePB1 = 0;
	LDI        R27, 0
	STS        _starePB1+0, R27
;MyProject2.c,129 :: 		}
L_Timer0_ISR56:
;MyProject2.c,131 :: 		if(PINB & (1<<2))
	IN         R16, PINB+0
	SBRS       R16, 2
	JMP        L_Timer0_ISR57
;MyProject2.c,133 :: 		if(starePB2 == 0)
	LDS        R16, _starePB2+0
	CPI        R16, 0
	BREQ       L__Timer0_ISR135
	JMP        L_Timer0_ISR58
L__Timer0_ISR135:
;MyProject2.c,135 :: 		starePB2 = 1;
	LDI        R27, 1
	STS        _starePB2+0, R27
;MyProject2.c,136 :: 		if(led[i]==2)
	LDI        R17, #lo_addr(_led+0)
	LDI        R18, hi_addr(_led+0)
	LDS        R16, _i+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R17
	ADC        R31, R18
	LD         R16, Z
	CPI        R16, 2
	BREQ       L__Timer0_ISR136
	JMP        L_Timer0_ISR59
L__Timer0_ISR136:
;MyProject2.c,139 :: 		i++;
	LDS        R16, _i+0
	SUBI       R16, 255
	STS        _i+0, R16
;MyProject2.c,141 :: 		}
	JMP        L_Timer0_ISR60
L_Timer0_ISR59:
;MyProject2.c,144 :: 		i=0;
	LDI        R27, 0
	STS        _i+0, R27
;MyProject2.c,145 :: 		display(1,0);
	CLR        R3
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,146 :: 		}
L_Timer0_ISR60:
;MyProject2.c,147 :: 		}
L_Timer0_ISR58:
;MyProject2.c,148 :: 		display(1,i);
	LDS        R3, _i+0
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,149 :: 		}
	JMP        L_Timer0_ISR61
L_Timer0_ISR57:
;MyProject2.c,152 :: 		starePB2 = 0;
	LDI        R27, 0
	STS        _starePB2+0, R27
;MyProject2.c,153 :: 		}
L_Timer0_ISR61:
;MyProject2.c,155 :: 		if(PINB & (1<<3))
	IN         R16, PINB+0
	SBRS       R16, 3
	JMP        L_Timer0_ISR62
;MyProject2.c,157 :: 		if(starePB3 == 0)
	LDS        R16, _starePB3+0
	CPI        R16, 0
	BREQ       L__Timer0_ISR137
	JMP        L_Timer0_ISR63
L__Timer0_ISR137:
;MyProject2.c,159 :: 		starePB3 = 1;
	LDI        R27, 1
	STS        _starePB3+0, R27
;MyProject2.c,160 :: 		if(led[i]==3)
	LDI        R17, #lo_addr(_led+0)
	LDI        R18, hi_addr(_led+0)
	LDS        R16, _i+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R17
	ADC        R31, R18
	LD         R16, Z
	CPI        R16, 3
	BREQ       L__Timer0_ISR138
	JMP        L_Timer0_ISR64
L__Timer0_ISR138:
;MyProject2.c,163 :: 		i++;
	LDS        R16, _i+0
	SUBI       R16, 255
	STS        _i+0, R16
;MyProject2.c,165 :: 		}
	JMP        L_Timer0_ISR65
L_Timer0_ISR64:
;MyProject2.c,168 :: 		i=0;
	LDI        R27, 0
	STS        _i+0, R27
;MyProject2.c,169 :: 		display(1,0);
	CLR        R3
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,170 :: 		}
L_Timer0_ISR65:
;MyProject2.c,171 :: 		}
L_Timer0_ISR63:
;MyProject2.c,172 :: 		display(1,i);
	LDS        R3, _i+0
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,173 :: 		}
	JMP        L_Timer0_ISR66
L_Timer0_ISR62:
;MyProject2.c,176 :: 		starePB3 = 0;
	LDI        R27, 0
	STS        _starePB3+0, R27
;MyProject2.c,177 :: 		}
L_Timer0_ISR66:
;MyProject2.c,179 :: 		if(PINB & (1<<4))
	IN         R16, PINB+0
	SBRS       R16, 4
	JMP        L_Timer0_ISR67
;MyProject2.c,181 :: 		if(starePB4 == 0)
	LDS        R16, _starePB4+0
	CPI        R16, 0
	BREQ       L__Timer0_ISR139
	JMP        L_Timer0_ISR68
L__Timer0_ISR139:
;MyProject2.c,183 :: 		starePB4 = 1;
	LDI        R27, 1
	STS        _starePB4+0, R27
;MyProject2.c,184 :: 		if(led[i]==4)
	LDI        R17, #lo_addr(_led+0)
	LDI        R18, hi_addr(_led+0)
	LDS        R16, _i+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R17
	ADC        R31, R18
	LD         R16, Z
	CPI        R16, 4
	BREQ       L__Timer0_ISR140
	JMP        L_Timer0_ISR69
L__Timer0_ISR140:
;MyProject2.c,187 :: 		i++;
	LDS        R16, _i+0
	SUBI       R16, 255
	STS        _i+0, R16
;MyProject2.c,189 :: 		}
	JMP        L_Timer0_ISR70
L_Timer0_ISR69:
;MyProject2.c,192 :: 		i=0;
	LDI        R27, 0
	STS        _i+0, R27
;MyProject2.c,193 :: 		display(1,0);
	CLR        R3
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,194 :: 		}
L_Timer0_ISR70:
;MyProject2.c,195 :: 		}
L_Timer0_ISR68:
;MyProject2.c,196 :: 		display(1,i);
	LDS        R3, _i+0
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,197 :: 		}
	JMP        L_Timer0_ISR71
L_Timer0_ISR67:
;MyProject2.c,200 :: 		starePB4 = 0;
	LDI        R27, 0
	STS        _starePB4+0, R27
;MyProject2.c,201 :: 		}
L_Timer0_ISR71:
;MyProject2.c,203 :: 		if(PINB & (1<<5))
	IN         R16, PINB+0
	SBRS       R16, 5
	JMP        L_Timer0_ISR72
;MyProject2.c,205 :: 		if(starePB5 == 0)
	LDS        R16, _starePB5+0
	CPI        R16, 0
	BREQ       L__Timer0_ISR141
	JMP        L_Timer0_ISR73
L__Timer0_ISR141:
;MyProject2.c,207 :: 		starePB5 = 1;
	LDI        R27, 1
	STS        _starePB5+0, R27
;MyProject2.c,208 :: 		if(led[i]==5)
	LDI        R17, #lo_addr(_led+0)
	LDI        R18, hi_addr(_led+0)
	LDS        R16, _i+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R17
	ADC        R31, R18
	LD         R16, Z
	CPI        R16, 5
	BREQ       L__Timer0_ISR142
	JMP        L_Timer0_ISR74
L__Timer0_ISR142:
;MyProject2.c,211 :: 		i++;
	LDS        R16, _i+0
	SUBI       R16, 255
	STS        _i+0, R16
;MyProject2.c,213 :: 		}
	JMP        L_Timer0_ISR75
L_Timer0_ISR74:
;MyProject2.c,216 :: 		i=0;
	LDI        R27, 0
	STS        _i+0, R27
;MyProject2.c,217 :: 		display(1,0);
	CLR        R3
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,218 :: 		}
L_Timer0_ISR75:
;MyProject2.c,219 :: 		}
L_Timer0_ISR73:
;MyProject2.c,220 :: 		display(1,i);
	LDS        R3, _i+0
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,221 :: 		}
	JMP        L_Timer0_ISR76
L_Timer0_ISR72:
;MyProject2.c,224 :: 		starePB5 = 0;
	LDI        R27, 0
	STS        _starePB5+0, R27
;MyProject2.c,225 :: 		}
L_Timer0_ISR76:
;MyProject2.c,227 :: 		if(PINB & (1<<6))
	IN         R16, PINB+0
	SBRS       R16, 6
	JMP        L_Timer0_ISR77
;MyProject2.c,229 :: 		if(starePB6 == 0)
	LDS        R16, _starePB6+0
	CPI        R16, 0
	BREQ       L__Timer0_ISR143
	JMP        L_Timer0_ISR78
L__Timer0_ISR143:
;MyProject2.c,231 :: 		starePB6 = 1;
	LDI        R27, 1
	STS        _starePB6+0, R27
;MyProject2.c,232 :: 		if(led[i]==6)
	LDI        R17, #lo_addr(_led+0)
	LDI        R18, hi_addr(_led+0)
	LDS        R16, _i+0
	MOV        R30, R16
	LDI        R31, 0
	ADD        R30, R17
	ADC        R31, R18
	LD         R16, Z
	CPI        R16, 6
	BREQ       L__Timer0_ISR144
	JMP        L_Timer0_ISR79
L__Timer0_ISR144:
;MyProject2.c,234 :: 		i++;
	LDS        R16, _i+0
	SUBI       R16, 255
	STS        _i+0, R16
;MyProject2.c,235 :: 		}
	JMP        L_Timer0_ISR80
L_Timer0_ISR79:
;MyProject2.c,238 :: 		i=0;
	LDI        R27, 0
	STS        _i+0, R27
;MyProject2.c,239 :: 		display(1,0);
	CLR        R3
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,240 :: 		}
L_Timer0_ISR80:
;MyProject2.c,241 :: 		}
L_Timer0_ISR78:
;MyProject2.c,242 :: 		display(1,i);
	LDS        R3, _i+0
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,243 :: 		}
	JMP        L_Timer0_ISR81
L_Timer0_ISR77:
;MyProject2.c,246 :: 		starePB6 = 0;
	LDI        R27, 0
	STS        _starePB6+0, R27
;MyProject2.c,247 :: 		}
L_Timer0_ISR81:
;MyProject2.c,249 :: 		if(PINB & (1<<7))              //buton reset
	IN         R16, PINB+0
	SBRS       R16, 7
	JMP        L_Timer0_ISR82
;MyProject2.c,251 :: 		if(starePB7 == 0)
	LDS        R16, _starePB7+0
	CPI        R16, 0
	BREQ       L__Timer0_ISR145
	JMP        L_Timer0_ISR83
L__Timer0_ISR145:
;MyProject2.c,253 :: 		starePB7 = 1;
	LDI        R27, 1
	STS        _starePB7+0, R27
;MyProject2.c,254 :: 		i=0;
	LDI        R27, 0
	STS        _i+0, R27
;MyProject2.c,255 :: 		dif=3;
	LDI        R27, 3
	STS        _dif+0, R27
;MyProject2.c,256 :: 		delay=0;
	LDI        R27, 0
	STS        _delay+0, R27
	STS        _delay+1, R27
;MyProject2.c,257 :: 		display(1,10);
	LDI        R27, 10
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,258 :: 		delay_ms(100);
	LDI        R18, 6
	LDI        R17, 19
	LDI        R16, 174
L_Timer0_ISR84:
	DEC        R16
	BRNE       L_Timer0_ISR84
	DEC        R17
	BRNE       L_Timer0_ISR84
	DEC        R18
	BRNE       L_Timer0_ISR84
	NOP
	NOP
;MyProject2.c,259 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;MyProject2.c,260 :: 		go=0;
	LDI        R27, 0
	STS        _go+0, R27
;MyProject2.c,261 :: 		}
L_Timer0_ISR83:
;MyProject2.c,263 :: 		}
	JMP        L_Timer0_ISR86
L_Timer0_ISR82:
;MyProject2.c,266 :: 		starePB7 = 0;
	LDI        R27, 0
	STS        _starePB7+0, R27
;MyProject2.c,267 :: 		}
L_Timer0_ISR86:
;MyProject2.c,268 :: 		if(i==dif) //secventa corecta, se reia cu un led in plus, timp in minus
	LDS        R17, _i+0
	LDS        R16, _dif+0
	CP         R17, R16
	BREQ       L__Timer0_ISR146
	JMP        L_Timer0_ISR87
L__Timer0_ISR146:
;MyProject2.c,270 :: 		delay_ms(75);
	LDI        R18, 4
	LDI        R17, 207
	LDI        R16, 2
L_Timer0_ISR88:
	DEC        R16
	BRNE       L_Timer0_ISR88
	DEC        R17
	BRNE       L_Timer0_ISR88
	DEC        R18
	BRNE       L_Timer0_ISR88
	NOP
	NOP
;MyProject2.c,271 :: 		display(1,10);
	LDI        R27, 10
	MOV        R3, R27
	LDI        R27, 1
	MOV        R2, R27
	CALL       _display+0
;MyProject2.c,272 :: 		delay_ms(200);
	LDI        R18, 11
	LDI        R17, 38
	LDI        R16, 94
L_Timer0_ISR90:
	DEC        R16
	BRNE       L_Timer0_ISR90
	DEC        R17
	BRNE       L_Timer0_ISR90
	DEC        R18
	BRNE       L_Timer0_ISR90
	NOP
	NOP
;MyProject2.c,273 :: 		PORTC &= 0b00000000;
	IN         R16, PORTC+0
	ANDI       R16, 0
	OUT        PORTC+0, R16
;MyProject2.c,274 :: 		go=0;
	LDI        R27, 0
	STS        _go+0, R27
;MyProject2.c,275 :: 		dif++;
	LDS        R16, _dif+0
	SUBI       R16, 255
	STS        _dif+0, R16
;MyProject2.c,276 :: 		delay++;
	LDS        R16, _delay+0
	LDS        R17, _delay+1
	SUBI       R16, 255
	SBCI       R17, 255
	STS        _delay+0, R16
	STS        _delay+1, R17
;MyProject2.c,277 :: 		}
L_Timer0_ISR87:
;MyProject2.c,80 :: 		if(PINB != 0 && go==1) // adica avem o apasare de buton pe undeva, nu stim exact ce buton, urmeaza sa verificam si vectorul e populat
L__Timer0_ISR94:
L__Timer0_ISR93:
;MyProject2.c,279 :: 		}
L_end_Timer0_ISR:
	POP        R3
	POP        R2
	POP        R27
	OUT        SREG+0, R27
	POP        R27
	POP        R31
	POP        R30
	RETI
; end of _Timer0_ISR

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;MyProject2.c,283 :: 		void main()
;MyProject2.c,285 :: 		DDRC = 0b01111111;  //cifra pe digit
	LDI        R27, 127
	OUT        DDRC+0, R27
;MyProject2.c,286 :: 		DDRA = 0b00001111; //nr digitului
	LDI        R27, 15
	OUT        DDRA+0, R27
;MyProject2.c,287 :: 		DDRB=0b00000000; //butoane intrare
	LDI        R27, 0
	OUT        DDRB+0, R27
;MyProject2.c,288 :: 		DDRD=0b01111111; //led-uri
	LDI        R27, 127
	OUT        DDRD+0, R27
;MyProject2.c,289 :: 		SREG = 1<<7; // Global Interrupt Enable
	LDI        R27, 128
	OUT        SREG+0, R27
;MyProject2.c,290 :: 		init_timer();
	CALL       _init_timer+0
;MyProject2.c,291 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
