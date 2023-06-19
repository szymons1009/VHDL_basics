----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.03.2023 15:12:14
-- Design Name: 
-- Module Name: rc_add_4_tb - Behavioral
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

entity rc_add_4_tb is
--  Port ( );
end rc_add_4_tb;

architecture Behavioral of rc_add_4_tb is
component rc_add_4 is
  Port (
  A_in: in bit_vector (3 downto 0 );
  B_in: in bit_vector (3 downto 0 );
  cin: in bit;
  s: out bit_vector (3 downto 0 );
  cout: out bit
  );
end component;

signal A_in, B_in, s: bit_vector (3 downto 0) := "0000";
signal cin, cout: bit := '0';

begin
UUT: rc_add_4 port map(
    A_in => A_in,
    B_in => B_in,
    cin => cin,
    s => s,
    cout => cout
);

stim_process: process

begin 
    wait for 100 ns;
     A_in <= "0110";
     B_in <= "1100";   
     wait for 100 ns; 
     A_in <= "1111";
     B_in <= "1100";   
     wait for 100 ns;
     A_in <= "0110"; 
     B_in <= "0111";   
     cin <= '1';
     wait for 100 ns; 
     A_in <= "0110"; 
     B_in <= "1110";   
     wait for 100 ns; 
     A_in <= "1111"; 
     B_in <= "1111";
     wait;
    
    
    
end process;

end Behavioral;
