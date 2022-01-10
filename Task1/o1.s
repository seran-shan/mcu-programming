.thumb
.syntax unified

.include "gpio_constants.s"     // Register-adresser og konstanter for GPIO

.text
	.global Start
	
Start:
		LDR R0, =GPIO_BASE+36*LED_PORT+GPIO_PORT_DOUT				// LED adr
		LDR R4, =GPIO_BASE+36*BUTTON_PORT+GPIO_PORT_DIN	// BTN adr

		MOV R1, #LED_PIN
		MOV R2, #1
		LSL R2, R2, R1 // LED ref

		MOV R1, #BUTTON_PIN
		MOV R3, #1
		LSL R3, R3, R1 // BTN ref


	Loop:
		LDR R5, [R4]
		AND R5, R5, R3
		CMP R5, #0
		BNE False
		True:
			LDR R5, [R0]
			ORR R5, R5, R2
			STR R5, [R0]
			B Loop		
		False:
			MOV R5, #0
			//MVN R6, R1
			//AND R5, R5, R6
			STR R5, [R0]
			
		B Loop


NOP // Behold denne på bunnen av fila

