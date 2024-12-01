library verilog;
use verilog.vl_types.all;
entity function_generator is
    port(
        PWM_out         : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        AmpSel          : in     vl_logic_vector(1 downto 0);
        init            : in     vl_logic;
        PI              : in     vl_logic_vector(2 downto 0);
        Phase_cntrl     : in     vl_logic_vector(1 downto 0);
        Sel             : in     vl_logic_vector(2 downto 0);
        ClkWG           : out    vl_logic;
        WaveOut         : out    vl_logic_vector(7 downto 0)
    );
end function_generator;
