----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:53 08/16/2015 
-- Design Name: 
-- Module Name:    COMP4BIT - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity COMP4BIT is
Port ( Data_INA : in  STD_LOGIC_VECTOR (0 to 3  );
	         Data_INB : in  STD_LOGIC_VECTOR (0 to 3  );
           Data_OutC : out  STD_LOGIC_VECTOR (0 to 3  ));
end COMP4BIT;

architecture Behavioral of COMP4BIT is

begin
  P1 : Process ( Data_INA, Data_INB ) 
      begin
		
		IF ((Data_INA <=  X"0") OR  (Data_INB <=  X"0")) then  --- If A or B zero the output zero
		      
				 Data_OutC <=  X"0";
		 elsIF  (Data_INA <=  X"1") then                          ----IF A = 1 the Out = B
		      
				 Data_OutC <=  Data_INB ;
				 
		   elsIF   (Data_INB <=  X"1") then                        --- IF B = 1 the Out = A
		      
				 Data_OutC <=  Data_INA;
				 
				  elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"2")) then
		      	 Data_OutC <=  X"4";
					 
				   elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"3")) or   ((Data_INA <=  X"3") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"6";
					 		 
					  elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"4")) or ((Data_INA <=  X"4") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"8";
					 
					  elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"5")) or  ((Data_INA <=  X"5") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"A";
					 
                 elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"6"))  or ((Data_INA <=  X"6") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"C";
					 
					 elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"7")) or  ((Data_INA <=  X"7") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"E";
					 
					  elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"8")) or  ((Data_INA <=  X"8") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"3";
					 
					  elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"9")) or  ((Data_INA <=  X"9") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"1";
					 
					 elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"A")) or ((Data_INA <=  X"A") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"7";
					 
					 elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"B")) or((Data_INA <=  X"B") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"5";
					 
					 elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"C")) or ((Data_INA <=  X"C") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"B";
					 
					 elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"D"))  or ((Data_INA <=  X"D") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"9";
					 
					 elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"E"))  or ((Data_INA <=  X"E") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"F";
					 
					 elsIF ((Data_INA <=  X"2") and (Data_INB <=  X"f")) or((Data_INA <=  X"F") and (Data_INB <=  X"2"))then
		      	 Data_OutC <=  X"D";
					 ---------------------------------------------
					  elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"3")) then
		      	 Data_OutC <=  X"5";
					 		 
					  elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"4"))  or ((Data_INA <=  X"4") and (Data_INB <=  X"3"))then
		      	 Data_OutC <=  X"C";
					 
					  elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"5"))  or ((Data_INA <=  X"5") and (Data_INB <=  X"3"))then
		      	 Data_OutC <=  X"F";
					 
                 elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"6")) or ((Data_INA <=  X"6") and (Data_INB <=  X"3"))then
		      	 Data_OutC <=  X"A";
					 
					 elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"7")) or ((Data_INA <=  X"7") and (Data_INB <=  X"3"))then
		      	 Data_OutC <=  X"9";
					 
					  elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"8")) or ((Data_INA <=  X"8") and (Data_INB <=  X"3"))then
		      	 Data_OutC <=  X"B";
					 
					 
					  elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"9")) or ((Data_INA <=  X"9") and (Data_INB <=  X"3"))then
		      	 Data_OutC <=  X"8";
					 
					 elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"A"))  or  ((Data_INA <=  X"A") and (Data_INB <=  X"3"))then
		      	 Data_OutC <=  X"D";
					 
					 elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"B"))  or ((Data_INA <=  X"B") and (Data_INB <=  X"3"))then
		      	 Data_OutC <=  X"E";
					 
					 elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"C") ) or ((Data_INA <=  X"C") and (Data_INB <=  X"3"))then
		      	 Data_OutC <=  X"7";
					 
					 elsIF ((Data_INA <=  X"3") and (Data_INB <=  X"D")) or  ((Data_INA <=  X"D") and (Data_INB <=  X"3"))then
		      	 Data_OutC <=  X"4";
			
					 
					  elsIF  ((Data_INA <=  X"E") and (Data_INB <=  X"3")) or ((Data_INA <=  X"3") and (Data_INB <=  X"E"))
					  then		      	 Data_OutC <=  X"1";

					 
					  elsIF  ((Data_INA <=  X"F") and (Data_INB <=  X"3")) or ((Data_INA <=  X"3") and (Data_INB <=  X"f"))then
		      	 Data_OutC <=  X"2";
					 ----------------------------------------------------------------------------------------
					   
					 		 
					  elsIF ((Data_INA <=  X"4") and (Data_INB <=  X"4")) then
		      	 Data_OutC <=  X"3";
					  elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"5")) or  ((Data_INA <=  X"5") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"7";
                 elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"6")) or  ((Data_INA <=  X"6") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"B";
					 elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"7")) or  ((Data_INA <=  X"7") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"F";
					  elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"8")) or  ((Data_INA <=  X"8") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"6";
					  elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"9")) or  ((Data_INA <=  X"9") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"2";
					 elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"A")) or  ((Data_INA <=  X"A") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"E";
					 elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"B")) or  ((Data_INA <=  X"B") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"A";
					 elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"C")) or  ((Data_INA <=  X"C") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"5";
					 elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"D")) or  ((Data_INA <=  X"D") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"1";
					 elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"E")) or  ((Data_INA <=  X"E") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"D";
					 elsIF (((Data_INA <=  X"4") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"4")))then
		      	 Data_OutC <=  X"9";
					 
				-----------------------------------------------------------------------------------------------------
                
					  elsIF ((Data_INA <=  X"5") and (Data_INB <=  X"5")) then
		      	 Data_OutC <=  X"2";
                 elsIF (((Data_INA <=  X"5") and (Data_INB <=  X"6")) or  ((Data_INA <=  X"6") and (Data_INB <=  X"5")))then
		      	 Data_OutC <=  X"D";
					 elsIF (((Data_INA <=  X"5") and (Data_INB <=  X"7")) or  ((Data_INA <=  X"7") and (Data_INB <=  X"5")))then
		      	 Data_OutC <=  X"8";
					  elsIF (((Data_INA <=  X"5") and (Data_INB <=  X"8")) or  ((Data_INA <=  X"8") and (Data_INB <=  X"5")))then
		      	 Data_OutC <=  X"E";
					  elsIF (((Data_INA <=  X"5") and (Data_INB <=  X"9")) or  ((Data_INA <=  X"9") and (Data_INB <=  X"5")))then
		      	 Data_OutC <=  X"B";
					 elsIF (((Data_INA <=  X"5") and (Data_INB <=  X"A")) or  ((Data_INA <=  X"A") and (Data_INB <=  X"5")))then
		      	 Data_OutC <=  X"4";
					 elsIF (((Data_INA <=  X"5") and (Data_INB <=  X"B")) or  ((Data_INA <=  X"B") and (Data_INB <=  X"5")))then
		      	 Data_OutC <=  X"1";
					 elsIF (((Data_INA <=  X"5") and (Data_INB <=  X"C")) or  ((Data_INA <=  X"C") and (Data_INB <=  X"5")))then
		      	 Data_OutC <=  X"9";
					 elsIF (((Data_INA <=  X"5") and (Data_INB <=  X"D")) or  ((Data_INA <=  X"D") and (Data_INB <=  X"5")))then
		      	 Data_OutC <=  X"C";
					 elsIF (((Data_INA <=  X"5") and (Data_INB <=  X"E")) or  ((Data_INA <=  X"E") and (Data_INB <=  X"5")))then
		      	 Data_OutC <=  X"3";
					 elsIF (((Data_INA <=  X"5") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"5")))then
		      	 Data_OutC <=  X"6";

