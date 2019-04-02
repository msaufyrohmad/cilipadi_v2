library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ac is
    Port ( 
        x   : in std_logic_vector(63 downto 0);
        y   : out std_logic_vector(63 downto 0)    
    );
end ac;

architecture Behavioral of ac is
    signal rc1  :std_logic_vector(3 downto 0):="0000";
    signal rc2  :std_logic_vector(3 downto 0):="0001";
    signal rc3  :std_logic_vector(3 downto 0):="0010";
    signal rc4  :std_logic_vector(3 downto 0):="0011";
    signal rc5  :std_logic_vector(3 downto 0):="0100";
    signal rc6  :std_logic_vector(3 downto 0):="0101";
    signal rc7  :std_logic_vector(3 downto 0):="0110";
    signal rc8  :std_logic_vector(3 downto 0):="0111";
    
    signal ac_in    : std_logic_vector(63 downto 0);

begin
    ac_in(3 downto 0) <= x(3 downto 0)xor rc1; 
    ac_in(19 downto 16) <= x(19 downto 16)xor rc2; 
    ac_in(35 downto 32) <= x(35 downto 32)xor rc3; 
    ac_in(51 downto 48) <= x(51 downto 48)xor rc4; 

    ac_in(7 downto 4) <= x(7 downto 4)xor rc5; 
    ac_in(23 downto 20) <= x(23 downto 20)xor rc6; 
    ac_in(39 downto 36) <= x(39 downto 36)xor rc7; 
    ac_in(55 downto 52) <= x(55 downto 52)xor rc8; 

    y(7 downto 0)<= ac_in(7 downto 0);
    y(23 downto 16)<= ac_in(23 downto 16);
    y(39 downto 32)<= ac_in(39 downto 32);
    y(55 downto 48)<= ac_in(55 downto 48);
    
    y(15 downto 8)<= ac_in(15 downto 8);
    y(31 downto 24)<= ac_in(31 downto 24);
    y(47 downto 40)<= ac_in(47 downto 40);
    y(63 downto 56)<= ac_in(63 downto 56);
        
end Behavioral;
