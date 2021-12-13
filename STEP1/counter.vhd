

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


entity counter is
    PORT(
        clk : IN STD_LOGIC;
        --hsync : OUT STD_LOGIC;
        reset : IN STD_LOGIC;
        display : out STD_LOGIC_VECTOR (3 downto 0)
        --clk_out : OUT STD_LOGIC;
        --vsync: OUT STD_LOGIC
       );
end counter;

architecture Behavioral of counter is
    SIGNAL div : std_logic_vector(3 downto 0);
    SIGNAL count : std_logic_vector(3 downto 0) := "0000";
    
begin

process(clk, reset)
begin
    if reset = '1' then
        count <= "0000";
    elsif (rising_edge(clk))then
         count <= count + x"1"; 
    end if;
end process;

display <= count;





end Behavioral;
