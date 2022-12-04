----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2021 19:50:22
-- Design Name: 
-- Module Name: ula - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ula is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           escolha : in STD_LOGIC_VECTOR (1 downto 0);
           over : out STD_LOGIC;
           result2 : buffer STD_LOGIC_VECTOR (3 downto 0);
           result : buffer STD_LOGIC_VECTOR (3 downto 0));
end ula;

architecture Behavioral of ula is

    signal sResult1: std_logic_vector(4 downto 0);
    signal sResult2: std_logic_vector(4 downto 0);
    
begin
    sResult1 <= std_logic_vector(signed(A(3)&A) + signed(B));
    sResult2 <= std_logic_vector(signed(A(3)&A) - signed(B));
    
    with escolha select
        result  <=   A xor B when "00",
                     not A   when "01",
                     std_logic_vector(signed(A) + signed(B)) when "10",
                     std_logic_vector(signed(A) - signed(B)) when others;
    
    with escolha select
        result2 <=   A xor B when "00",
                    not A   when "01",
                    std_logic_vector(signed(A) + signed(B)) when "10",
                    std_logic_vector(signed(A) - signed(B)) when others;
                    
    with escolha select    
        over <=     sResult2(4) xor sResult2(3) when "11",
                    sResult1(4) xor sResult1(3) when others;
                    
end Behavioral;
