library verilog;
use verilog.vl_types.all;
entity Wrapper is
    port(
        done            : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        fracpart        : out    vl_logic_vector(15 downto 0);
        intpart         : out    vl_logic_vector(1 downto 0)
    );
end Wrapper;
