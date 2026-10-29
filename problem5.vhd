--library and package
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--entity (input&output)
ENTITY problem5 IS
	PORT (
		en			:IN  std_logic;       
		vt			:IN	std_logic_vector(14 downto 0);
		display		:OUT std_logic_vector(7 downto 0)
	);
END problem5;

--architecture
ARCHITECTURE bhv OF problem5 IS
BEGIN
	process(en,vt)
	variable sum:integer range 0 to 15;
	begin
		if en='0' then
			display <= "ZZZZZZZZ";
		else
			sum:=0;
			for i in 0 to 14 loop
				if (vt(i)='1') then
					sum:=sum+1;
				end if;
			end loop;
			case sum is
				when 0 => display <= "11111100";
				when 1 => display <= "01100000";
				when 2 => display <= "11011010";
				when 3 => display <= "11110010";
				when 4 => display <= "01100110";
				when 5 => display <= "10110110";
				when 6 => display <= "10111110";
				when 7 => display <= "11100100";
				when 8 => display <= "11111110";
				when 9 => display <= "11110110";
				when 10 => display <= "11101111";
				when 11 => display <= "00111111";
				when 12 => display <= "00011011";
				when 13 => display <= "01111011";
				when 14 => display <= "10011111";
				when 15 => display <= "10001111";
				when others => display <= "00000000";
			end case;
		end if;
	end process;
END ARCHITECTURE bhv;