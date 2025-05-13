--Pablo Moreno
--Lab 6, part 1
--Class: 11750
--Emily N
--Next state Truth Table logic
library ieee;
use ieee.std_logic_1164.all; 
entity Lab_Part2 is port(
Q1, Q0, IR2, IR1, IR0: in std_logic; 
D1, D0, MSA1, MSA0, MSB1, MSB0, MSC2, MSC1, MSC0, IRLD, PCInc, PCLD: out std_logic
);
end Lab_Part2;
architecture bhv of Lab_Part2 is
signal CW: std_logic;
begin
D1 <= ((not IR2) and (not IR1) and (not IR0) and (not Q1) and Q0) or
		(IR2 and (not IR1) and  IR0 and (not Q1) and Q0);
		
D0 <= ((not Q1) and (not Q0)) or
		(IR2 and (not IR1) and  IR0 and (not Q1) and Q0);
		
MSA1 <= ((not IR2) and IR1 and (not IR0) and (not Q1) and Q0) or
			((not IR2) and IR1 and IR0 and (not Q1) and  Q0) or 
		  ( IR2 and (not IR1) and (not IR0) and (not Q1) and  Q0);
		  
MSA0 <= ((not Q1) and (not Q0)) or
			((not IR2) and (not IR1) and (not IR0) and (not Q1) and Q0) or 
			(Q1 and Q0) or
			((not IR2) and (not IR1) and IR0 and (not Q1) and Q0) or
			((not IR2) and IR1 and (not IR0) and (not Q1) and Q0) or
			((not IR2) and IR1 and IR0 and (not Q1) and  Q0) or 
		  ( IR2 and (not IR1) and (not IR0) and (not Q1) and  Q0) or
		  (IR2 and (not IR1) and  IR0 and (not Q1) and Q0);
		  
MSB1 <= '1';

MSB0 <= ((not IR2) and (not IR1) and IR0 and (not Q1) and Q0) ;
			
		
MSC2 <= ((not IR2) and IR1 and (not IR0) and (not Q1) and Q0) or
		((not IR2) and IR1 and IR0 and (not Q1) and  Q0) or 
		  ( IR2 and (not IR1) and (not IR0) and (not Q1) and  Q0);
		  
MSC1 <= ((not IR2) and IR1 and (not IR0) and (not Q1) and Q0) or
			((not IR2) and IR1 and IR0 and (not Q1) and  Q0);

MSC0 <=  ((not IR2) and IR1 and (not IR0) and (not Q1) and Q0) or
		( IR2 and (not IR1) and (not IR0) and (not Q1) and  Q0);

IRLD <= (not Q1) and (not Q0);

PCInc <= Q1 or Q0;

PCLD <= Q1 and Q0;
		
end bhv;