----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/19/2023 06:16:35 PM
-- Design Name: 
-- Module Name: flip_flop - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity JK_flip_flop is
  Port (clk,J,K,prs,clr : in std_logic;
        Q: out std_logic;
        Qnot : out std_logic);
end JK_flip_flop;

architecture JKFF_arch of JK_flip_flop is
  signal nxt_state,prv_state: std_logic;
  signal input: std_logic_vector(1 downto 0);
  begin
   input <= J & K;
    process(clk, prs,clr) is
     begin
      if (clr='1?) then
        nxt_state <= '0';
      elsif (prs='1?) then
        nxt_state <= '1';
      elsif (clk'event and clk='1?) then
       case (input) is
        when "10" => nxt_state <= '1';
        when "01" => nxt_state <= '0';
        when "00" => nxt_state <= prv_state;
        when "11" => nxt_state <= not prv_state;
        when others => null;
       end case;
      end if;
     end process;
    Q <= nxt_state;
    Qnot <= not nxt_state;   
    prv_state <= nxt_state;
end JKFF_arch;
