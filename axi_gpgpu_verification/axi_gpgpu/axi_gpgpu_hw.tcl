# TCL File Generated by Component Editor 14.0
# Thu Jan 29 20:23:06 CST 2015
# DO NOT MODIFY


# 
# axi_gpgpu "GPGPU" v1.0
# aj 2015.01.29.20:23:06
# 
# 

# 
# request TCL package from ACDS 14.0
# 
package require -exact qsys 14.0


# 
# module axi_gpgpu
# 
set_module_property DESCRIPTION ""
set_module_property NAME axi_gpgpu
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP mosut
set_module_property AUTHOR aj
set_module_property DISPLAY_NAME GPGPU
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL axi_gpgpu
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file axi_gpgpu.sv SYSTEM_VERILOG PATH axi_gpgpu.sv TOP_LEVEL_FILE
add_fileset_file arbiter.sv SYSTEM_VERILOG PATH arbiter.sv
add_fileset_file cache_lru.sv SYSTEM_VERILOG PATH cache_lru.sv
add_fileset_file cam.sv SYSTEM_VERILOG PATH cam.sv
add_fileset_file control_registers.sv SYSTEM_VERILOG PATH control_registers.sv
add_fileset_file core.sv SYSTEM_VERILOG PATH core.sv
add_fileset_file dcache_data_stage.sv SYSTEM_VERILOG PATH dcache_data_stage.sv
add_fileset_file dcache_tag_stage.sv SYSTEM_VERILOG PATH dcache_tag_stage.sv
add_fileset_file defines.sv SYSTEM_VERILOG PATH defines.sv
add_fileset_file demo_axi_memory.sv~ OTHER PATH demo_axi_memory.sv~
add_fileset_file fp_execute_stage1.sv SYSTEM_VERILOG PATH fp_execute_stage1.sv
add_fileset_file fp_execute_stage2.sv SYSTEM_VERILOG PATH fp_execute_stage2.sv
add_fileset_file fp_execute_stage3.sv SYSTEM_VERILOG PATH fp_execute_stage3.sv
add_fileset_file fp_execute_stage4.sv SYSTEM_VERILOG PATH fp_execute_stage4.sv
add_fileset_file fp_execute_stage5.sv SYSTEM_VERILOG PATH fp_execute_stage5.sv
add_fileset_file idx_to_oh.sv SYSTEM_VERILOG PATH idx_to_oh.sv
add_fileset_file ifetch_data_stage.sv SYSTEM_VERILOG PATH ifetch_data_stage.sv
add_fileset_file ifetch_tag_stage.sv SYSTEM_VERILOG PATH ifetch_tag_stage.sv
add_fileset_file instruction_decode_stage.sv SYSTEM_VERILOG PATH instruction_decode_stage.sv
add_fileset_file int_execute_stage.sv SYSTEM_VERILOG PATH int_execute_stage.sv
add_fileset_file io_arbiter.sv SYSTEM_VERILOG PATH io_arbiter.sv
add_fileset_file io_request_queue.sv SYSTEM_VERILOG PATH io_request_queue.sv
add_fileset_file l1_load_miss_queue.sv SYSTEM_VERILOG PATH l1_load_miss_queue.sv
add_fileset_file l1_store_queue.sv SYSTEM_VERILOG PATH l1_store_queue.sv
add_fileset_file l2_axi_bus_interface.sv SYSTEM_VERILOG PATH l2_axi_bus_interface.sv
add_fileset_file l2_cache.sv SYSTEM_VERILOG PATH l2_cache.sv
add_fileset_file l2_cache_arb.sv SYSTEM_VERILOG PATH l2_cache_arb.sv
add_fileset_file l2_cache_interface.sv SYSTEM_VERILOG PATH l2_cache_interface.sv
add_fileset_file l2_cache_pending_miss_cam.sv SYSTEM_VERILOG PATH l2_cache_pending_miss_cam.sv
add_fileset_file l2_cache_read.sv SYSTEM_VERILOG PATH l2_cache_read.sv
add_fileset_file l2_cache_tag.sv SYSTEM_VERILOG PATH l2_cache_tag.sv
add_fileset_file l2_cache_update.sv SYSTEM_VERILOG PATH l2_cache_update.sv
add_fileset_file nyuzi.sv SYSTEM_VERILOG PATH nyuzi.sv
add_fileset_file oh_to_idx.sv SYSTEM_VERILOG PATH oh_to_idx.sv
add_fileset_file operand_fetch_stage.sv SYSTEM_VERILOG PATH operand_fetch_stage.sv
add_fileset_file performance_counters.sv SYSTEM_VERILOG PATH performance_counters.sv
add_fileset_file reciprocal_rom.sv SYSTEM_VERILOG PATH reciprocal_rom.sv
add_fileset_file sram_1r1w.sv SYSTEM_VERILOG PATH sram_1r1w.sv
add_fileset_file sram_2r1w.sv SYSTEM_VERILOG PATH sram_2r1w.sv
add_fileset_file sync_fifo.sv SYSTEM_VERILOG PATH sync_fifo.sv
add_fileset_file thread_select_stage.sv SYSTEM_VERILOG PATH thread_select_stage.sv
add_fileset_file writeback_stage.sv SYSTEM_VERILOG PATH writeback_stage.sv


