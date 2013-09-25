--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:47:29 09/22/2013
-- Design Name:   
-- Module Name:   C:/Users/Kenneth/Laboratorio3/SimulacionComprobador.vhd
-- Project Name:  Laboratorio3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ComprobadorDeMemoria
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
 
ENTITY SimulacionComprobador IS
END SimulacionComprobador;
 
ARCHITECTURE behavior OF SimulacionComprobador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ComprobadorDeMemoria
    PORT(
         clk5Hz : IN  std_logic;
         interruptor : IN  std_logic_vector(1 downto 0);
         reset : IN  std_logic;
         datos : INOUT  std_logic_vector(3 downto 0);
         direccionS : OUT  std_logic_vector(3 downto 0);
         write_enableS : OUT  std_logic;
         resultadoS : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk5Hz : std_logic := '0';
   signal interruptor : std_logic_vector(1 downto 0) := (others => '0');
   signal reset : std_logic := '0';

	--BiDirs
   signal datos : std_logic_vector(3 downto 0);

 	--Outputs
   signal direccionS : std_logic_vector(3 downto 0);
   signal write_enableS : std_logic;
   signal resultadoS : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk5Hz_period : time := 200 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ComprobadorDeMemoria PORT MAP (
          clk5Hz => clk5Hz,
          interruptor => interruptor,
          reset => reset,
          datos => datos,
          direccionS => direccionS,
          write_enableS => write_enableS,
          resultadoS => resultadoS
        );

   -- Clock process definitions
   clk5Hz_process :process
   begin
		clk5Hz <= '0';
		wait for clk5Hz_period/2;
		clk5Hz <= '1';
		wait for clk5Hz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

interruptor <= "11";
      wait;
   end process;

END;
