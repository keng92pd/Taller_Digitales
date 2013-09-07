--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:30:42 09/05/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio2/PruebasDivisorDeFrecuencia.vhd
-- Project Name:  Laboratorio2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DivisorFrecuencia
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
 
ENTITY PruebasDivisorDeFrecuencia IS
END PruebasDivisorDeFrecuencia;
 
ARCHITECTURE behavior OF PruebasDivisorDeFrecuencia IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DivisorFrecuencia
    PORT(
         reloj : IN  std_logic;
         segunderoSalida : OUT  std_logic;
         reset_Sincronico : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reloj : std_logic := '0';
   signal reset_Sincronico : std_logic := '0';

 	--Outputs
   signal segunderoSalida : std_logic;
   -- No clocks detected in port list. Replace reloj below with 
   -- appropriate port name 
 
   constant reloj_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DivisorFrecuencia PORT MAP (
          reloj => reloj,
          segunderoSalida => segunderoSalida,
          reset_Sincronico => reset_Sincronico
        );

   -- Clock process definitions
   reloj_process :process
   begin
		reloj <= '0';
		wait for reloj_period/2;
		reloj <= '1';
		wait for reloj_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	 	
      -- hold reset state for 100 ns.
		reset_Sincronico <= '0';
		wait for 1750 ms;	
      reset_Sincronico <= '1';
		wait for 500 ms;	
		reset_Sincronico <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
