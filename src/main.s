	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 0x1a,__zero_reg__
	out 0x1b,__zero_reg__
	sbi 0x1,1
	sbi 0,2
	cbi 0x6,7
	sbi 0,0
	sbi 0,1
/* #APP */
 ;  79 "main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
	.size	setup, .-setup
	.section	.text.sleepNow,"ax",@progbits
.global	sleepNow
	.type	sleepNow, @function
sleepNow:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 0x1b,__zero_reg__
	out 0x1a,__zero_reg__
	out 0x18,__zero_reg__
	out 0x17,__zero_reg__
	out 0x2e,__zero_reg__
	in r24,0x35
	andi r24,lo8(-25)
	ori r24,lo8(16)
	out 0x35,r24
	in r24,0x35
	ori r24,lo8(32)
	out 0x35,r24
	in r24,0x3b
	ori r24,lo8(64)
	out 0x3b,r24
/* #APP */
 ;  93 "main.c" 1
	sleep
 ;  0 "" 2
/* #NOAPP */
	in r24,0x3b
	andi r24,lo8(-65)
	out 0x3b,r24
	in r24,0x35
	andi r24,lo8(-33)
	out 0x35,r24
	lds r24,currDemo
	subi r24,lo8(-(1))
	cpi r24,lo8(4)
	brge .L3
	sts currDemo,r24
	ret
.L3:
	sts currDemo,__zero_reg__
	ret
	.size	sleepNow, .-sleepNow
	.section	.text.__vector_1,"ax",@progbits
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r24,lo8(3)
	out 0x1a,r24
	ldi r24,lo8(1)
	out 0x1b,r24
	in r24,0x3b
	andi r24,lo8(-65)
	out 0x3b,r24
/* epilogue start */
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_1, .-__vector_1
	.section	.text.setLed,"ax",@progbits
.global	setLed
	.type	setLed, @function
setLed:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r18,r24
	swap r18
	andi r18,lo8(15)
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r20
	rjmp 2f
	1:
	lsl r22
	rol r23
	2:
	dec r18
	brpl 1b
	andi r24,lo8(15)
	mov r0,r24
	rjmp 2f
	1:
	lsl r20
	2:
	dec r0
	brpl 1b
	or r20,r22
	out 0x1a,r20
	out 0x1b,r22
	ret
	.size	setLed, .-setLed
	.section	.text.loop,"ax",@progbits
.global	loop
	.type	loop, @function
loop:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	out 0x2e,__zero_reg__
	lds r28,dd
	rjmp .L8
.L15:
	lds r30,i
	ldi r31,0
	subi r30,lo8(-(leds))
	sbci r31,hi8(-(leds))
	ld r24,Z
	rcall setLed
	lds r24,i
	subi r24,lo8(-(1))
	sts i,r24
	cpi r24,lo8(19)
	brlo .L10
	sts i,__zero_reg__
	lds r25,dd
	lds r24,d
	add r24,r25
	sts d,r24
	tst r24
	breq .L11
	cpi r24,lo8(10)
	brne .L10
.L11:
	neg r25
	sts dd,r25
.L10:
	ldi r24,0
	rjmp .L13
.L14:
	ldi r30,lo8(1999)
	ldi r31,hi8(1999)
	1: sbiw r30,1
	brne 1b
	rjmp .
	nop
	subi r24,lo8(-(1))
.L13:
	lds r25,d
	cp r24,r25
	brlo .L14
.L8:
	lds r24,dd
	cp r24,r28
	breq .L15
/* epilogue start */
	pop r28
	ret
	.size	loop, .-loop
	.section	.text.ledOff,"ax",@progbits
.global	ledOff
	.type	ledOff, @function
ledOff:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 0x1b,__zero_reg__
	out 0x1a,__zero_reg__
	ret
	.size	ledOff, .-ledOff
	.section	.text.__vector_7,"ax",@progbits
.global	__vector_7
	.type	__vector_7, @function
__vector_7:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	rcall ledOff
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_7, .-__vector_7
	.section	.text.__vector_6,"ax",@progbits
.global	__vector_6
	.type	__vector_6, @function
