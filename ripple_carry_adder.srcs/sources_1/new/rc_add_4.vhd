----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.03.2023 09:18:36
-- Design Name: 
-- Module Name: 4bit - Behavioral
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

entity rc_add_4 is
  Port (
  A_in: in bit_vector (3 downto 0 );
  B_in: in bit_vector (3 downto 0 );
  cin: in bit;
  s: out bit_vector (3 downto 0 );
  cout: out bit
  );
end rc_add_4;

architecture Behavioral of rc_add_4 is
component FullAdder
    Port (
         A, B: in bit;
         c_in: in bit;
         sum: out bit;
         c_out: out bit
                      );
 end component;
 signal n1, n2, n3: bit;
begin
    fadd0: FullAdder port map(A_in(0), B_in(0), cin, s(0), n1); 
    fadd1: FullAdder port map(A_in(1), B_in(1), n1, s(1), n2); 
    fadd2: FullAdder port map(A_in(2), B_in(2), n2, s(2), n3);
    fadd3: FullAdder port map(A_in(3), B_in(3), n3, s(3), cout);  

end Behavioral;