----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.09.2021 21:45:57
-- Design Name: 
-- Module Name: ula_test - Behavioral
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

entity ula_test is
--  Port ( );
end ula_test;

architecture Behavioral of ula_test is
    
    component ula 
        Port(   A : in STD_LOGIC_VECTOR (3 downto 0);
                B : in STD_LOGIC_VECTOR (3 downto 0);
                escolha : in STD_LOGIC_VECTOR (1 downto 0);
                over : out STD_LOGIC;
                result : buffer STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal A, B, result: std_logic_vector(3 downto 0);
    signal escolha: std_logic_vector(1 downto 0);
    signal over: std_logic;
    
begin
    uut: ula port map(       A       => A,
                             B       => B,
                             result  => result,
                             over    => over,
                             escolha => escolha);               
    
process
begin
    A <= "0101"; B <= "1010"; escolha <= "00";
    wait for 20 ns;
    A <= "1010"; B <= "0101"; escolha <= "00";
    wait for 20 ns;
    A <= "1111"; B <= "0000"; escolha <= "01";
    wait for 20 ns;
    A <= "0000"; B <= "1111"; escolha <= "01";
    wait for 20 ns;
    A <= "0111"; B <= "0111"; escolha <= "10";
    wait for 20 ns;
    A <= "1110"; B <= "1101"; escolha <= "10";
    wait for 20 ns;
    A <= "1011"; B <= "0100"; escolha <= "10";
    wait for 20 ns;
    A <= "0110"; B <= "1111"; escolha <= "10";
    wait for 20 ns;
    A <= "0111"; B <= "0111"; escolha <= "11";
    wait for 20 ns;
    A <= "1110"; B <= "1101"; escolha <= "11";
    wait for 20 ns;
    A <= "1011"; B <= "0100"; escolha <= "11";
    wait for 20 ns;
    A <= "0110"; B <= "1111"; escolha <= "11";
    wait;
    
end process;

end Behavioral;