__vector_6:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	out 0x2c+1,__zero_reg__
	out 0x2c,__zero_reg__
	lds r24,currLed
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	subi r30,lo8(-(screenBuffer))
	sbci r31,hi8(-(screenBuffer))
	ld r18,Z
	ldd r19,Z+1
	or r18,r19
	breq .L22
	movw r30,r24
	subi r30,lo8(-(leds))
	sbci r31,hi8(-(leds))
	ld r24,Z
	rcall setLed
	lds r30,currLed
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(screenBuffer))
	sbci r31,hi8(-(screenBuffer))
	ld r24,Z
	ldd r25,Z+1
	out 0x28+1,r25
	out 0x28,r24
	rjmp .L23
.L22:
	rcall ledOff
.L23:
	lds r24,currLed
	subi r24,lo8(-(1))
	cpi r24,lo8(18)
	brsh .L24
	sts currLed,r24
	rjmp .L21
.L24:
	sts currLed,__zero_reg__
.L21:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_6, .-__vector_6
	.section	.text.stopFrameTimer,"ax",@progbits
.global	stopFrameTimer
	.type	stopFrameTimer, @function
stopFrameTimer:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 0x2e,__zero_reg__
	ret
	.size	stopFrameTimer, .-stopFrameTimer
	.section	.text.startFrameTimer,"ax",@progbits
.global	startFrameTimer
	.type	startFrameTimer, @function
startFrameTimer:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0xc
	ori r24,lo8(6)
	out 0xc,r24
	ldi r24,lo8(-32)
	ldi r25,lo8(46)
	out 0x2a+1,r25
	out 0x2a,r24
	in r24,0x2e
	ori r24,lo8(1)
	out 0x2e,r24
	ret
	.size	startFrameTimer, .-startFrameTimer
	.section	.text.randomScreen,"ax",@progbits
.global	randomScreen
	.type	randomScreen, @function
randomScreen:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	sts i,__zero_reg__
	ldi r20,lo8(124)
	mov r12,r20
	ldi r20,lo8(46)
	mov r13,r20
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L29
.L30:
	rcall random
	ldi r29,0
	lsl r28
	rol r29
	subi r28,lo8(-(screenBuffer))
	sbci r29,hi8(-(screenBuffer))
	movw r20,r14
	movw r18,r12
	rcall __divmodsi4
	subi r22,-100
	sbci r23,-1
	std Y+1,r23
	st Y,r22
	lds r24,i
	subi r24,lo8(-(1))
	sts i,r24
.L29:
	lds r28,i
	cpi r28,lo8(18)
	brlo .L30
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	randomScreen, .-randomScreen
	.section	.text.increaseBrightness,"ax",@progbits
.global	increaseBrightness
	.type	increaseBrightness, @function
increaseBrightness:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r30,lo8(screenBuffer)
	ldi r31,hi8(screenBuffer)
	ldi r18,lo8(100)
	ldi r19,0
.L34:
	ld r24,Z
	ldd r25,Z+1
	subi r24,-100
	sbci r25,-1
	cpi r24,125
	ldi r20,46
	cpc r25,r20
	brsh .L32
	std Z+1,r25
	st Z,r24
	rjmp .L33
.L32:
	std Z+1,r19
	st Z,r18
.L33:
	adiw r30,2
	ldi r24,hi8(screenBuffer+36)
	cpi r30,lo8(screenBuffer+36)
	cpc r31,r24
	brne .L34
/* epilogue start */
	ret
	.size	increaseBrightness, .-increaseBrightness
	.section	.text.fadeIn,"ax",@progbits
.global	fadeIn
	.type	fadeIn, @function
fadeIn:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(100)
	ldi r19,0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(screenBuffer))
	sbci r31,hi8(-(screenBuffer))
.L37:
	std Z+1,r19
	st Z,r18
	subi r18,-100
	sbci r19,-1
	ldi r24,lo8(3999)
	ldi r25,hi8(3999)
	1: sbiw r24,1
	brne 1b
	rjmp .
	nop
	cpi r18,124
	ldi r25,46
	cpc r19,r25
	brne .L37
	ldi r24,lo8(124)
	ldi r25,lo8(46)
	ret
	.size	fadeIn, .-fadeIn
	.section	.text.fadeOut,"ax",@progbits
.global	fadeOut
	.type	fadeOut, @function
fadeOut:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(screenBuffer))
	sbci r31,hi8(-(screenBuffer))
	ld r24,Z
	ldd r25,Z+1
	rjmp .L40
