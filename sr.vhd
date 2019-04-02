library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sr is
    Port ( 
        x   : in std_logic_vector(63 downto 0);
        y   : out std_logic_vector(63 downto 0)
    );
end sr;

architecture Behavioral of sr is
signal r0,r1,r2,r3 : STD_LOGIC_VECTOR (15 downto 0);
begin

-- row by row
r0 <= x(63 downto 48);
r1 <= x(43 downto 32) & x(47 downto 44);
r2 <= x(23 downto 16) & x(31 downto 24);
r3 <= x( 3 downto  0) & x(15 downto  4); 

process
begin    
    y <= r0 & r1 & r2 & r3;
end process;
end Behavioral;

