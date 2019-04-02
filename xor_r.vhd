----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2019 11:51:14 PM
-- Design Name: 
-- Module Name: xor_r - Behavioral
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

entity xor_r is
    Port ( 
        x   : in std_logic_vector(63 downto 0);
        y   : in std_logic_vector(63 downto 0);
        z   : out std_logic_vector(63 downto 0)    
    );
end xor_r;

architecture Behavioral of xor_r is
   
begin
    z <= x xor y;
end Behavioral;
