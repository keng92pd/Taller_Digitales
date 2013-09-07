--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:59:18 09/05/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio2/PruebasParametrosTemporales.vhd
-- Project Name:  Laboratorio2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ParametrosTemporales
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
 
ENTITY PruebasParametrosTemporales IS
END PruebasParametrosTemporales;
 
ARCHITECTURE behavior OF PruebasParametrosTemporales IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ParametrosTemporales
    PORT(
         clk : IN  std_logic;
         time_parameter_selector : IN  std_logic_vector(1 downto 0);
         time_value : IN  std_logic_vector(3 downto 0);
         reprogram_sincrono : IN  std_logic;
         intervalo : IN  std_logic_vector(1 downto 0);
         reset_sincrono : IN  std_logic;
         valor : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal time_parameter_selector : std_logic_vector(1 downto 0) := (others => '0');
   signal time_value : std_logic_vector(3 downto 0) := (others => '0');
   signal reprogram_sincrono : std_logic := '0';
   signal intervalo : std_logic_vector(1 downto 0) := (others => '0');
   signal reset_sincrono : std_logic := '0';

 	--Outputs
   signal valor : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ParametrosTemporales PORT MAP (
          clk => clk,
          time_parameter_selector => time_parameter_selector,
          time_value => time_value,
          reprogram_sincrono => reprogram_sincrono,
          intervalo => intervalo,
          reset_sincrono => reset_sincrono,
          valor => valor
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

    
    time_parameter_selector <= "00";
    time_value <= "0111";
    reprogram_sincrono <= '0';
    intervalo <= "00";
	 reset_sincrono <= '0';
	 wait for 500 ms;
	 intervalo <= "01";
	 wait for 500 ms;
	 intervalo <= "10";
    

      wait;
   end process;

END;
