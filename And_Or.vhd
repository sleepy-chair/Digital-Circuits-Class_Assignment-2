--library and package
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


--entity (input&output)
ENTITY And_Or IS
	PORT (
		a,b,c,d		:IN  std_logic;                    
		out1,out2		:OUT std_logic
	);
END And_Or;

--architecture
ARCHITECTURE bhv OF And_Or IS
BEGIN
	
	out1 <= a and b and c and d;
	out2 <= a or b or c or d;
END ARCHITECTURE bhv;