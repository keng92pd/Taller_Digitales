--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:20:40 09/25/2013
-- Design Name:   
-- Module Name:   C:/Users/Zeck/Desktop/Repositorio_Kenneth/Laboratorio3/SimulacionDivisorFrecuencia5Hz.vhd
-- Project Name:  Laboratorio3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DivisorFrecuencia5Hz
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
 
ENTITY SimulacionDivisorFrecuencia5Hz IS
END SimulacionDivisorFrecuencia5Hz;
 
ARCHITECTURE behavior OF SimulacionDivisorFrecuencia5Hz IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DivisorFrecuencia5Hz
    PORT(
         clk : IN  std_logic;
         senalSalida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal senalSalida : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DivisorFrecuencia5Hz PORT MAP (
          clk => clk,
          senalSalida => senalSalida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
