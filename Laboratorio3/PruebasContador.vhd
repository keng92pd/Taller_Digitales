--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:03:35 09/20/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio3/PruebasContador.vhd
-- Project Name:  Laboratorio3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Contador4Bits
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
 
ENTITY PruebasContador IS
END PruebasContador;
 
ARCHITECTURE behavior OF PruebasContador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Contador4Bits
    PORT(
         solicitar_direccion : IN  std_logic;
         reset_sinc : IN  std_logic;
         direccion_siguiente : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal solicitar_direccion : std_logic := '0';
   signal reset_sinc : std_logic := '0';

 	--Outputs
   signal direccion_siguiente : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Contador4Bits PORT MAP (
          solicitar_direccion => solicitar_direccion,
          reset_sinc => reset_sinc,
          direccion_siguiente => direccion_siguiente
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		reset_sinc <= '1';
			wait for 170 ms;
	 reset_sinc <= '0';
		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0'; 
 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';		
		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 	 		wait for 170 ms;
	 solicitar_direccion <= '1';
	 	wait for 170 ms;
	 solicitar_direccion <= '0';
	 
	 -- insert stimulus here 
   
	wait;
   end process;

END;
