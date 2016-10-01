create_clock -name "CLK_IN" -period 20.000ns [get_ports {CLK_IN}]
derive_pll_clocks
derive_clock_uncertainty
