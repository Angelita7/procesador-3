----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:40 10/17/2016 
-- Design Name: 
-- Module Name:    MultiPlexo - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity muxx is
    Port ( i : in  STD_LOGIC;
           dato_seu : in  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           salida_mux: out  STD_LOGIC_VECTOR (31 downto 0));
end muxx;

architecture arq_mux of muxx is

begin
process(i,dato_seu,crs2)
begin
	if(i='1')then
		salida_mux<= dato_seu;--si el inmediato es cero retorna el valor del register file
	else 
		if(i='0')then
			salida_mux <= crs2;--si el valor es uno retorna el valor de unidad de extnsion 
		end if ; 
	end if; 	
end process; 

end arq_mux;