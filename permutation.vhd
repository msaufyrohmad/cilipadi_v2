----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2019 12:14:30 AM
-- Design Name: 
-- Module Name: permutation - Behavioral
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

entity permutation is
    Port ( 
        sel     : in std_logic_vector(1 downto 0);
        clk     : in std_logic;
        reset   : in std_logic;
        operation  : out std_logic_vector(1 downto 0)    
    );
end permutation;

architecture Behavioral of permutation is
component perm_single is
    Port ( 
        key     :in std_logic_vector(127 downto 0);
        nonce   : in std_logic_vector(127 downto 0);
        r       :out std_logic_vector(63 downto 0);
        c       : out std_logic_vector(191 downto 0)
        );
end component;

    signal local_key : std_logic_vector(127 downto 0):=(others=>'0');
    signal local_nonce : std_logic_vector(127 downto 0):=(others=>'0');
    signal local_r : std_logic_vector(63 downto 0):=(others=>'0');
    signal local_c : std_logic_vector(191 downto 0):=(others=>'0');
    signal round_counter   :std_logic_vector(4 downto 0);
    signal op    : std_logic_vector(1 downto 0);
    
begin
    perm_test: perm_single port map(local_key,local_nonce,local_r,local_c);

process(clk,reset)
begin
    if reset='1' then
        operation <= "01";
    elsif reset='0' and clk='1' then
        operation <= "11";
    end if;
end process;
end Behavioral;
