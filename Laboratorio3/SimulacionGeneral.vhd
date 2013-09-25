--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:42:33 09/22/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio3/SimulacionGeneral.vhd
-- Project Name:  Laboratorio3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Laboratorio3
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
 
ENTITY SimulacionGeneral IS
END SimulacionGeneral;
 
ARCHITECTURE behavior OF SimulacionGeneral IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Laboratorio3
    PORT(
         clk : IN  std_logic;
         interruptor : IN  std_logic_vector(1 downto 0);
         reset : IN  std_logic;
         resultadoS : OUT  std_logic_vector(1 downto 0);
         datoS : OUT  std_logic_vector(3 downto 0);
         direccionS : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal interruptor : std_logic_vector(1 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal resultadoS : std_logic_vector(1 downto 0);
   signal datoS : std_logic_vector(3 downto 0);
   signal direccionS : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Laboratorio3 PORT MAP (
          clk => clk,
          interruptor => interruptor,
          reset => reset,
          resultadoS => resultadoS,
          datoS => datoS,
          direccionS => direccionS
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
		interruptor <= "11";

      -- insert stimulus here 
 
      wait;
   end process;

END;