---------------------------------------------------------------------------
  
                 elsIF ((Data_INA <=  X"6") and (Data_INB <=  X"6"))then
		      	 Data_OutC <=  X"7";
					 elsIF (((Data_INA <=  X"6") and (Data_INB <=  X"7")) or  ((Data_INA <=  X"7") and (Data_INB <=  X"6")))then
		      	 Data_OutC <=  X"1";
					  elsIF (((Data_INA <=  X"6") and (Data_INB <=  X"8")) or  ((Data_INA <=  X"8") and (Data_INB <=  X"6")))then
		      	 Data_OutC <=  X"5";
					  elsIF (((Data_INA <=  X"6") and (Data_INB <=  X"9")) or  ((Data_INA <=  X"9") and (Data_INB <=  X"6")))then
		      	 Data_OutC <=  X"3";
					 elsIF (((Data_INA <=  X"6") and (Data_INB <=  X"A")) or  ((Data_INA <=  X"A") and (Data_INB <=  X"6")))then
		      	 Data_OutC <=  X"9";
					 elsIF (((Data_INA <=  X"6") and (Data_INB <=  X"B")) or  ((Data_INA <=  X"B") and (Data_INB <=  X"6")))then
		      	 Data_OutC <=  X"F";
					 elsIF (((Data_INA <=  X"6") and (Data_INB <=  X"C")) or  ((Data_INA <=  X"C") and (Data_INB <=  X"6")))then
		      	 Data_OutC <=  X"E";
					 elsIF (((Data_INA <=  X"6") and (Data_INB <=  X"D")) or  ((Data_INA <=  X"D") and (Data_INB <=  X"6")))then
		      	 Data_OutC <=  X"8";
					 elsIF (((Data_INA <=  X"6") and (Data_INB <=  X"E")) or  ((Data_INA <=  X"E") and (Data_INB <=  X"6")))then
		      	 Data_OutC <=  X"2";
					 elsIF (((Data_INA <=  X"6") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"6")))then
		      	 Data_OutC <=  X"4";	

