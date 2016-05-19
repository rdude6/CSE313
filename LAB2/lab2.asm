;Class:CSE 313 Machine Organization Lab
;Intstructor Taline Georgiou
;Term: Spring 2016
;Names: 
;Lab#2: Arithmetic Functions
;This program uses arithmetic functions. It will grab an inputted number from a memory location and does its math.
;It then replaces the value with the new value that has been solved into that memory location.

	.ORIG X3000
	LDI R0, X ;R0=X
	LDI R1, Y ;R0=Y
;X-Y
	NOT R3, R1 ;1S COM. OF Y
	ADD R3, R3, #1 ;2S COMP. BY ADDING 1
	ADD R3, R0, R3 ;TAKES 2S COMP. OF Y AND ADDS AND REWRITES R3 (X-Y)
	STI R3, X_Y ;STORE THE RESULT OF PROB. 
;AB. OF X
	ADD R2, R0, #0 ;
	BRzp abs1
	NOT R2, R2
	ADD R2, R2, #1
abs1 	STI R2, absx
;Ab. y
	ADD R3, R1, #0
	BRzp	abs2
	NOT R3, R3
	ADD R3, R3, #1
abs2	STI R3, absy
	NOT R4, R3
	ADD R4, R4, #1
	ADD R4, R2, R4
	BRz store
	BRn neg
	AND R4, R4, #0
	ADD R4, R4, #1
	BR store
neg	ADD R4, R4, #0
	ADD R4, R4, #2
store 	STI R4, Z
	HALT
X	.FILL X3120
Y	.FILL X3121	
X_Y 	.FILL X3122
absx	.FILL X3123
absy	.FILL X3124
Z 	.FILL X3125
.END