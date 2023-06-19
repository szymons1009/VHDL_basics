----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2023 11:18:13
-- Design Name: 
-- Module Name: FullAdder - Behavioral
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

entity FullAdder is
Port (
         A: in bit;
         B: in bit;
         c_in: in bit;
         sum: out bit;
         c_out: out bit
                      );
end FullAdder;

architecture Behavioral of FullAdder is

signal x1,an1,an2: bit;

begin

x1 <= A xor B;
an1 <= A and B;
sum <= x1 xor c_in;
an2 <= x1 and c_in;
c_out <= an1 or an2;

end Behavioral;
