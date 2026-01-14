library ieee;
use ieee.std_logic_1164.all;
entity half_adder_tb is
end half_adder_tb;

architecture arch_half_adder_tb of half_adder_tb is
component half_adder
port(
a,b:in std_logic;
s,c:out std_logic);
end component;

signal sig_a:std_logic:='0';
signal sig_b:std_logic:='0';
signal sig_s:std_logic;
signal sig_c:std_logic;

begin 
u1:half_adder port map(
a=>sig_a,
b=>sig_b,
c=>sig_c,
s=>sig_s
);
htb:process
begin

sig_a<='0';
sig_b<='0';
wait for 100ps;

sig_a<='0';
sig_b<='1';
wait for 100ps;

sig_a<='1';
sig_b<='0';
wait for 100ps;

sig_a<='1';
sig_b<='1';
wait for 100ps;
wait;
end process;
end arch_half_adder_tb;



