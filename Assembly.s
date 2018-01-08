	AREA  Lab_05_SyedAhmed_Zaidi, CODE, READONLY
	EXPORT __main

__main

	MOV R0, SP; Replace ___ with base register.
	MOV R1, #1 ; R1 will be used to increment the loop.
	MOV R2, #20; R2 will represent the number of iterations.
	MOV R3, #0 ; R3 will be used to hold the sum of the array.

storeValuesLoop
	STR R1,[R0], #4 ;Store the value of R1 to address of R0, then auto increment the address by 4. Hint use STR instruction.
	ADD R1, #1; Increment the Loop by adding 1 to R1
	CMP R1, R2; Compare R1 & R2 to determine if we need to exit the loop or not
	BLE storeValuesLoop; Stay in the loop if R1 is less than or equal to R2

	
	MOV R1, #1 ; Reset R1 to start from the beginning again for the 2nd loop.
	MOV R0, SP ; Reset _____________ with the code to reset the pointer to be able to use it in the 2n loop below.

readValuesLoop
	LDR R4, [R0], #4;Read the value of current iteration to R4. Hint use LDR instruction.
	ADD R3, R4 ; Add the value your read [R4] to the sum [R3]
	ADD R1, #1; Increment the Loop by adding 1 to R1
	CMP R1, R2; Compare R1 & R2 to determine if we need to exit the loop or not
	BLE readValuesLoop; Stay in the loop if R1 is less than or equal to R2

stop B stop 
	END