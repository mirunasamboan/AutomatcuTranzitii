library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity automat1 is
    Port ( clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
end automat1;

architecture Behavioral of automat1 is

  component dff is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC;
           qn : out STD_LOGIC);
  end component dff;

  component mux2 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           a : in STD_LOGIC;
           y : out STD_LOGIC);
  end component mux2;

  signal net1, net2, net3, net4: STD_LOGIC;
  signal qint: std_logic_vector(2 downto 0);
  signal d: std_logic_vector(2 downto 0);
  
begin

  q <= qint;
   
  U1: mux2 port map (i0=>'1', i1=>'0', a=>qint(1), y=>net1);
  U2: mux2 port map (i0=>net1, i1=>'0', a=>qint(2), y=>d(2));
  U3: mux2 port map (i0=>'1', i1=>'0', a=>qint(0), y=>net2);
  U4: mux2 port map (i0=>net2, i1=>'0', a=>qint(1), y=>net3);
  U5: mux2 port map (i0=>net3, i1=>qint(0), a=>qint(2), y=>d(1));
  U6: mux2 port map (i0=>qint(0), i1=>'0', a=>qint(1), y=>net4);
  U7: mux2 port map (i0=>net4, i1=>'1', a=>qint(2), y=>d(0));
  
  UT0: dff port map (q => qint(0),
                     d => d(0),            
                     clk => clk,
                     r => r);
                    
  UT1: dff port map (q => qint(1),
                     d => d(1),            
                     clk => clk,
                     r => r);
                     
  UT2: dff port map (q => qint(2),
                     d => d(2),            
                     clk => clk,
                     r => r);
end Behavioral;