library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity LEDBlink is
    port(
        clk: in std_logic;
        LED: out std_logic
        );
        
end LEDBlink;

architecture Behavioral of LEDBlink is
    signal counter: std_logic_vector(24 downto 0);
    signal clock: std_logic;

begin
start: process(clk)
begin
    if rising_edge(clk) then
        if counter < "1011111010111100001000000" then 
            counter <= counter + 1; 
        else 
            clock <= not clock;
            counter <= (others => '0');
        end if;
    end if;
end process start;
    
    LED <= clock; 

end Behavioral;