---------------------------------------------------------------------------------------------------------------------


 
					 elsIF ((Data_INA <=  X"7") and (Data_INB <=  X"7")) then
		      	 Data_OutC <=  X"6";
					  elsIF (((Data_INA <=  X"7") and (Data_INB <=  X"8")) or  ((Data_INA <=  X"8") and (Data_INB <=  X"7")))then
		      	 Data_OutC <=  X"D";
					  elsIF (((Data_INA <=  X"7") and (Data_INB <=  X"9")) or  ((Data_INA <=  X"9") and (Data_INB <=  X"7")))then
		      	 Data_OutC <=  X"A";
					 elsIF (((Data_INA <=  X"7") and (Data_INB <=  X"A")) or  ((Data_INA <=  X"A") and (Data_INB <=  X"7")))then
		      	 Data_OutC <=  X"3";
					 elsIF (((Data_INA <=  X"7") and (Data_INB <=  X"B")) or  ((Data_INA <=  X"B") and (Data_INB <=  X"7")))then
		      	 Data_OutC <=  X"4";
					 elsIF (((Data_INA <=  X"7") and (Data_INB <=  X"C")) or  ((Data_INA <=  X"C") and (Data_INB <=  X"7")))then
		      	 Data_OutC <=  X"2";
					 elsIF (((Data_INA <=  X"7") and (Data_INB <=  X"D")) or  ((Data_INA <=  X"D") and (Data_INB <=  X"7")))then
		      	 Data_OutC <=  X"5";
					 elsIF (((Data_INA <=  X"7") and (Data_INB <=  X"E")) or  ((Data_INA <=  X"E") and (Data_INB <=  X"7")))then
		      	 Data_OutC <=  X"C";
					 elsIF (((Data_INA <=  X"7") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"7")))then
		      	 Data_OutC <=  X"B";	
-------------------------------------------------------------------------------------------------------------
 					  elsIF ((Data_INA <=  X"8") and (Data_INB <=  X"8"))then
		      	 Data_OutC <=  X"C";
					  elsIF (((Data_INA <=  X"8") and (Data_INB <=  X"9")) or  ((Data_INA <=  X"9") and (Data_INB <=  X"8")))then
		      	 Data_OutC <=  X"4";
					 elsIF (((Data_INA <=  X"8") and (Data_INB <=  X"A")) or  ((Data_INA <=  X"A") and (Data_INB <=  X"8")))then
		      	 Data_OutC <=  X"F";
					 elsIF (((Data_INA <=  X"8") and (Data_INB <=  X"B")) or  ((Data_INA <=  X"B") and (Data_INB <=  X"8")))then
		      	 Data_OutC <=  X"7";
					 elsIF (((Data_INA <=  X"8") and (Data_INB <=  X"C")) or  ((Data_INA <=  X"C") and (Data_INB <=  X"8")))then
		      	 Data_OutC <=  X"A";
					 elsIF (((Data_INA <=  X"8") and (Data_INB <=  X"D")) or  ((Data_INA <=  X"D") and (Data_INB <=  X"8")))then
		      	 Data_OutC <=  X"2";
					 elsIF (((Data_INA <=  X"8") and (Data_INB <=  X"E")) or  ((Data_INA <=  X"E") and (Data_INB <=  X"8")))then
		      	 Data_OutC <=  X"9";
					 elsIF (((Data_INA <=  X"8") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"8")))then
		      	 Data_OutC <=  X"1";	
					 
					-------------------------------------------------------------------------------------------------------
 
					 elsIF ((Data_INA <=  X"9") and (Data_INB <=  X"9")) then
		      	 Data_OutC <=  X"D";
					 elsIF (((Data_INA <=  X"9") and (Data_INB <=  X"A")) or  ((Data_INA <=  X"A") and (Data_INB <=  X"9")))then
		      	 Data_OutC <=  X"5";
					 elsIF (((Data_INA <=  X"9") and (Data_INB <=  X"B")) or  ((Data_INA <=  X"B") and (Data_INB <=  X"9")))then
		      	 Data_OutC <=  X"C";
					 elsIF (((Data_INA <=  X"9") and (Data_INB <=  X"C")) or  ((Data_INA <=  X"C") and (Data_INB <=  X"9")))then
		      	 Data_OutC <=  X"6";
					 elsIF (((Data_INA <=  X"9") and (Data_INB <=  X"D")) or  ((Data_INA <=  X"D") and (Data_INB <=  X"9")))then
		      	 Data_OutC <=  X"F";
					 elsIF (((Data_INA <=  X"9") and (Data_INB <=  X"E")) or  ((Data_INA <=  X"E") and (Data_INB <=  X"9")))then
		      	 Data_OutC <=  X"7";
					 elsIF (((Data_INA <=  X"9") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"9")))then
		      	 Data_OutC <=  X"E";						
					 
			----------------------------------------------------------------------------------------------------------------------
  
					 elsIF ((Data_INA <=  X"A") and (Data_INB <=  X"A"))  then
		      	 Data_OutC <=  X"8";
					 elsIF (((Data_INA <=  X"A") and (Data_INB <=  X"B")) or  ((Data_INA <=  X"B") and (Data_INB <=  X"A")))then
		      	 Data_OutC <=  X"2";
					 elsIF (((Data_INA <=  X"A") and (Data_INB <=  X"C")) or  ((Data_INA <=  X"C") and (Data_INB <=  X"A")))then
		      	 Data_OutC <=  X"1";
					 elsIF (((Data_INA <=  X"A") and (Data_INB <=  X"D")) or  ((Data_INA <=  X"D") and (Data_INB <=  X"A")))then
		      	 Data_OutC <=  X"B";
					 elsIF (((Data_INA <=  X"A") and (Data_INB <=  X"E")) or  ((Data_INA <=  X"E") and (Data_INB <=  X"A")))then
		      	 Data_OutC <=  X"6";
					 elsIF (((Data_INA <=  X"A") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"A")))then
		      	 Data_OutC <=  X"C";				
					 
					 
