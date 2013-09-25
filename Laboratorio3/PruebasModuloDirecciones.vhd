--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:41:35 09/22/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio3/PruebasModuloDirecciones.vhd
-- Project Name:  Laboratorio3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ManejoDirecciones
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
 
ENTITY PruebasModuloDirecciones IS
END PruebasModuloDirecciones;
 
ARCHITECTURE behavior OF PruebasModuloDirecciones IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ManejoDirecciones
    PORT(
         interruptor_sinc : IN  std_logic_vector(1 downto 0);
         datos_por_escribir : OUT  std_logic_vector(3 downto 0);
         direccion_actual : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal interruptor_sinc : std_logic_vector(1 downto 0) := (others => '0');
   signal direccion_actual : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal datos_por_escribir : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ManejoDirecciones PORT MAP (
          interruptor_sinc => interruptor_sinc,
          datos_por_escribir => datos_por_escribir,
          direccion_actual => direccion_actual
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      interruptor_sinc <= "11";
		wait for 180 ms;
		direccion_actual <= "0001";
		wait for 180 ms;
		direccion_actual <= "0101";
		wait for 180 ms;
		interruptor_sinc <= "01";
			wait for 180 ms;
		interruptor_sinc <= "10";
		

		
      wait;
		
		
   end process;

END;
