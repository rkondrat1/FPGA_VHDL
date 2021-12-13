
# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"

set_property PACKAGE_PIN Y9 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN W22 [get_ports {LED}];  # "LD0"


set_property PACKAGE_PIN W22 [get_ports LED]							
	set_property IOSTANDARD LVCMOS33 [get_ports LED]
