library IEEE; use IEEE.STD_LOGIC_1164.ALL;


entity Controller is
    Port ( clk, reset_n: in STD_LOGIC;
           jour : out  STD_LOGIC_VECTOR (2 downto 0));

end Controller;

architecture archController of Controller is
	type SEMAINE is (lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche);
	signal j : SEMAINE;
begin
	process (clk, reset_n)
	begin
		if reset_n = '0' then
			j <= lundi;
		elsif (clk'EVENT and clk = '1') then
			case j is
				when lundi =>
					j <= mardi;
				when mardi =>
					j <= mercredi;
				when mercredi =>
					j <= jeudi;
				when jeudi =>
					j <= vendredi;
				when vendredi =>
					j <= samedi;
				when samedi =>
					j <= dimanche;
				when dimanche =>
					j <= lundi;
			end case;
		end if;
	end process;
	
	process (j)
	begin
		case j is
			when lundi =>
				jour <= "001";
			when mardi =>
				jour <= "010";
			when mercredi =>
				jour <= "011";
			when jeudi =>
				jour <= "100";
			when vendredi =>
				jour <= "101";
			when samedi =>
				jour <= "110";
			when dimanche =>
				jour <= "111";
		end case;
	end process;
	
end archController;