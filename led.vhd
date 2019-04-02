library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led is
Port ( plaintext   : in std_logic_vector(63 downto 0);
       ciphertext : out  STD_LOGIC_VECTOR (63 downto 0)
       );
end led;

architecture Behavioral of led is

component ac is
    port(
        x   : in std_logic_vector(63 downto 0);
        y   : out std_logic_vector(63 downto 0)    
    );
end component;
   
component sc is
    port(
        x   : in std_logic_vector(63 downto 0);
        y   : out std_logic_vector(63 downto 0)
        );
end component;

component sr is
    port(
        x   : in std_logic_vector(63 downto 0);
        y   : out std_logic_vector(63 downto 0)
        );
end component;

component mcs is
    port(
        In_Mat   : in std_logic_vector(63 downto 0);
        Out_Mat   : out std_logic_vector(63 downto 0)
        );
end component;

    signal ac_out   : std_logic_vector(63 downto 0);
    signal sc_out   : std_logic_vector(63 downto 0);
    signal sr_out   : std_logic_vector(63 downto 0);
    signal mcs_out   : std_logic_vector(63 downto 0);
    
    signal ac2_out   : std_logic_vector(63 downto 0);
    signal sc2_out   : std_logic_vector(63 downto 0);
    signal sr2_out   : std_logic_vector(63 downto 0);
    signal mcs2_out   : std_logic_vector(63 downto 0);
    
begin
    addconstants    :ac port map(plaintext,ac_out);
    subcell         :sc port map(ac_out,sc_out);
    shiftrow        : sr port map(sc_out,sr_out);
    mixcolumn        : mcs port map(sr_out,mcs_out);
    
    addconstants2   :ac port map(mcs_out,ac2_out);
    subcell2        :sc port map(ac2_out,sc2_out);
    shiftrow2       :sr port map(sc2_out,sr2_out);
    mixcolumn2      :mcs port map(sr2_out,mcs2_out);
    
 process
 begin
    ciphertext <= mcs2_out;
 end process;   
        
end Behavioral;