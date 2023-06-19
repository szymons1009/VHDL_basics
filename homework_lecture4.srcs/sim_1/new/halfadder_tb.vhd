----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2023 10:53:43
-- Design Name: 
-- Module Name: halfadder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity halfadder_tb is
--  Port ( );
end halfadder_tb;

architecture Behavioral of halfadder_tb is

component HalfAdder is

Port (
         A: in bit;
         B: in bit;
         sum: out bit;
         carry: out bit
                      );
end component;

signal a1: bit := '0';
signal b1: bit := '0';
signal c1: bit;
signal s1: bit;
begin
uut: HalfAdder port map (A => a1, B => b1, carry => c1, sum => s1);
stim_proc: process
begin
wait for 80ns;
a1 <= '0';
b1 <= '0';

wait for 80ns;
a1 <= '0';
b1 <= '1';

wait for 80ns;
a1 <= '1';
b1 <= '0';

wait for 80ns;
a1 <= '1';
b1 <= '1';

wait;

end process;
end Behavioral;
