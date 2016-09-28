# Single-cycle-MIPS-processor
Designed a single clock cycle MIPS processor by verilog    
--Implemented basic instructions of lw, sw, beq, bne, add, sub, set less than, jump, etc.    
--Built basic parts of PC, instruction memory, data memory, ALU, registers file and controller.    
  
Course project of Computer Architecture, designed by single-cycle datapath. The verilog code could be completely compiled by Quartus II.  
![image](https://github.com/DiabloBlood/Single-cycle-MIPS-processor/blob/master/DataPath.png)

##1. Instruction Implementation
### Load Word (LW) and Store Word (SW) Instruction
![image](https://github.com/DiabloBlood/Single-cycle-MIPS-processor/blob/master/LW%20and%20SW.png)
### LW and Beq
![image](https://github.com/DiabloBlood/Single-cycle-MIPS-processor/blob/master/LW%20and%20beq.png)
### Jump and add
![image](https://github.com/DiabloBlood/Single-cycle-MIPS-processor/blob/master/Jump%20and%20add.png)
### Set Less Than
![image](https://github.com/DiabloBlood/Single-cycle-MIPS-processor/blob/master/Set%20Less%20Than.png)

##2.	Instruction Analysis
	00221820		add: R3, R1, R2
	AC010000		sw: R1, 0(R0)
	8C240000		lw R4, 0(R1)
	10210001		beq R1, R1, +8 		//Branch taken
	00001820		add R3, R0, R0		//This instruction will be skipped because of branch taken
	00411822		sub R3, R2, R1

	All the instruction was assigned at the “Instruction.tex”

##3.	Simulation
	The register file was be initially by assigned
			R0 = 0;
			R1 = 8;
			R2 = 20
	The instruction memory was be initially assigned
			Mem[0] = 5;
			Mem[1] = 6;
			Mem[2] = 7;
	So we could conclude all the signals as follow:

_ _ _
    clock	1	2	3	4	5
    PCout	4	8	12	16	24
    inst	00221820	AC010000	8C240000	10210001	00411822	
    ReadData1	8	0	8	8	20
    ReadData2	20	8	0	8	8
    ALUout	28	0	8	0	12
    ReadData	-	-	7	-	-
    WriteReg	R3	R1	R4	R1	R3
* * *
###
Note the 3rd clock cycle is LW instruction, so the ReadData from DataMemory was 7, ALUout = 8 means the word address was Mem[2]. 
And all of the other computing results were right. The waveform is as follow:

![image](https://github.com/DiabloBlood/Single-cycle-MIPS-processor/blob/master/CPU_waveform.PNG)
	

