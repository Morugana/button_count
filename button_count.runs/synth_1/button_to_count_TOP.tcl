# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/yanhan/Desktop/NUS/1718 Sem 2/TEE2020 DIGITAL FUNDAMENTALS/Vivado_lab/button_count/button_count.cache/wt} [current_project]
set_property parent.project_path {C:/Users/yanhan/Desktop/NUS/1718 Sem 2/TEE2020 DIGITAL FUNDAMENTALS/Vivado_lab/button_count/button_count.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  {C:/Users/yanhan/Desktop/NUS/1718 Sem 2/TEE2020 DIGITAL FUNDAMENTALS/Vivado_lab/button_count/button_count.srcs/sources_1/new/my_dff.v}
  {C:/Users/yanhan/Desktop/NUS/1718 Sem 2/TEE2020 DIGITAL FUNDAMENTALS/Vivado_lab/button_count/button_count.srcs/sources_1/new/debouncing.v}
  {C:/Users/yanhan/Desktop/NUS/1718 Sem 2/TEE2020 DIGITAL FUNDAMENTALS/Vivado_lab/button_count/button_count.srcs/sources_1/new/button_to_count.v}
  {C:/Users/yanhan/Desktop/NUS/1718 Sem 2/TEE2020 DIGITAL FUNDAMENTALS/Vivado_lab/button_count/button_count.srcs/sources_1/new/my_clk_gen.v}
  {C:/Users/yanhan/Desktop/NUS/1718 Sem 2/TEE2020 DIGITAL FUNDAMENTALS/Vivado_lab/button_count/button_count.srcs/sources_1/new/button_to_count_TOP.v}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/yanhan/Desktop/NUS/1718 Sem 2/TEE2020 DIGITAL FUNDAMENTALS/Vivado_lab/button_count/Basys3_Master-raw.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/yanhan/Desktop/NUS/1718 Sem 2/TEE2020 DIGITAL FUNDAMENTALS/Vivado_lab/button_count/Basys3_Master-raw.xdc}}]


synth_design -top button_to_count_TOP -part xc7a35tcpg236-1


write_checkpoint -force -noxdef button_to_count_TOP.dcp

catch { report_utilization -file button_to_count_TOP_utilization_synth.rpt -pb button_to_count_TOP_utilization_synth.pb }