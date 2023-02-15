library ieee;
use ieee.std_logic_1164.all;

entity adder_tb is
end adder_tb;

architecture behavioral of adder_tb is

    -- Declare the signals used in the test bench
    signal a, b, ci, S, co : std_logic;

    -- Instantiate the adder unit under test
    component adder is
        port(a, b, ci : in std_logic;
            S, co : out std_logic
        );
    end component;

begin

    -- Instantiate the adder unit under test
    uut: adder port map(a => a, b => b, ci => ci, S => S, co => co);

    -- Stimulus process
    process
    begin

        -- Test case 1: a=0, b=0, ci=0
        a <= '0';
        b <= '0';
        ci <= '0';
        wait for 10 ns;
        assert S = '0' and co = '0' report "Test case 1 failed" severity error;

        -- Test case 2: a=1, b=0, ci=0
        a <= '1';
        b <= '0';
        ci <= '0';
        wait for 10 ns;
        assert S = '1' and co = '0' report "Test case 2 failed" severity error;

        -- Test case 3: a=1, b=1, ci=0
        a <= '1';
        b <= '1';
        ci <= '0';
        wait for 10 ns;
        assert S = '0' and co = '1' report "Test case 3 failed" severity error;

        -- Test case 4: a=1, b=1, ci=1
        a <= '1';
        b <= '1';
        ci <= '1';
        wait for 10 ns;
        assert S = '1' and co = '1' report "Test case 4 failed" severity error;

        -- End the simulation
        wait;
    end process;

end behavioral;



