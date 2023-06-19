----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.03.2023 13:08:34
-- Design Name: 
-- Module Name: and_gate_spec_tb - Behavioral
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

entity and_gate_spec_tb is
--  Port ( );
end and_gate_spec_tb;

architecture Behavioral of and_gate_spec_tb is

component and_gate_spec is
  Port ( 
  input1, input2: in bit;
  and_result: out bit
  );
end component;

signal input1, input2, and_result : bit := '0';

begin
--Unit Under Test
 UUT: and_gate_spec port map(   
 input1 => input1,
 input2 => input2,
 and_result => and_result
 ); 
 
 stimulus_process: process
    begin
        wait for 100ns;
         input1 <= '0';
         input2 <= '0';
         wait for 100ns;
         input1 <= '1';
         input2 <= '0';
         wait for 100ns;
         input1 <= '0';
         input2 <= '1';
         wait for 100ns;
         input1 <= '1';
         input2 <= '1';
         wait;
         
    end process;
end Behavioral;
