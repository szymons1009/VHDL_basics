----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.03.2023 10:15:43
-- Design Name: 
-- Module Name: reg_4 - Behavioral
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

entity reg_4 is
  Port (
    D: in bit_vector (3 downto 0);
    Q: out bit_vector (3 downto 0);
    CLK: in bit
   );
end reg_4;

architecture Behavioral of reg_4 is

begin
process(CLK)
    begin
     if CLK'event and CLK = '1' --rising edge of CLK
        then  Q <= D;
     end if;
     end process;

end Behavioral;
