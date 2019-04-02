library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sc is
    Port ( 
        x   : in std_logic_vector(63 downto 0);
        y   : out std_logic_vector(63 downto 0)    
    );
end sc;

architecture Behavioral of sc is

component sbox is 
Port (  
        x : in  STD_LOGIC_VECTOR (3 downto 0);
        y : out STD_LOGIC_VECTOR (3 downto 0)
        );
end component;

begin
o1  : sbox port map (x(63 downto 60), y(63 downto 60));
o2  : sbox port map (x(59 downto 56), y(59 downto 56));
o3  : sbox port map (x(55 downto 52), y(55 downto 52));
o4  : sbox port map (x(51 downto 48), y(51 downto 48));
o5  : sbox port map (x(47 downto 44), y(47 downto 44));
o6  : sbox port map (x(43 downto 40), y(43 downto 40));
o7  : sbox port map (x(39 downto 36),y(39 downto 36));
o8  : sbox port map (x(35 downto 32),y(35 downto 32));
o9  : sbox port map (x(31 downto 28),y(31 downto 28));
o10 : sbox port map (x(27 downto 24), y(27 downto 24));
o11 : sbox port map (x(23 downto 20),y(23 downto 20));
o12 : sbox port map (x(19 downto 16),y(19 downto 16));
o13 : sbox port map (x(15 downto 12),y(15 downto 12));
o14 : sbox port map (x(11 downto  8),y(11 downto  8));
o15 : sbox port map (x( 7 downto  4),y( 7 downto  4));
o16 : sbox port map (x( 3 downto  0),y( 3 downto  0));

end Behavioral;
