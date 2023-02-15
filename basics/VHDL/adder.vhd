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
    s1 <= a xor b;
    s2 <= a and b;
    s3 <= s1 and ci;
    co <= s2 or s3;
    S  <= s1 xor ci;
end structural;



