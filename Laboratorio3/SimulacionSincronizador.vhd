--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:14:03 09/20/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio3/SimulacionSincronizador.vhd
-- Project Name:  Laboratorio3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sincronizador
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
 
ENTITY SimulacionSincronizador IS
END SimulacionSincronizador;
 
ARCHITECTURE behavior OF SimulacionSincronizador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sincronizador
    PORT(
         clk : IN  std_logic;
         interruptor : IN  std_logic_vector(1 downto 0);
         reset : IN  std_logic;
         interruptor_sinc : OUT  std_logic_vector(1 downto 0);
         reset_sinc : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal interruptor : std_logic_vector(1 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal interruptor_sinc : std_logic_vector(1 downto 0);
   signal reset_sinc : std_logic;

   -- Clock period definitions
   constant clk_period : time := 166.666666 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sincronizador PORT MAP (
          clk => clk,
          interruptor => interruptor,
          reset => reset,
          interruptor_sinc => interruptor_sinc,
          reset_sinc => reset_sinc
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
      wait for 400 ms;
		interruptor <= "11";
		reset <= '1';
		wait for 10 ms;
		reset <= '0';
      wait;
   end process;

END;
