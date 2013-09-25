--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:38:38 09/22/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio3/PruebasMaquinaEstados.vhd
-- Project Name:  Laboratorio3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MaquinaEstados
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
 
ENTITY PruebasMaquinaEstados IS
END PruebasMaquinaEstados;
 
ARCHITECTURE behavior OF PruebasMaquinaEstados IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MaquinaEstados
    PORT(
         clk : IN  std_logic;
         reset_sinc : IN  std_logic;
         datos_iguales : IN  std_logic;
         write_dato_controlS : OUT  std_logic;
         wS : OUT  std_logic;
         realizar_ComparacionS : OUT  std_logic;
         resultadoS : OUT  std_logic_vector(1 downto 0);
         solicitar_direccionS : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset_sinc : std_logic := '0';
   signal datos_iguales : std_logic := '0';

 	--Outputs
   signal write_dato_controlS : std_logic;
   signal wS : std_logic;
   signal realizar_ComparacionS : std_logic;
   signal resultadoS : std_logic_vector(1 downto 0);
   signal solicitar_direccionS : std_logic;

   -- Clock period definitions
   constant clk_period : time := 200 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MaquinaEstados PORT MAP (
          clk => clk,
          reset_sinc => reset_sinc,
          datos_iguales => datos_iguales,
          write_dato_controlS => write_dato_controlS,
          wS => wS,
          realizar_ComparacionS => realizar_ComparacionS,
          resultadoS => resultadoS,
          solicitar_direccionS => solicitar_direccionS
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
