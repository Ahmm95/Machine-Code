	AREA Lab_09_SyedAhmed_Zaidi, CODE, READONLY
	EXPORT __main	
	
__main
	LDR R0, =0x2345ABCD
	MOV R1, #0

loop
	LSRS R0, #1
	ADC R1, #0
	BNE loop

stop B stop
	END