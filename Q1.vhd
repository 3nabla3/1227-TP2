library IEEE; use IEEE.STD_LOGIC_1164.ALL;


entity TruthTable is
    Port ( inp : in  STD_LOGIC_VECTOR (2 downto 0);
           Out1 : out  STD_LOGIC_VECTOR (3 downto 0);
           Out2 : out  STD_LOGIC_VECTOR (3 downto 0));

end TruthTable;

architecture archTruthTable of TruthTable is

begin

process (inp) begin

if (inp <= "001") then
Out1 <= "1000";
Out2 <= "1000";
elsif (inp <= "010") then
Out1 <= "0100";
Out2 <= "0100";
elsif (inp<= "011") then
Out1 <= "0010";
Out2 <= "0010";
elsif (inp <= "100") then
Out1 <= "0001";
Out2 <= "0001";
elsif (inp <= "101") then
Out1 <= "1010";
Out2 <= "0101";
elsif (inp <= "110") then
Out1 <= "1001";
Out2 <= "1001";
else
Out1 <= "1111";
Out2 <= "1111";
end if;

end process;

end archTruthTable;