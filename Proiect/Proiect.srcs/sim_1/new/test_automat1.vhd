library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_automat1 is
--  Port ( );
end test_automat1;

architecture Behavioral of test_automat1 is

component automat1 is
    Port ( clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
end component automat1;

signal clk, r: std_logic;
signal q: std_logic_vector (2 downto 0);

begin

UUT: automat1 port map (clk => clk,
                        r => r,
                        q => q);
                        
generate_clk: process --genereaza clk

begin
clk <= '0'; wait for 1 ns;
clk <= '1'; wait for 1 ns;
end process;

r <= '1' after 0 ns, '0' after 0.5 ns;

end Behavioral;