# 
# parameters
# 
add_parameter SLAVE_AXI_ID_W INTEGER 4
set_parameter_property SLAVE_AXI_ID_W DEFAULT_VALUE 4
set_parameter_property SLAVE_AXI_ID_W DISPLAY_NAME SLAVE_AXI_ID_W
set_parameter_property SLAVE_AXI_ID_W TYPE INTEGER
set_parameter_property SLAVE_AXI_ID_W UNITS None
set_parameter_property SLAVE_AXI_ID_W ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SLAVE_AXI_ID_W HDL_PARAMETER true
add_parameter SLAVE_AXI_ADDRESS_W INTEGER 6
set_parameter_property SLAVE_AXI_ADDRESS_W DEFAULT_VALUE 6
set_parameter_property SLAVE_AXI_ADDRESS_W DISPLAY_NAME SLAVE_AXI_ADDRESS_W
set_parameter_property SLAVE_AXI_ADDRESS_W TYPE INTEGER
set_parameter_property SLAVE_AXI_ADDRESS_W UNITS None
set_parameter_property SLAVE_AXI_ADDRESS_W ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SLAVE_AXI_ADDRESS_W HDL_PARAMETER true
add_parameter SLAVE_AXI_DATA_W INTEGER 32
set_parameter_property SLAVE_AXI_DATA_W DEFAULT_VALUE 32
set_parameter_property SLAVE_AXI_DATA_W DISPLAY_NAME SLAVE_AXI_DATA_W
set_parameter_property SLAVE_AXI_DATA_W TYPE INTEGER
set_parameter_property SLAVE_AXI_DATA_W UNITS None
set_parameter_property SLAVE_AXI_DATA_W ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SLAVE_AXI_DATA_W HDL_PARAMETER true
add_parameter SLAVE_AXI_NUMBYTES INTEGER 4
set_parameter_property SLAVE_AXI_NUMBYTES DEFAULT_VALUE 4
set_parameter_property SLAVE_AXI_NUMBYTES DISPLAY_NAME SLAVE_AXI_NUMBYTES
set_parameter_property SLAVE_AXI_NUMBYTES TYPE INTEGER
set_parameter_property SLAVE_AXI_NUMBYTES UNITS None
set_parameter_property SLAVE_AXI_NUMBYTES ALLOWED_RANGES -2147483648:2147483647
set_parameter_property SLAVE_AXI_NUMBYTES HDL_PARAMETER true
add_parameter MAST_AXI_ID_W INTEGER 4
set_parameter_property MAST_AXI_ID_W DEFAULT_VALUE 4
set_parameter_property MAST_AXI_ID_W DISPLAY_NAME MAST_AXI_ID_W
set_parameter_property MAST_AXI_ID_W TYPE INTEGER
set_parameter_property MAST_AXI_ID_W UNITS None
set_parameter_property MAST_AXI_ID_W ALLOWED_RANGES -2147483648:2147483647
set_parameter_property MAST_AXI_ID_W HDL_PARAMETER true


