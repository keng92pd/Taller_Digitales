--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:31:50 08/31/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio2/PruebasGeneral.vhd
-- Project Name:  Laboratorio2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControladorLucesSemaforo
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
 
ENTITY PruebasGeneral IS
END PruebasGeneral;
 
ARCHITECTURE behavior OF PruebasGeneral IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControladorLucesSemaforo
    PORT(
         Reset : IN  std_logic;
         Sensor : IN  std_logic;
         Walk_Request : IN  std_logic;
         Reprogram : IN  std_logic;
         Time_Parameter_Selector : IN  std_logic_vector(1 downto 0);
         Time_Value : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         luces : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Sensor : std_logic := '0';
   signal Walk_Request : std_logic := '0';
   signal Reprogram : std_logic := '0';
   signal Time_Parameter_Selector : std_logic_vector(1 downto 0) := (others => '0');
   signal Time_Value : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal luces : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 200 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControladorLucesSemaforo PORT MAP (
          Reset => Reset,
          Sensor => Sensor,
          Walk_Request => Walk_Request,
          Reprogram => Reprogram,
          Time_Parameter_Selector => Time_Parameter_Selector,
          Time_Value => Time_Value,
          clk => clk,
          luces => luces
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
