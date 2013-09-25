--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:03:23 09/22/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio3/PruebasDatoActual.vhd
-- Project Name:  Laboratorio3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DatoActual
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PruebasDatoActual IS
END PruebasDatoActual;
 
ARCHITECTURE behavior OF PruebasDatoActual IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DatoActual
    PORT(
         w : IN  std_logic;
         dato_por_guardar : IN  std_logic_vector(3 downto 0);
         dato_guardado : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal w : std_logic := '0';
   signal dato_por_guardar : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal dato_guardado : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DatoActual PORT MAP (
          w => w,
          dato_por_guardar => dato_por_guardar,
          dato_guardado => dato_guardado
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

 
	w <= '1';
	wait for 180 ms;
	dato_por_guardar <= "1111";
		wait for 180 ms;
	dato_por_guardar <= "1010";
		wait for 180 ms;
	w <= '0'; 
		wait for 180 ms;
	dato_por_guardar <= "0101";
     wait for 180 ms;
	w <= '1'; 

      -- insert stimulus here 

      wait;
   end process;

END;
