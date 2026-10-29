--library and package
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--entity (input&output)
ENTITY display_letters IS
	PORT (
		en			:IN  std_logic;       
		data			:IN	std_logic_vector(2 downto 0);
		display		:OUT std_logic_vector(7 downto 0)
	);
END display_letters;

--architecture
ARCHITECTURE bhv OF display_letters IS
BEGIN
	process(en,data)
	begin
		if en='0' then
			display <= "ZZZZZZZZ";
		else
			case data is
				when "000" => display <= "11101111";
				when "001" => display <= "00111111";
				when "010" => display <= "00011011";
				when "011" => display <= "01111011";
				when "100" => display <= "10001111";
				when "101" => display <= "11110111";
				when others => display <= "00000000";
			end case;
		end if;
	end process;
END ARCHITECTURE bhv;