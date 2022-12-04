----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.09.2021 13:43:32
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity bcd is
    Port (  seg : buffer STD_LOGIC_VECTOR (7 downto 0);
            entrada : in std_logic_vector (3 downto 0) );
end bcd;

architecture Behavioral of bcd is
    
begin

    with entrada select
        seg <=  "11000000" when "0000", --'0'
                "11111001" when "0001", --'1'
                "10100100" when "0010", --'2'
                "10110000" when "0011", --'3'
                "10011001" when "0100", --'4'
                "10010010" when "0101", --'5'
                "10000010" when "0110", --'6'
                "11111000" when "0111", --'7'
                "01000000" when "1110", --'-1'
                "01111001" when "1101", --'-2'
                "00100100" when "1100", --'-3'
                "00011001" when "1011", --'-4'
                "00010010" when "1010", --'-5'
                "00000010" when "1001", --'-6'
                "01111000" when "1000", --'-7'
                "11111111" when others; -- zerar

end Behavioral;
