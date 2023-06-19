----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2023 11:27:54
-- Design Name: 
-- Module Name: fulladder_tb - Behavioral
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

entity fulladder_tb is
--  Port ( );
end fulladder_tb;

architecture Behavioral of fulladder_tb is

component FullAdder is

Port (
         A: in bit;
         B: in bit;
         c_in: in bit;
         sum: out bit;
         c_out: out bit
                      );
end component;

signal a1: bit := '0';
signal b1: bit := '0';
signal ci: bit := '0';
signal co: bit;
signal s1: bit;

begin
uut: FullAdder port map (A => a1, B => b1, c_in => ci, sum => s1, c_out => co);
stim_proc: process
begin
wait for 80ns;
a1 <= '0';
b1 <= '0';
ci <= '0';
wait for 80ns;
a1 <= '0';
b1 <= '1';
ci <= '0';
wait for 80ns;
a1 <= '1';
b1 <= '0';
ci <= '0';
wait for 80ns;
a1 <= '1';
b1 <= '1';
ci <= '0';
wait for 80ns;
a1 <= '1';
b1 <= '1';
ci <= '1';
wait;

end process;

end Behavioral;
