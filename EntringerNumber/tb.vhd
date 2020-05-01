library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity tb is
end tb ;

architecture behav of tb is
  constant clockperiod: time:= 0.1 ns;
  signal clk: std_logic:='0';
  signal rst,start: std_logic;
  signal n, k : std_logic_vector(3 downto 0);
  signal  y : std_logic_vector (7 downto 0);
  component toplevel
    port (clk, rst, start : in std_logic;
    n, k : in std_logic_vector(3 downto 0);
    y : out std_logic_vector(7 downto 0));
  end component ;
  begin
    clk <= not clk after clockperiod /2;
    rst <= '1' , '0' after 0.1 ns;
    start <= '0' , '1' after 0.1 ns, '0' after 0.5 ns;
    k <= "0011";
    n <= "0100";
    dut: toplevel port map(clk,rst,start,n,k, y);
  end behav;