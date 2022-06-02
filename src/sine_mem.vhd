library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sine_mem is
	port (
		enable_mem		: std_logic;
		addr					: in std_logic_vector(7 downto 0);
		sine_mem_out 	: out std_logic_vector(7 downto 0)
	);
end entity sine_mem;

architecture sine_mem_arch of sine_mem is
	type mem is array (integer range 0 to 255) of std_logic_vector(7 downto 0);

	constant sine_samples : mem := (
		"10000000",
		"10000011",
		"10000110",
		"10001001",
		"10001100",
		"10001111",
		"10010010",
		"10010101",
		"10011000",
		"10011011",
		"10011110",
		"10100010",
		"10100101",
		"10100111",
		"10101010",
		"10101101",
		"10110000",
		"10110011",
		"10110110",
		"10111001",
		"10111100",
		"10111110",
		"11000001",
		"11000100",
		"11000110",
		"11001001",
		"11001011",
		"11001110",
		"11010000",
		"11010011",
		"11010101",
		"11010111",
		"11011010",
		"11011100",
		"11011110",
		"11100000",
		"11100010",
		"11100100",
		"11100110",
		"11101000",
		"11101010",
		"11101011",
		"11101101",
		"11101110",
		"11110000",
		"11110001",
		"11110011",
		"11110100",
		"11110101",
		"11110110",
		"11111000",
		"11111001",
		"11111010",
		"11111010",
		"11111011",
		"11111100",
		"11111101",
		"11111101",
		"11111110",
		"11111110",
		"11111110",
		"11111111",
		"11111111",
		"11111111",
		"11111111",
		"11111111",
		"11111111",
		"11111111",
		"11111110",
		"11111110",
		"11111110",
		"11111101",
		"11111101",
		"11111100",
		"11111011",
		"11111010",
		"11111010",
		"11111001",
		"11111000",
		"11110110",
		"11110101",
		"11110100",
		"11110011",
		"11110001",
		"11110000",
		"11101110",
		"11101101",
		"11101011",
		"11101010",
		"11101000",
		"11100110",
		"11100100",
		"11100010",
		"11100000",
		"11011110",
		"11011100",
		"11011010",
		"11010111",
		"11010101",
		"11010011",
		"11010000",
		"11001110",
		"11001011",
		"11001001",
		"11000110",
		"11000100",
		"11000001",
		"10111110",
		"10111100",
		"10111001",
		"10110110",
		"10110011",
		"10110000",
		"10101101",
		"10101010",
		"10100111",
		"10100101",
		"10100010",
		"10011110",
		"10011011",
		"10011000",
		"10010101",
		"10010010",
		"10001111",
		"10001100",
		"10001001",
		"10000110",
		"10000011",
		"10000000",
		"01111100",
		"01111001",
		"01110110",
		"01110011",
		"01110000",
		"01101101",
		"01101010",
		"01100111",
		"01100100",
		"01100001",
		"01011101",
		"01011010",
		"01011000",
		"01010101",
		"01010010",
		"01001111",
		"01001100",
		"01001001",
		"01000110",
		"01000011",
		"01000001",
		"00111110",
		"00111011",
		"00111001",
		"00110110",
		"00110100",
		"00110001",
		"00101111",
		"00101100",
		"00101010",
		"00101000",
		"00100101",
		"00100011",
		"00100001",
		"00011111",
		"00011101",
		"00011011",
		"00011001",
		"00010111",
		"00010101",
		"00010100",
		"00010010",
		"00010001",
		"00001111",
		"00001110",
		"00001100",
		"00001011",
		"00001010",
		"00001001",
		"00000111",
		"00000110",
		"00000101",
		"00000101",
		"00000100",
		"00000011",
		"00000010",
		"00000010",
		"00000001",
		"00000001",
		"00000001",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000000",
		"00000001",
		"00000001",
		"00000001",
		"00000010",
		"00000010",
		"00000011",
		"00000100",
		"00000101",
		"00000101",
		"00000110",
		"00000111",
		"00001001",
		"00001010",
		"00001011",
		"00001100",
		"00001110",
		"00001111",
		"00010001",
		"00010010",
		"00010100",
		"00010101",
		"00010111",
		"00011001",
		"00011011",
		"00011101",
		"00011111",
		"00100001",
		"00100011",
		"00100101",
		"00101000",
		"00101010",
		"00101100",
		"00101111",
		"00110001",
		"00110100",
		"00110110",
		"00111001",
		"00111011",
		"00111110",
		"01000001",
		"01000011",
		"01000110",
		"01001001",
		"01001100",
		"01001111",
		"01010010",
		"01010101",
		"01011000",
		"01011010",
		"01011101",
		"01100001",
		"01100100",
		"01100111",
		"01101010",
		"01101101",
		"01110000",
		"01110011",
		"01110110",
		"01111001",
		"01111100"
	);

begin
	mem_out : process(enable_mem, addr)
	begin
		if enable_mem = '1' then
			sine_mem_out <= sine_samples(to_integer(unsigned(addr)));
		else
			sine_mem_out <= (others => '0');
		end if;
	end process;
end architecture sine_mem_arch;
