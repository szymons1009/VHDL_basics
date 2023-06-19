----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.03.2023 13:38:17
-- Design Name: 
-- Module Name: mux4_1 - Behavioral
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

entity mux4_1 is
    
   Port (a, b, c, d, s0, s1: in bit;
         z: out bit
   );
end mux4_1;

architecture Behavioral of mux4_1 is

component mux2_1 is
  Port (
    a, b, s: in bit;
    y: out bit
   );
end component;
signal n1, n2: bit;

begin
mux1: mux2_1 port map (a, b, s0, n1);
mux2: mux2_1 port map (c, d, s0, n2);
mux3: mux2_1 port map (n1, n2, s1, z);

end Behavioral;