# 
# module assignments
# 
set_module_assignment embeddedsw.dts.group gpgpu
set_module_assignment embeddedsw.dts.name gpgpu
set_module_assignment embeddedsw.dts.vendor mosut-aj


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point altera_axi_slave
# 
add_interface altera_axi_slave axi end
set_interface_property altera_axi_slave associatedClock clock
set_interface_property altera_axi_slave associatedReset reset
set_interface_property altera_axi_slave readAcceptanceCapability 1
set_interface_property altera_axi_slave writeAcceptanceCapability 1
set_interface_property altera_axi_slave combinedAcceptanceCapability 1
set_interface_property altera_axi_slave readDataReorderingDepth 1
set_interface_property altera_axi_slave bridgesToMaster ""
set_interface_property altera_axi_slave ENABLED true
set_interface_property altera_axi_slave EXPORT_OF ""
set_interface_property altera_axi_slave PORT_NAME_MAP ""
set_interface_property altera_axi_slave CMSIS_SVD_VARIABLES ""
set_interface_property altera_axi_slave SVD_ADDRESS_GROUP ""

add_interface_port altera_axi_slave axs_awid awid Input SLAVE_AXI_ID_W
add_interface_port altera_axi_slave axs_awaddr awaddr Input SLAVE_AXI_ADDRESS_W
add_interface_port altera_axi_slave axs_awlen awlen Input 4
add_interface_port altera_axi_slave axs_awsize awsize Input 3
add_interface_port altera_axi_slave axs_awburst awburst Input 2
add_interface_port altera_axi_slave axs_awlock awlock Input 2
add_interface_port altera_axi_slave axs_awcache awcache Input 4
add_interface_port altera_axi_slave axs_awprot awprot Input 3
add_interface_port altera_axi_slave axs_awvalid awvalid Input 1
add_interface_port altera_axi_slave axs_awready awready Output 1
add_interface_port altera_axi_slave axs_wid wid Input SLAVE_AXI_ID_W
add_interface_port altera_axi_slave axs_wdata wdata Input SLAVE_AXI_DATA_W
add_interface_port altera_axi_slave axs_wstrb wstrb Input SLAVE_AXI_NUMBYTES
add_interface_port altera_axi_slave axs_wlast wlast Input 1
add_interface_port altera_axi_slave axs_wvalid wvalid Input 1
add_interface_port altera_axi_slave axs_wready wready Output 1
add_interface_port altera_axi_slave axs_bid bid Output SLAVE_AXI_ID_W
add_interface_port altera_axi_slave axs_bresp bresp Output 2
add_interface_port altera_axi_slave axs_bvalid bvalid Output 1
add_interface_port altera_axi_slave axs_bready bready Input 1
add_interface_port altera_axi_slave axs_arid arid Input SLAVE_AXI_ID_W
add_interface_port altera_axi_slave axs_araddr araddr Input SLAVE_AXI_ADDRESS_W
add_interface_port altera_axi_slave axs_arlen arlen Input 4
add_interface_port altera_axi_slave axs_arsize arsize Input 3
add_interface_port altera_axi_slave axs_arburst arburst Input 2
add_interface_port altera_axi_slave axs_arlock arlock Input 2
add_interface_port altera_axi_slave axs_arcache arcache Input 4
add_interface_port altera_axi_slave axs_arprot arprot Input 3
add_interface_port altera_axi_slave axs_arvalid arvalid Input 1
add_interface_port altera_axi_slave axs_arready arready Output 1
add_interface_port altera_axi_slave axs_rid rid Output SLAVE_AXI_ID_W
add_interface_port altera_axi_slave axs_rdata rdata Output SLAVE_AXI_DATA_W
add_interface_port altera_axi_slave axs_rlast rlast Output 1
add_interface_port altera_axi_slave axs_rvalid rvalid Output 1
add_interface_port altera_axi_slave axs_rready rready Input 1
add_interface_port altera_axi_slave axs_rresp rresp Output 2


