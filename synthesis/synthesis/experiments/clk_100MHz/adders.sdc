create_clock -name clk_in -period 10.000 [get_ports {clock}]
derive_clock_uncertainty
