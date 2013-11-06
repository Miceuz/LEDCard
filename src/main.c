#include <avr/io.h>
#include <util/delay.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
#include <math.h>
#include <stdlib.h>
#include "logvalues.h"

unsigned char i = 0;

#define MAXLEDS 19 
#define _18 (4 << 4) | 1
#define _17 (4 << 4) | 0
#define _16 (3 << 4) | 4
#define _15 (3 << 4) | 2
#define _14 (3 << 4) | 1
#define _13 (3 << 4) | 0
#define _12 (2 << 4) | 4
#define _11 (2 << 4) | 3
#define _10 (2 << 4) | 1
#define _9 (2 << 4) | 0
#define _8 (1 << 4) | 4
#define _7 (1 << 4) | 3
#define _6 (1 << 4) | 2
#define _5 (1 << 4) | 0
#define _4 (0 << 4) | 4
#define _3 (0 << 4) | 3
#define _2 (0 << 4) | 2
#define _1 (0 << 4) | 1

#define BRIGHTNESS_MIN 100
#define BRIGHTNESS_MAX 11900

void setLed(unsigned char);
void ledOff();
void startFrameTimer();
void blank();

unsigned int screenBuffer[18];
unsigned char currLed = 0;
unsigned char leds[]={
_1,
_4,
_3,
_2,
_5,
_6,
_7,
_8,
_9,
_10,
_11,
_12,
_13,
_14,
_15,
_16,
_17,
_18
};

void loop();
void lightCones();
void fadeInOut();

#define DEMOCOUNT 3
char currDemo = 0;
void (*demos[DEMOCOUNT])() = {loop, lightCones, fadeInOut};

void setup() {
  DDRA = 0;
  PORTA = 0;
  DIDR0 |= _BV(ADC1D);   //disable digital input buffer on AIN0 and AIN1
  PRR |= _BV(PRTIM0);                 //disable timer0
  ADCSRA &=~ _BV(ADEN);
  PRR |= _BV(PRADC);
  PRR |= _BV(PRUSI);

  sei();
  
}

void sleepNow()
{
    PORTA = 0;
    DDRA = 0;
    PORTB = 0;
    DDRB = 0;
    TCCR1B = 0;
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    sleep_enable();
    GIMSK |= _BV(INT0);
    asm("sleep");
    GIMSK &=~_BV(INT0);
    sleep_disable();
    currDemo ++;
    if(currDemo > DEMOCOUNT) {
    	currDemo = 0;
    }
}


SIGNAL(EXT_INT0_vect) {
    setLed(_1);
    GIMSK &= ~_BV(INT0);
}

SIGNAL(TIM1_COMPA_vect) {
    TCNT1 = 0;
    if(0 != screenBuffer[currLed]) {
    	setLed(leds[currLed]);
        OCR1B = screenBuffer[currLed];
    } else {
        ledOff();
    }
    currLed++;
    if(currLed > 17) {
        currLed = 0;
//        frameDone = 1;
    }
}

SIGNAL(TIM1_COMPB_vect) {
	ledOff();
}

void setLed(unsigned char led) {
  DDRA = _BV(led >> 4) | _BV(led & 0x0f) ;
  PORTA = _BV(led >> 4);
}

void ledOff() {
  PORTA = 0;
  DDRA = 0;
}

char dd = -1;
unsigned char d = 9;
void loop() {
	stopFrameTimer();
	char ddd = dd;
	while (dd == ddd) {
		setLed(leds[i]);
		i++;
		if (i >= MAXLEDS) {
			i = 0;
			d = d + dd;
			if (d == 0 || 10 == d) {
				dd = dd * -1;
			}
		}
		unsigned char j = 0;
		for (j = 0; j < d; j++) {
			_delay_ms(1);
		}
	}
}

void stopFrameTimer() {
	TCCR1B = 0;
}
void startFrameTimer() {
    TIMSK1 |= _BV(OCIE1A) | _BV(OCIE1B);
    OCR1A = 12000;
    TCCR1B |= _BV(CS10);// | _BV(WGM12);
}

void randomScreen() {
	for (i = 0; i < 18; i++) {
		screenBuffer[i] = random() % BRIGHTNESS_MAX + BRIGHTNESS_MIN;
	}
}