.L41:
	std Z+1,r25
	st Z,r24
	subi r24,100
	sbc r25,__zero_reg__
	ldi r26,lo8(11999)
	ldi r27,hi8(11999)
	1: sbiw r26,1
	brne 1b
	rjmp .
	nop
.L40:
	cpi r24,100
	cpc r25,__zero_reg__
	brsh .L41
/* epilogue start */
	ret
	.size	fadeOut, .-fadeOut
	.section	.text.lightCones,"ax",@progbits
.global	lightCones
	.type	lightCones, @function
lightCones:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	rcall startFrameTimer
	ldi r24,0
	rcall fadeIn
	ldi r24,lo8(1)
	sts i,r24
	ldi r24,lo8(124)
	ldi r25,lo8(46)
	rjmp .L43
.L44:
	mov r30,r18
	ldi r31,0
	movw r26,r30
	lsl r26
	rol r27
	subi r26,lo8(-(screenBuffer-2))
	sbci r27,hi8(-(screenBuffer-2))
	st X+,__zero_reg__
	st X,__zero_reg__
	lsl r30
	rol r31
	subi r30,lo8(-(screenBuffer))
	sbci r31,hi8(-(screenBuffer))
	std Z+1,r25
	st Z,r24
	ldi r19,lo8(79999)
	ldi r20,hi8(79999)
	ldi r21,hlo8(79999)
	1: subi r19,1
	sbci r20,0
	sbci r21,0
	brne 1b
	rjmp .
	nop
	subi r18,lo8(-(1))
	sts i,r18
.L43:
	lds r18,i
	cpi r18,lo8(19)
	brlo .L44
	ldi r28,lo8(124)
	ldi r29,lo8(46)
	sts screenBuffer+1,r29
	sts screenBuffer,r28
	ldi r24,0
	rcall fadeOut
	ldi r24,lo8(79999)
	ldi r25,hi8(79999)
	ldi r18,hlo8(79999)
	1: subi r24,1
	sbci r25,0
	sbci r18,0
	brne 1b
	rjmp .
	nop
	sts screenBuffer+1,r29
	sts screenBuffer,r28
	ldi r19,lo8(111999)
	ldi r20,hi8(111999)
	ldi r21,hlo8(111999)
	1: subi r19,1
	sbci r20,0
	sbci r21,0
	brne 1b
	rjmp .
	nop
	sts screenBuffer+2+1,r29
	sts screenBuffer+2,r28
	sts screenBuffer+16+1,r29
	sts screenBuffer+16,r28
	sts screenBuffer+18+1,r29
	sts screenBuffer+18,r28
	sts screenBuffer+34+1,r29
	sts screenBuffer+34,r28
	ldi r24,lo8(111999)
	ldi r25,hi8(111999)
	ldi r18,hlo8(111999)
	1: subi r24,1
	sbci r25,0
	sbci r18,0
	brne 1b
	rjmp .
	nop
	sts screenBuffer+4+1,r29
	sts screenBuffer+4,r28
	sts screenBuffer+14+1,r29
	sts screenBuffer+14,r28
	sts screenBuffer+20+1,r29
	sts screenBuffer+20,r28
	sts screenBuffer+32+1,r29
	sts screenBuffer+32,r28
	ldi r19,lo8(95999)
	ldi r20,hi8(95999)
	ldi r21,hlo8(95999)
	1: subi r19,1
	sbci r20,0
	sbci r21,0
	brne 1b
	rjmp .
	nop
	sts screenBuffer+6+1,r29
	sts screenBuffer+6,r28
	sts screenBuffer+12+1,r29
	sts screenBuffer+12,r28
	sts screenBuffer+22+1,r29
	sts screenBuffer+22,r28
	sts screenBuffer+30+1,r29
	sts screenBuffer+30,r28
	sts screenBuffer+8+1,r29
	sts screenBuffer+8,r28
	sts screenBuffer+10+1,r29
	sts screenBuffer+10,r28
	sts screenBuffer+24+1,r29
	sts screenBuffer+24,r28
	sts screenBuffer+26+1,r29
	sts screenBuffer+26,r28
	sts screenBuffer+28+1,r29
	sts screenBuffer+28,r28
	ldi r24,lo8(799999)
	ldi r25,hi8(799999)
	ldi r18,hlo8(799999)
	1: subi r24,1
	sbci r25,0
	sbci r18,0
	brne 1b
	rjmp .
	nop
	rjmp .L45
