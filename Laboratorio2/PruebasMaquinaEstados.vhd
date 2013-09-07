--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:00:07 09/06/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio2/PruebasMaquinaEstados.vhd
-- Project Name:  Laboratorio2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MaquinaEstadosFinitos
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
 
    COMPONENT MaquinaEstadosFinitos
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         time_expired : IN  std_logic;
         sensor : IN  std_logic;
         walk_request : IN  std_logic;
         lucesSalida : OUT  std_logic_vector(6 downto 0);
         WR_requestSalida : OUT  std_logic;
         start_timerSalida : OUT  std_logic;
         intervaloSalida : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal time_expired : std_logic := '0';
   signal sensor : std_logic := '0';
   signal walk_request : std_logic := '0';

 	--Outputs
   signal lucesSalida : std_logic_vector(6 downto 0);
   signal WR_requestSalida : std_logic;
   signal start_timerSalida : std_logic;
   signal intervaloSalida : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MaquinaEstadosFinitos PORT MAP (
          clk => clk,
          reset => reset,
          time_expired => time_expired,
          sensor => sensor,
          walk_request => walk_request,
          lucesSalida => lucesSalida,
          WR_requestSalida => WR_requestSalida,
          start_timerSalida => start_timerSalida,
          intervaloSalida => intervaloSalida
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

sensor <= '0';
walk_request <= '0';
reset <= '1';
wait for 25 ns;
reset <= '0';
wait for 6000 ms;
time_expired <= '1';
wait for 25 ns;
time_expired <= '0';
wait for 6020 ms;
time_expired <= '1';
wait for 25 ns;
time_expired <= '0';
wait for 2020 ms;
time_expired <= '1';
wait for 25 ns;
time_expired <= '0';
wait for 6020 ms;
time_expired <= '1';
wait for 25 ns;
time_expired <= '0';
      wait;
   end process;

END;
