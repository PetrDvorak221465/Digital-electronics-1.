----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2021 19:10:17
-- Design Name: 
-- Module Name: hex_7seg - Behavioral
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

entity hex_7seg is
    Port
     ( 
           hex_i : in STD_LOGIC_VECTOR (4 - 1 downto 0);
           seg_o : out STD_LOGIC_VECTOR (7 - 1 downto 0)
     );      
end hex_7seg;

architecture Behavioral of hex_7seg is

 p_7seg_decoder : process(hex_i)
    begin
        case hex_i is
            when "0000" =>
                seg_o <= "0000001";     -- 0
            when "0001" =>
                seg_o <= "1001111";     -- 1


            -- WRITE YOUR CODE HERE
            -- 2, 3, 4, 5, 6, 7


            when "1000" =>
                seg_o <= "0000000";     -- 8


            -- WRITE YOUR CODE HERE
            -- 9, A, b, C, d


            when "1110" =>
                seg_o <= "0110000";     -- E
            when others =>
                seg_o <= "0111000";     -- F
        end case;
    end process p_7seg_decoder;


begin


end Behavioral;