# 
# connection point altera_axi_master
# 
add_interface altera_axi_master axi start
set_interface_property altera_axi_master associatedClock clock
set_interface_property altera_axi_master associatedReset reset
set_interface_property altera_axi_master readIssuingCapability 1
set_interface_property altera_axi_master writeIssuingCapability 1
set_interface_property altera_axi_master combinedIssuingCapability 1
set_interface_property altera_axi_master ENABLED true
set_interface_property altera_axi_master EXPORT_OF ""
set_interface_property altera_axi_master PORT_NAME_MAP ""
set_interface_property altera_axi_master CMSIS_SVD_VARIABLES ""
set_interface_property altera_axi_master SVD_ADDRESS_GROUP ""

add_interface_port altera_axi_master axm_awid awid Output MAST_AXI_ID_W
add_interface_port altera_axi_master axm_awaddr awaddr Output 32
add_interface_port altera_axi_master axm_awlen awlen Output 4
add_interface_port altera_axi_master axm_awsize awsize Output 3
add_interface_port altera_axi_master axm_awburst awburst Output 2
add_interface_port altera_axi_master axm_awlock awlock Output 2
add_interface_port altera_axi_master axm_awcache awcache Output 4
add_interface_port altera_axi_master axm_awprot awprot Output 3
add_interface_port altera_axi_master axm_awvalid awvalid Output 1
add_interface_port altera_axi_master axm_awready awready Input 1
add_interface_port altera_axi_master axm_wid wid Output MAST_AXI_ID_W
add_interface_port altera_axi_master axm_wdata wdata Output 32
add_interface_port altera_axi_master axm_wstrb wstrb Output SLAVE_AXI_NUMBYTES
add_interface_port altera_axi_master axm_wlast wlast Output 1
add_interface_port altera_axi_master axm_wvalid wvalid Output 1
add_interface_port altera_axi_master axm_wready wready Input 1
add_interface_port altera_axi_master axm_bid bid Input MAST_AXI_ID_W
add_interface_port altera_axi_master axm_bresp bresp Input 2
add_interface_port altera_axi_master axm_bvalid bvalid Input 1
add_interface_port altera_axi_master axm_bready bready Output 1
add_interface_port altera_axi_master axm_arid arid Output MAST_AXI_ID_W
add_interface_port altera_axi_master axm_araddr araddr Output 31
add_interface_port altera_axi_master axm_arlen arlen Output 4
add_interface_port altera_axi_master axm_arsize arsize Output 3
add_interface_port altera_axi_master axm_arburst arburst Output 2
add_interface_port altera_axi_master axm_arlock arlock Output 2
add_interface_port altera_axi_master axm_arcache arcache Output 4
add_interface_port altera_axi_master axm_arprot arprot Output 3
add_interface_port altera_axi_master axm_arvalid arvalid Output 1
add_interface_port altera_axi_master axm_arready arready Input 1
add_interface_port altera_axi_master axm_rid rid Input MAST_AXI_ID_W
add_interface_port altera_axi_master axm_rdata rdata Input 32
add_interface_port altera_axi_master axm_rresp rresp Input 2
add_interface_port altera_axi_master axm_rlast rlast Input 1
add_interface_port altera_axi_master axm_rvalid rvalid Input 1
add_interface_port altera_axi_master axm_rready rready Output 1

