library ieee;
use ieee.std_logic_1164.all;

entity registro is port (
le,op : in std_logic;
entradas : in std_logic_vector(3 downto 0);
salidas:out std_logic_vector(3 downto 0)
);
end registro;

architecture behavioral of registro is 
signal reg_d : std_logic_vector(3 downto 0);
begin 
 process(le,op)
	begin 
		if(le='1' and op='0') then 
			reg_d<=entradas;
		elsif(le='0' and op='0') then
			reg_d<=reg_d;
		elsif(op='0'and le='0') then
			salidas <= "ZZZZ";
		elsif(op='1' and le='0') then 
			salidas <= reg_d;
		end if;
	end process;
end behavioral;
