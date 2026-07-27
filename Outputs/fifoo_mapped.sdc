###################################################################

# Created by write_sdc on Thu Jul  9 17:56:05 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_load -pin_load 0.15 [get_ports {rdata_o[7]}]
set_load -pin_load 0.15 [get_ports {rdata_o[6]}]
set_load -pin_load 0.15 [get_ports {rdata_o[5]}]
set_load -pin_load 0.15 [get_ports {rdata_o[4]}]
set_load -pin_load 0.15 [get_ports {rdata_o[3]}]
set_load -pin_load 0.15 [get_ports {rdata_o[2]}]
set_load -pin_load 0.15 [get_ports {rdata_o[1]}]
set_load -pin_load 0.15 [get_ports {rdata_o[0]}]
set_load -pin_load 0.15 [get_ports full_o]
set_load -pin_load 0.15 [get_ports empty_o]
set_load -pin_load 0.15 [get_ports wr_error_o]
set_load -pin_load 0.15 [get_ports rd_error_o]
create_clock [get_ports clk_i]  -name CLK  -period 4  -waveform {0 2}
set_clock_uncertainty 0.2  [get_clocks CLK]
set_clock_transition -max -rise 0.2 [get_clocks CLK]
set_clock_transition -max -fall 0.2 [get_clocks CLK]
set_clock_transition -min -rise 0.2 [get_clocks CLK]
set_clock_transition -min -fall 0.2 [get_clocks CLK]
set_input_delay -clock CLK  1  [get_ports rst_i]
set_input_delay -clock CLK  1  [get_ports wr_en_i]
set_input_delay -clock CLK  1  [get_ports rd_en_i]
set_input_delay -clock CLK  1  [get_ports {wdata_i[7]}]
set_input_delay -clock CLK  1  [get_ports {wdata_i[6]}]
set_input_delay -clock CLK  1  [get_ports {wdata_i[5]}]
set_input_delay -clock CLK  1  [get_ports {wdata_i[4]}]
set_input_delay -clock CLK  1  [get_ports {wdata_i[3]}]
set_input_delay -clock CLK  1  [get_ports {wdata_i[2]}]
set_input_delay -clock CLK  1  [get_ports {wdata_i[1]}]
set_input_delay -clock CLK  1  [get_ports {wdata_i[0]}]
set_output_delay -clock CLK  1  [get_ports {rdata_o[7]}]
set_output_delay -clock CLK  1  [get_ports {rdata_o[6]}]
set_output_delay -clock CLK  1  [get_ports {rdata_o[5]}]
set_output_delay -clock CLK  1  [get_ports {rdata_o[4]}]
set_output_delay -clock CLK  1  [get_ports {rdata_o[3]}]
set_output_delay -clock CLK  1  [get_ports {rdata_o[2]}]
set_output_delay -clock CLK  1  [get_ports {rdata_o[1]}]
set_output_delay -clock CLK  1  [get_ports {rdata_o[0]}]
set_output_delay -clock CLK  1  [get_ports full_o]
set_output_delay -clock CLK  1  [get_ports empty_o]
set_output_delay -clock CLK  1  [get_ports wr_error_o]
set_output_delay -clock CLK  1  [get_ports rd_error_o]