void increaseBrightness(){
	int i;
	for (i = 0; i < 18; ++i) {
		screenBuffer[i] += 100;
		if(screenBuffer[i] > BRIGHTNESS_MAX) {
			screenBuffer[i] = BRIGHTNESS_MIN;
		}
	}
}

unsigned int fadeIn(unsigned char i) {
	unsigned int brightness = BRIGHTNESS_MIN;
	while (brightness < BRIGHTNESS_MAX) {
		screenBuffer[i] = brightness;
		brightness += 100;
		_delay_ms(2);
	}
	return brightness;
}

void fadeOut(unsigned char i) {
	unsigned int brightness = screenBuffer[i];
	while(brightness >= 100) {
		screenBuffer[i] = brightness;
		brightness -= 100;
		_delay_ms(6);
	}
}

char fadeoutLed = 0;

void fadeInOut() {
	blank();
	for(i = 0; i < 20; i++) {
		startFrameTimer();
	//	fadeoutLed = rand() % 18;
		char fadeinLed = rand() % 18;
		while(fadeinLed == fadeoutLed) {
			fadeinLed = rand() % 18;
		}

		screenBuffer[fadeinLed] = BRIGHTNESS_MIN;

		while ((screenBuffer[fadeinLed] < BRIGHTNESS_MAX-100)) {
			screenBuffer[fadeinLed] += 100;
			if(screenBuffer[fadeoutLed] > BRIGHTNESS_MIN) {
				screenBuffer[fadeoutLed] -= 100;
			}
			_delay_ms(2);
		}
		screenBuffer[fadeoutLed] = 0;
		fadeoutLed = fadeinLed;
	}
}

void pingOne(unsigned char i) {
	fadeIn(i);
	fadeOut(i);
	screenBuffer[i] = 0;
}

unsigned int brightness(unsigned char b) {
	if(0 == pgm_read_byte(&logValues[b])) {
		return 0;
	}

	return BRIGHTNESS_MIN + (BRIGHTNESS_MAX - BRIGHTNESS_MIN) / 255 * pgm_read_byte(&logValues[b]);
}

void blank() {
	for(i = 0; i < MAXLEDS; i++) {
		screenBuffer[i] = 0;
	}
}

void lightCones() {
	startFrameTimer();
	fadeIn(0);
	for(i = 1; i < MAXLEDS; i++) {
		screenBuffer[i-1] = 0;
		screenBuffer[i] = BRIGHTNESS_MAX;
		_delay_ms(50);
	}
	screenBuffer[0] = BRIGHTNESS_MAX;
	fadeOut(0);

	_delay_ms(50);
	screenBuffer[0] = BRIGHTNESS_MAX;
	_delay_ms(70);
	screenBuffer[1] = BRIGHTNESS_MAX;
	screenBuffer[8] = BRIGHTNESS_MAX;
	screenBuffer[9] = BRIGHTNESS_MAX;
	screenBuffer[17] = BRIGHTNESS_MAX;
	_delay_ms(70);
	screenBuffer[2] = BRIGHTNESS_MAX;
	screenBuffer[7] = BRIGHTNESS_MAX;
	screenBuffer[10] = BRIGHTNESS_MAX;
	screenBuffer[16] = BRIGHTNESS_MAX;
	_delay_ms(60);
	screenBuffer[3] = BRIGHTNESS_MAX;
	screenBuffer[6] = BRIGHTNESS_MAX;
	screenBuffer[11] = BRIGHTNESS_MAX;
	screenBuffer[15] = BRIGHTNESS_MAX;

	screenBuffer[4] = BRIGHTNESS_MAX;
	screenBuffer[5] = BRIGHTNESS_MAX;
	screenBuffer[12] = BRIGHTNESS_MAX;
	screenBuffer[13] = BRIGHTNESS_MAX;
	screenBuffer[14] = BRIGHTNESS_MAX;
	_delay_ms(500);
	int i = 0;
	while(screenBuffer[0] > BRIGHTNESS_MIN) {
		for(i = 0; i < MAXLEDS; i++) {
			screenBuffer[i] --;
		}
	}
}

void main() {
	setup();
	startFrameTimer();
	char t = -1;
	while(1){
		demos[currDemo]();
		if((PINB & _BV(PB2))) {
			sleepNow();
		}
	}
	
}
