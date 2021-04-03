#line 1 "C:/Users/Pavel/Desktop/Fac/ED/PROJECTS/MyProject2.c"
char led[8],i=0,starePB0=0,starePB1=0,starePB2=0,starePB3=0,starePB4=0,starePB5=0,starePB6=0,starePB7=0,dif=3,go=0,r;
int random,delay=0;

void display(char p, char c)
{
 PORTA &= 0b11110000;
 PORTC &= 0b00000000;
 switch(c){
 case 0:
 PORTC |= 0b00111111;break;
 case 1:
 PORTC |= 0b00000110;break;
 case 2:
 PORTC |=0b01011011;break;
 case 3:
 PORTC |=0b01001111;break;
 case 4:
 PORTC |=0b01100110;break;
 case 5:
 PORTC |=0b01101101;break;
 case 6:
 PORTC |=0b01111100;break;
 case 7:
 PORTC |=0b00000111;break;
 case 8:
 PORTC |=0b01111111;break;
 case 9:
 PORTC |=0b01101111;break;
 case 10:
 PORTC |=0b01110110;break;

 }
 switch(p){
 case 1:
 PORTA |= 0b00001000;break;
 case 2:
 PORTA |= 0b00000100;break;
 case 3:
 PORTA |=0b00000010;break;
 case 4:
 PORTA |=0b00000001;break;
 }

}

 void init_timer(){

 TCCR0 = 0b00001011;
 TCNT0 = 0;
 OCR0 = 125;
 TIMSK |= 0b00000010;
}

void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP
{
 if(go==0)
 {
for(i=0;i<dif;i++)
 {
 r=rand()%8;
 if(r>6)
 {
 r%=10;
 }
 led[i]=r;
 PORTD |= (1<<led[i]);
 if(delay==0) delay_ms(50);
 if(delay==1) delay_ms(45);
 if(delay==2) delay_ms(40);
 if(delay==3) delay_ms(35);
 if(delay==4) delay_ms(30);
 if(delay>=5) delay_ms(25);
 PORTD &= 0b00000000;
 }
 go=1;
 i=0;

 }

if(PINB != 0 && go==1)
{


if(PINB & (1<<0))
 {
 if(starePB0 == 0)
 {
 starePB0 = 1;
 if(led[i]==0)
 {
 i++;
 }
 else
 {
 i=0;
 display(1,0);
 }
 }
 display(1,i);
 }
 else
 {
 starePB0 = 0;
 delay_ms(5);
 }

if(PINB & (1<<1))
 {
 if(starePB1 == 0)
 {
 starePB1 = 1;
 if(led[i]==1)
 {

 i++;

 }
 else
 {
 i=0;
 display(1,0);
 }
 }
 display(1,i);
 }
 else
 {
 starePB1 = 0;
 }

if(PINB & (1<<2))
 {
 if(starePB2 == 0)
 {
 starePB2 = 1;
 if(led[i]==2)
 {

 i++;

 }
 else
 {
 i=0;
 display(1,0);
 }
 }
 display(1,i);
 }
 else
 {
 starePB2 = 0;
 }

if(PINB & (1<<3))
 {
 if(starePB3 == 0)
 {
 starePB3 = 1;
 if(led[i]==3)
 {

 i++;

 }
 else
 {
 i=0;
 display(1,0);
 }
 }
 display(1,i);
 }
 else
 {
 starePB3 = 0;
 }

if(PINB & (1<<4))
 {
 if(starePB4 == 0)
 {
 starePB4 = 1;
 if(led[i]==4)
 {

 i++;

 }
 else
 {
 i=0;
 display(1,0);
 }
 }
 display(1,i);
 }
 else
 {
 starePB4 = 0;
 }

if(PINB & (1<<5))
 {
 if(starePB5 == 0)
 {
 starePB5 = 1;
 if(led[i]==5)
 {

 i++;

 }
 else
 {
 i=0;
 display(1,0);
 }
 }
 display(1,i);
 }
 else
 {
 starePB5 = 0;
 }

if(PINB & (1<<6))
 {
 if(starePB6 == 0)
 {
 starePB6 = 1;
 if(led[i]==6)
 {
 i++;
 }
 else
 {
 i=0;
 display(1,0);
 }
 }
 display(1,i);
 }
 else
 {
 starePB6 = 0;
 }

if(PINB & (1<<7))
 {
 if(starePB7 == 0)
 {
 starePB7 = 1;
 i=0;
 dif=3;
 delay=0;
 display(1,10);
 delay_ms(100);
 PORTC &= 0b00000000;
 go=0;
 }

 }
 else
 {
 starePB7 = 0;
 }
if(i==dif)
 {
 delay_ms(75);
 display(1,10);
 delay_ms(200);
 PORTC &= 0b00000000;
 go=0;
 dif++;
 delay++;
 }
}
}



 void main()
 {
 DDRC = 0b01111111;
 DDRA = 0b00001111;
 DDRB=0b00000000;
 DDRD=0b01111111;
 SREG = 1<<7;
 init_timer();
 }
