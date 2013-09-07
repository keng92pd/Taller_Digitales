--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:04:07 08/31/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio2/PruebasTimer.vhd
-- Project Name:  Laboratorio2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Timer
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
 
ENTITY PruebasTimer IS
END PruebasTimer;
 
ARCHITECTURE behavior OF PruebasTimer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Timer
    PORT(
         valor : IN  std_logic_vector(3 downto 0);
         segundero : IN  std_logic;
         iniciar_timer : IN  std_logic;
         tiempo_expiroSalida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal valor : std_logic_vector(3 downto 0) := (others => '0');
   signal segundero : std_logic := '0';
   signal iniciar_timer : std_logic := '0';

 	--Outputs
   signal tiempo_expiroSalida : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant segundero_period : time := 1000 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Timer PORT MAP (
          valor => valor,
          segundero => segundero,
          iniciar_timer => iniciar_timer,
          tiempo_expiroSalida => tiempo_expiroSalida
        );

   -- Clock process definitions
   segundero_process :process
   begin
		segundero <= '0';
		wait for segundero_period/2;
		segundero <= '1';
		wait for segundero_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      	

  
      -- insert stimulus here 
		valor <= "0011";
		wait for 20 ms;	
		iniciar_timer <= '1';
		wait for 3200 ms;
		iniciar_timer <= '0'; 
		valor <= "0100";
		wait for 20 ms;
		iniciar_timer <= '1';
		wait for 4020 ms;
		iniciar_timer <= '0';
		valor <= "0010";
		wait for 20 ms;
		iniciar_timer <= '1';
      wait;
   end process;

END;
