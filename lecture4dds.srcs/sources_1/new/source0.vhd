----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.03.2023 12:49:58
-- Design Name: 
-- Module Name: source0 - Behavioral
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

entity source0 is
 Port (A, B, C, D: in bit; E: out bit );
end source0;

architecture Behavioral of source0 is
signal X, Y: bit;
begin
X <= A and B;
Y <= C and D;
E <= X or Y;
--X <= A nand B;
--Y <= C nand D;
--E <= X nand Y

end Behavioral;
