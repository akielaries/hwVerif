library ieee;
use ieee.std_logic_1164.all;
entity adder is
    port(a, b , ci : in std_logic;
        S, co : out std_logic
        );

end adder;
architecture structural of adder is
signal s1, s2, s3 : std_logic;
begin
    w1 <= a xor b;
    w2 <= a and b;
    w3 <= w1 and ci;
    co <= w2 or w3;
    S  <= w1 xor ci;
end structural;



