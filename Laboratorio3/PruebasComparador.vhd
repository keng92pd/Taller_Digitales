--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:03:12 09/22/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio3/PruebasComparador.vhd
-- Project Name:  Laboratorio3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparador
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
 
ENTITY PruebasComparador IS
END PruebasComparador;
 
ARCHITECTURE behavior OF PruebasComparador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparador
    PORT(
         dato_guardado : IN  std_logic_vector(3 downto 0);
         dato_leido : IN  std_logic_vector(3 downto 0);
         realizar_comparacion : IN  std_logic;
         datos_iguales : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal dato_guardado : std_logic_vector(3 downto 0) := (others => '0');
   signal dato_leido : std_logic_vector(3 downto 0) := (others => '0');
   signal realizar_comparacion : std_logic := '0';

 	--Outputs
   signal datos_iguales : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparador PORT MAP (
          dato_guardado => dato_guardado,
          dato_leido => dato_leido,
          realizar_comparacion => realizar_comparacion,
          datos_iguales => datos_iguales
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

	dato_guardado <= "1010";
	dato_leido <= "1010";
	wait for 200 ms;
	realizar_comparacion <= '1';
	wait for 200 ms;
	realizar_comparacion <= '0';
	dato_guardado <= "1010";
	dato_leido <= "1011";
	wait for 200 ms;
	realizar_comparacion <= '1';
	wait for 200 ms;
	realizar_comparacion <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