.L46:
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,1
	st Z+,r24
	st Z+,r25
	ldi r19,hi8(screenBuffer+38)
	cpi r30,lo8(screenBuffer+38)
	cpc r31,r19
	brne .L46
.L45:
	lds r24,screenBuffer
	lds r25,screenBuffer+1
	cpi r24,101
	cpc r25,__zero_reg__
	brlo .L42
	ldi r30,lo8(screenBuffer)
	ldi r31,hi8(screenBuffer)
	rjmp .L46
.L42:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	lightCones, .-lightCones
	.section	.text.pingOne,"ax",@progbits
.global	pingOne
	.type	pingOne, @function
pingOne:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	rcall fadeIn
	mov r24,r28
	rcall fadeOut
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(screenBuffer))
	sbci r31,hi8(-(screenBuffer))
	std Z+1,__zero_reg__
	st Z,__zero_reg__
/* epilogue start */
	pop r28
	ret
	.size	pingOne, .-pingOne
	.section	.text.brightness,"ax",@progbits
.global	brightness
	.type	brightness, @function
brightness:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(logValues))
	sbci r31,hi8(-(logValues))
/* #APP */
 ;  236 "main.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r24
	breq .L52
	ldi r25,0
	ldi r22,lo8(46)
	ldi r23,0
	rcall __mulhi3
	movw r18,r24
	subi r18,-100
	sbci r19,-1
	rjmp .L51
.L52:
	ldi r18,0
	ldi r19,0
.L51:
	movw r24,r18
	ret
	.size	brightness, .-brightness
	.section	.text.blank,"ax",@progbits
.global	blank
	.type	blank, @function
blank:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,0
.L54:
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(screenBuffer))
	sbci r31,hi8(-(screenBuffer))
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	subi r24,lo8(-(1))
	cpi r24,lo8(19)
	brlo .L54
	sts i,r24
	ret
	.size	blank, .-blank
	.section	.text.fadeInOut,"ax",@progbits
.global	fadeInOut
	.type	fadeInOut, @function
fadeInOut:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	rcall blank
	sts i,__zero_reg__
	ldi r28,lo8(18)
	ldi r29,0
	ldi r16,lo8(100)
	ldi r17,0
	rjmp .L57
.L63:
	rcall startFrameTimer
.L59:
	rcall rand
	movw r22,r28
	rcall __divmodhi4
	lds r25,fadeoutLed
	cp r24,r25
	breq .L59
	mov r30,r24
	lsl r30
	sbc r31,r31
	subi r30,lo8(-(screenBuffer))
	sbci r31,hi8(-(screenBuffer))
	std Z+1,r17
	st Z,r16
	movw r26,r30
	rjmp .L60
.L62:
	subi r18,-100
	sbci r19,-1
	adiw r26,1
	st X,r19
	st -X,r18
	lsl r30
	sbc r31,r31
	subi r30,lo8(-(screenBuffer))
	sbci r31,hi8(-(screenBuffer))
	ld r18,Z
	ldd r19,Z+1
	cpi r18,101
	cpc r19,__zero_reg__
	brlo .L61
	subi r18,100
	sbc r19,__zero_reg__
	std Z+1,r19
	st Z,r18
.L61:
	ldi r30,lo8(3999)
	ldi r31,hi8(3999)
	1: sbiw r30,1
	brne 1b
	rjmp .
	nop
.L60:
	ld r18,X+
	ld r19,X
	sbiw r26,1
	lds r30,fadeoutLed
	cpi r18,24
	ldi r31,46
	cpc r19,r31
	brlo .L62
	lsl r30
	sbc r31,r31
	subi r30,lo8(-(screenBuffer))
	sbci r31,hi8(-(screenBuffer))
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	sts fadeoutLed,r24
	lds r24,i
	subi r24,lo8(-(1))
	sts i,r24
.L57:
	lds r24,i
	cpi r24,lo8(20)
	brsh .+2
	rjmp .L63
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	fadeInOut, .-fadeInOut
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	rcall setup
	rcall startFrameTimer
