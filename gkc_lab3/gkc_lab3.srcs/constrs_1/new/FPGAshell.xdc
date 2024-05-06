set_property -dict { PACKAGE_PIN W19 IOSTANDARD LVCMOS33 } [get_ports clk];
create_clock -name sys_clk_pin -period 20.00 [get_ports clk]

set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 } [get_ports start_n];
set_property -dict { PACKAGE_PIN W17 IOSTANDARD LVCMOS33 } [get_ports check_n];
set_property -dict { PACKAGE_PIN N15 IOSTANDARD LVCMOS33 } [get_ports rstn];

set_property -dict { PACKAGE_PIN M21 IOSTANDARD LVCMOS33 } [get_ports finish];
set_property -dict { PACKAGE_PIN L21 IOSTANDARD LVCMOS33 } [get_ports correct];
