-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

library ieee;
use ieee.std_logic_1164.all;
library altera;
use altera.altera_syn_attributes.all;

entity procesador is
	port
	(
		entrada : in std_logic_vector(3 downto 0);
		le : in std_logic;
		op : in std_logic;
		salida : out std_logic_vector(3 downto 0)
	);

end procesador;

architecture ppl_type of procesador is
component registro is 
port (
le,op : in std_logic;
entradas : in std_logic_vector(3 downto 0);
salidas:out std_logic_vector(3 downto 0)
);
end component;
begin
proc_registro: registro port map(le,op,entrada,salida);
end;




