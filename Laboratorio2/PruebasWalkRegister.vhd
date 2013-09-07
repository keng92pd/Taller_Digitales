--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:58:20 09/05/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio2/PruebasWalkRegister.vhd
-- Project Name:  Laboratorio2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: WalkRegister
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
 
ENTITY PruebasWalkRegister IS
END PruebasWalkRegister;
 
ARCHITECTURE behavior OF PruebasWalkRegister IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT WalkRegister
    PORT(
         clk : IN  std_logic;
         WR_Sync : IN  std_logic;
         WR_Reset : IN  std_logic;
         WR_valor : OUT  std_logic;
         Reset_sincronico : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal WR_Sync : std_logic := '0';
   signal WR_Reset : std_logic := '0';
   signal Reset_sincronico : std_logic := '0';

 	--Outputs
   signal WR_valor : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: WalkRegister PORT MAP (
          clk => clk,
          WR_Sync => WR_Sync,
          WR_Reset => WR_Reset,
          WR_valor => WR_valor,
          Reset_sincronico => Reset_sincronico
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
		
		WR_Reset <= '0';
		Reset_sincronico <= '0';
		WR_Sync <= '0';
		wait for 1000 ms;	
		WR_Reset <= '0';
		Reset_sincronico <= '0';
		WR_Sync <= '1';
		wait for 20 ms;
		WR_Reset <= '0';
		Reset_sincronico <= '0';
		WR_Sync <= '0';
		wait for 3000 ms;	
		WR_Reset <= '1';
		Reset_sincronico <= '0';
		WR_Sync <= '0';
		wait for 20 ms;
		WR_Reset <= '0'; 
		Reset_sincronico <= '0';
		WR_Sync <= '0';
      wait;
   end process;

END;