.L72:
	lds r30,currDemo
	lsl r30
	sbc r31,r31
	subi r30,lo8(-(demos))
	sbci r31,hi8(-(demos))
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	icall
	sbis 0x16,2
	rjmp .L72
	rcall sleepNow
	rjmp .L72
	.size	main, .-main
.global	fadeoutLed
	.section	.bss.fadeoutLed,"aw",@nobits
	.type	fadeoutLed, @object
	.size	fadeoutLed, 1
fadeoutLed:
	.zero	1
.global	d
	.section	.data.d,"aw",@progbits
	.type	d, @object
	.size	d, 1
d:
	.byte	9
.global	dd
	.section	.data.dd,"aw",@progbits
	.type	dd, @object
	.size	dd, 1
dd:
	.byte	-1
.global	demos
	.section	.data.demos,"aw",@progbits
	.type	demos, @object
	.size	demos, 6
demos:
	.word	gs(loop)
	.word	gs(lightCones)
	.word	gs(fadeInOut)
.global	currDemo
	.section	.bss.currDemo,"aw",@nobits
	.type	currDemo, @object
	.size	currDemo, 1
currDemo:
	.zero	1
.global	leds
	.section	.data.leds,"aw",@progbits
	.type	leds, @object
	.size	leds, 18
leds:
	.byte	1
	.byte	4
	.byte	3
	.byte	2
	.byte	16
	.byte	18
	.byte	19
	.byte	20
	.byte	32
	.byte	33
	.byte	35
	.byte	36
	.byte	48
	.byte	49
	.byte	50
	.byte	52
	.byte	64
	.byte	65
.global	currLed
	.section	.bss.currLed,"aw",@nobits
	.type	currLed, @object
	.size	currLed, 1
currLed:
	.zero	1
	.comm	screenBuffer,36,1
.global	i
	.section	.bss.i,"aw",@nobits
	.type	i, @object
	.size	i, 1
i:
	.zero	1
.global	logValues
	.section	.progmem.data.logValues,"a",@progbits
	.type	logValues, @object
	.size	logValues, 256
logValues:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	16
	.byte	16
	.byte	17
	.byte	17
	.byte	18
	.byte	18
	.byte	19
	.byte	19
	.byte	20
	.byte	21
	.byte	21
	.byte	22
	.byte	22
	.byte	23
	.byte	23
	.byte	24
	.byte	25
	.byte	25
	.byte	26
	.byte	27
	.byte	27
	.byte	28
	.byte	29
	.byte	29
	.byte	30
	.byte	31
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.byte	64
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	87
	.byte	88
	.byte	89
	.byte	91
	.byte	92
	.byte	93
	.byte	95
	.byte	96
	.byte	98
	.byte	99
	.byte	100
	.byte	102
	.byte	103
	.byte	105
	.byte	106
	.byte	108
	.byte	109
	.byte	111
	.byte	112
	.byte	114
	.byte	115
	.byte	117
	.byte	119
	.byte	120
	.byte	122
	.byte	123
	.byte	125
	.byte	127
	.byte	-128
	.byte	-126
	.byte	-124
	.byte	-123
	.byte	-121
	.byte	-119
	.byte	-118
	.byte	-116
	.byte	-114
	.byte	-112
	.byte	-111
	.byte	-109
	.byte	-107
	.byte	-105
	.byte	-103
	.byte	-101
	.byte	-100
	.byte	-98
	.byte	-96
	.byte	-94
	.byte	-92
	.byte	-90
	.byte	-88
	.byte	-86
	.byte	-84
	.byte	-82
	.byte	-80
	.byte	-78
	.byte	-76
	.byte	-74
	.byte	-72
	.byte	-70
	.byte	-68
	.byte	-66
	.byte	-64
	.byte	-62
	.byte	-59
	.byte	-57
	.byte	-55
	.byte	-53
	.byte	-51
	.byte	-49
	.byte	-46
	.byte	-44
	.byte	-42
	.byte	-40
	.byte	-37
	.byte	-35
	.byte	-33
	.byte	-30
	.byte	-28
	.byte	-26
	.byte	-23
	.byte	-21
	.byte	-19
	.byte	-16
	.byte	-14
	.byte	-11
	.byte	-9
	.byte	-6
	.byte	-4
	.byte	-2
	.ident	"GCC: (GNU) 4.7.0"
.global __do_copy_data
.global __do_clear_bss
