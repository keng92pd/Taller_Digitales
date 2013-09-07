--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:41:18 09/05/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio2/PruebasSincronizador.vhd
-- Project Name:  Laboratorio2
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
 
ENTITY PruebasSincronizador IS
END PruebasSincronizador;
 
ARCHITECTURE behavior OF PruebasSincronizador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sincronizador
    PORT(
         clk : IN  std_logic;
         senales_asincronas : IN  std_logic_vector(3 downto 0);
         senales_sincronas : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal senales_asincronas : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal senales_sincronas : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sincronizador PORT MAP (
          clk => clk,
          senales_asincronas => senales_asincronas,
          senales_sincronas => senales_sincronas
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
		senales_asincronas <= "0000";
      wait for 1000 ms;	
		wait for 10 ns;	
      senales_asincronas <= "0001";
		wait for 500 ms;
		senales_asincronas <= "0010";
		wait for 500 ms;
		senales_asincronas <= "0100";
		wait for 500 ms;
		senales_asincronas <= "1000";
		wait for 500 ms;
		senales_asincronas <= "1111";
		wait for 500 ms;
		senales_asincronas <= "0000";
      wait;
   end process;

END;
