

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity countTB is
--  Port ( );
end countTB;

architecture Behavioral of countTB is
    component counter 
        port(clk, reset : IN STD_LOGIC;
     
        display : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;
    
    
    SIGNAL display : std_logic_vector(3 downto 0);
    SIGNAL clk, reset : STD_LOGIC;
    
begin
    UUT: counter port map (
        clk => clk,
        reset => reset,
        display => display
        );
    process
    begin
    clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
   end process;
    reset <= '0';