------------------------------------------------------------------------------------------------------------------------------
  
					 elsIF ((Data_INA <=  X"B") and (Data_INB <=  X"B")) then
		      	 Data_OutC <=  X"9";
					 elsIF (((Data_INA <=  X"B") and (Data_INB <=  X"C")) or  ((Data_INA <=  X"C") and (Data_INB <=  X"B")))then
		      	 Data_OutC <=  X"D";
					 elsIF (((Data_INA <=  X"B") and (Data_INB <=  X"D")) or  ((Data_INA <=  X"D") and (Data_INB <=  X"B")))then
		      	 Data_OutC <=  X"6";
					 elsIF (((Data_INA <=  X"B") and (Data_INB <=  X"E")) or  ((Data_INA <=  X"E") and (Data_INB <=  X"B")))then
		      	 Data_OutC <=  X"8";
					 elsIF (((Data_INA <=  X"B") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"B")))then
		      	 Data_OutC <=  X"3";					 
					 
		------------------------------------------------------------------------------------------------------------
 
					 elsIF ((Data_INA <=  X"C") and (Data_INB <=  X"C"))then
		      	 Data_OutC <=  X"F";
					 elsIF (((Data_INA <=  X"C") and (Data_INB <=  X"D")) or  ((Data_INA <=  X"D") and (Data_INB <=  X"C")))then
		      	 Data_OutC <=  X"3";
					 elsIF (((Data_INA <=  X"C") and (Data_INB <=  X"E")) or  ((Data_INA <=  X"E") and (Data_INB <=  X"C")))then
		      	 Data_OutC <=  X"4";
					 elsIF (((Data_INA <=  X"C") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"C")))then
		      	 Data_OutC <=  X"8";					 
					 		
					 
		-----------------------------------------------------------------------------------------------------------------------
 
					 elsIF ((Data_INA <=  X"D") and (Data_INB <=  X"D"))then
		      	 Data_OutC <=  X"E";
					 elsIF (((Data_INA <=  X"D") and (Data_INB <=  X"E")) or  ((Data_INA <=  X"E") and (Data_INB <=  X"D")))then
		      	 Data_OutC <=  X"A";
					 elsIF (((Data_INA <=  X"D") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"D")))then
		      	 Data_OutC <=  X"7";					 
					 		
	----------------------------------------------------------------------------------------------------------------------------

 
					 elsIF ((Data_INA <=  X"E") and (Data_INB <=  X"E"))then
		      	 Data_OutC <=  X"B";
					 elsIF (((Data_INA <=  X"E") and (Data_INB <=  X"f")) or  ((Data_INA <=  X"F") and (Data_INB <=  X"E")))then
		      	 Data_OutC <=  X"5";	
----------------------------------------------------------------------------------------------------------------------------

 
					 
					 elsIF ((Data_INA <=  X"F") and (Data_INB <=  X"f")) then
		      	 Data_OutC <=  X"A";							 
					 
					 
					 
		 
					 
				 end if;
			end process P1;
	end Behavioral;
