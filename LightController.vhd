library IEEE; use IEEE.STD_LOGIC_1164.ALL;

entity LightController is
	port(
		reset_n, clk: in STD_LOGIC;
		motifR: out std_logic_vector(7 downto 4);
		motifG: out std_logic_vector(3 downto 0));
end LightController;

architecture arch of LightController is
	signal jour_bus: std_logic_vector(2 downto 0);
begin
	INST1: entity work.Controller
		port map (
			clk => clk,
			reset_n => reset_n,
			jour => jour_bus
		);
	INST2: entity work.TruthTable
		port map (
			inp => jour_bus,
			Out1 => motifR,
			Out2 => motifG
		);
		
end arch;