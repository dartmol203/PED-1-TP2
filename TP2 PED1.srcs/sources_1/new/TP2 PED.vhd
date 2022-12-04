----------------------------------------------------------------------------------
-- Company: UnB FGA
-- Engineer: André Correa
-- 
-- Create Date: 03.09.2021 13:02:23
-- Design Name: trabalho pratico 2
-- Module Name: TP2 PED - Behavioral
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

entity TP02_PED is

    port(    
        a0, a1, a2, a3 : in bit;
        b0, b1, b2, b3 : in bit;
        s0, s1         : in bit;
        saida          : out bit_vector(3 downto 0);
        OFL            : out bit
    );

end tp02_ped;

architecture Behavioral of TP02_PED is

    SIGNAL A : bit_vector(3 downto 0);
    SIGNAL B : bit_vector(3 downto 0);
    SIGNAL S : bit_vector(1 downto 0);
       
    
begin

    A <= a3 & a2 & a1 & a0;
    B <= b3 & b2 & b1 & b0;
    S <= s1 & s0;
    process(S, A, B)is
    begin
        case (S) is
          when "00" =>
             saida <= A xor B;
          when "01" =>
             saida <= (not A);
          when "10" =>
--             saida <= A + B;
          when "11" =>
--             saida <= A - B;
       end case;
    end process;


end Behavioral;
