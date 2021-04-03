char led[8],i=0,starePB0=0,starePB1=0,starePB2=0,starePB3=0,starePB4=0,starePB5=0,starePB6=0,starePB7=0,dif=3,go=0,r;
int random,delay=0;

void display(char p, char c)
{
 PORTA &= 0b11110000; //liniile de sel. digit - oprite
 PORTC &= 0b00000000; //liniile de sel. Seg. - oprite
 switch(c){
          case 0:
               PORTC |= 0b00111111;break;//codificare cifra 0
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
               PORTC |=0b01110110;break; //H

   }
   switch(p){
          case 1:
               PORTA |= 0b00001000;break;//activare digit 1
          case 2:
               PORTA |= 0b00000100;break;//activare digit 2
          case 3:
               PORTA |=0b00000010;break;
          case 4:
               PORTA |=0b00000001;break;
          }
}
               
 void init_timer(){

     TCCR0 = 0b00001011; //CTC-3,6; Prescaler-0,1,2
     TCNT0 = 0;
     OCR0 = 125;
     TIMSK |= 0b00000010;
}

void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP
{
 if(go==0)  //populare vector
 {
for(i=0;i<dif;i++)
     {
     r=rand()%8;
     if(r>6)
     {
     r%=10;
     }
     led[i]=r;
     PORTD |= (1<<led[i]); //aprindere led
     if(delay==0) delay_ms(50);
     if(delay==1) delay_ms(45);
     if(delay==2) delay_ms(40);
     if(delay==3) delay_ms(35);
     if(delay==4) delay_ms(30);
     if(delay>=5) delay_ms(25);
     PORTD &= 0b00000000; //stins
     }
 go=1;
 i=0;

 }

if(PINB != 0 && go==1) // adica avem o apasare de buton pe undeva, nu stim exact ce buton, urmeaza sa verificam si vectorul e populat
{
// verificarea butoanelor

if(PINB & (1<<0)) //testare pin PB0
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

if(PINB & (1<<1)) //testare pin PB1
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
               
if(PINB & (1<<7))              //buton reset
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
if(i==dif) //secventa corecta, se reia cu un led in plus, timp in minus
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
     DDRC = 0b01111111;  //cifra pe digit
     DDRA = 0b00001111; //nr digitului
     DDRB=0b00000000; //butoane intrare
     DDRD=0b01111111; //led-uri 
     SREG = 1<<7; // Global Interrupt Enable
     init_timer();
 }
 
 
 
 // populare();
   /*  display(1,rand()%8);
     delay_ms(40);
     display(1,rand()%8);
     delay_ms(40);
     display(1,rand()%8);
     delay_ms(40);
     display(1,rand()%8);
     delay_ms(40);
     display(1,rand()%8);
     delay_ms(40);
     display(1,rand()%8);
     delay_ms(40); */
 
 
 /*void Timer0_ISR() iv IVT_ADDR_TIMER0_COMP
{
if(PINB != 0) // adica avem o apasare de buton pe undeva, nu stim exact ce bun, urmeaza sa verificam
{

// verificarea butoanelor
if(PINB & (1<<0))
{buton[i] = 1;
}
if(PINB & (1<<1))
{buton[i] = 2;   }
if(PINB & (1<<2))
{buton[i] = 3;}
if(PINB & (1<<3))
{buton[i] = 4;}
if(PINB & (1<<4))
{buton[i] = 5;}
if(PINB & (1<<5))
{buton[i] = 6;}
if(PINB & (1<<6))
{buton[i] = 7;}
if(PINB & (1<<7))
{buton[i] = 8;}
i++; // pentru array-ul buton
}
if(i>=6) //s-au apasat toate butoanele
{
i=0;// resetam contorul pentru array-ul butoanelor (in cazul in care e corecta succesiune se va trece la nivelul urmator
// si vom avea nevoie sa inceapa contorul de la 0, in cazul incare nu e corecta succesiune tot vom avea nevoie de i=0
// ca sa mai incercam odata.)
if(led[0]==buton[0])
 {   // display(1,0);
        if(led[1]==buton[1])
                   {
                   if(led[2]==buton[2])
                         {
                         if(led[3]==buton[3])
                              {
                              if(led[4]==buton[4])
                                  {
                                     if(led[5]==buton[5])
                                            {
                                             if(led[6]==buton[6])
                                                        {
                                                       // if(led[7]==buton[7])
                                                          //   {
                                                             display(1,j);j++; // dificultatea sa zicem

                    }
                         }
                             }
                                  }
                                                            // }
  }
 }
 }

 }
 }*/
 
 
 
 
 
 
 
 
 /*if(PINB & 1)
          {
               if(led[i]==1)
               {
                     display(1,i+1);
                     i++;
               }
               else
               {
                 i=0;
                 display(1,i);
               }
          }
if(PINB & (1<<1))
          {
               if(led[i]==2)
               {
                     display(1,i+1);
                     i++;
               }
               else
                 display(1,i); verif=1;
          }
if(PINB & (1<<2))
          {
               if(led[i]==3)
               {
                     display(1,i+1);
                     i++;
               }
               else
               {
                 i=0;
                 display(1,i);
               }
          }
if(PINB & (1<<3))
          {
               if(led[i]==4)
               {
                     display(1,i+1);
                     i++;
               }
               else
               {
                 i=0;
                 display(1,i);
               }
          }
if(PINB & (1<<4))
          {
               if(led[i]==5)
               {
                     display(1,i+1);
                     i++;
               }
               else
               {
                 i=0;
                 display(1,i);
               }
          }
if(PINB & (1<<5))
          {
               if(led[i]==6)
               {
                     display(1,i+1);
                     i++;
               }
               else
               {
                 i=0;
                 display(1,i);
               }
          }
if(PINB & (1<<6))
          {
               if(led[i]==7)
               {
                     display(1,i+1);
                     i++;
               }
               else
               {
                 i=0;
                 display(1,i);
               }
          }*/
          
          
          
          
          
          
          
          
          
 /*void populare()
{
 random=rand()%8; //nr pseudorandom intre 0-7
 for(j=0;j<dif;j++)
       {
        if(random==0)             //nr pseudorandom intre 1-7
        {
        random=1;
        }
       // PORTD |= (1<<random); //aprindere led
        led[j]=random;   //vector ordine aprindere
        display(1,led[j]);
        delay_ms(50); //viteza stingere
        PORTD &= 0b00000000; //stins
        j++;
        random=rand()%8;
       }
}*/