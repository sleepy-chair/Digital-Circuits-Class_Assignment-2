--library and package
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


--entity (input&output)
ENTITY mux8_1 IS
	PORT (
		a,b,c,d,e,f,g,i	:IN  std_logic;       
		ch				:IN	std_logic_vector(2 downto 0);
		data				:OUT std_logic
	);
END mux8_1;

--architecture
ARCHITECTURE bhv OF mux8_1 IS
BEGIN
	process(a,b,c,d,e,f,g,i,ch)
	begin
		case ch is
			when "000" => data <= a;
			when "001" => data <= b;
			when "010" => data <= c;
			when "011" => data <= d;
			when "100" => data <= e;
			when "101" => data <= f;
			when "110" => data <= g;
			when "111" => data <= i;
			when others => data <= '0';
		end case;
	end process;
END ARCHITECTURE bhv;
