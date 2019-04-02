
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity perm_single is
    Port ( 
        key     :in std_logic_vector(127 downto 0);
        nonce   : in std_logic_vector(127 downto 0);
        r       :out std_logic_vector(63 downto 0);
       c       : out std_logic_vector(191 downto 0)
        --    r   : out std_logic_vector(7 downto 0);
         --   c   :out std_logic_vector(7 downto 0)
     
        );
end perm_single;

architecture Behavioral of perm_single is

    component led is
        port(
            plaintext   : in std_logic_vector(63 downto 0);
            ciphertext   : out std_logic_vector(63 downto 0)
            );
    end component;
    
    component xor_r is
        port(
            x   : in std_logic_vector(63 downto 0);
            y   :   in std_logic_vector(63 downto 0);
            z   : out   std_logic_vector(63 downto 0)
            );
     end component;

  --  signal nonce    : std_logic_vector(127 downto 0):=(others=>'0');
  --  signal key      : std_logic_vector(127 downto 0):=(others=>'0');
    signal kn       : std_logic_vector(255 downto 0):=key & nonce;
    signal outled   : std_logic_vector(63 downto 0):=(others =>'0');
    signal outled2   : std_logic_vector(63 downto 0):=(others =>'0');
    
    signal outxor1   : std_logic_vector(63 downto 0):=(others =>'0');
    signal outxor2  : std_logic_vector(63 downto 0):=(others => '0');
    
begin
    led1    :led port map(kn(127 downto 64),outled);
    xor1    :xor_r port map(kn(63 downto 0),outled,outxor1);
    
    led2    :led port map(kn(255 downto 192),outled2);
    xor2    : xor_r port map(kn(191 downto 128),outled2,outxor2);
    
process
begin
  r <= kn(255 downto 192);
   c <= outxor2 & kn(127 downto 64) & outxor1;
  --  r <=kn(255 downto 248);
  --  c <= outxor2(7 downto 0);

end process;
    
end Behavioral;
