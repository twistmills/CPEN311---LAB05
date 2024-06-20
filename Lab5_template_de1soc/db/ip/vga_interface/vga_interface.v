// vga_interface.v

// Generated using ACDS version 16.1 203

`timescale 1 ps / 1 ps
module vga_interface (
		input  wire        alt_vip_itc_0_clocked_video_vid_clk,       //    alt_vip_itc_0_clocked_video.vid_clk
		output wire [23:0] alt_vip_itc_0_clocked_video_vid_data,      //                               .vid_data
		output wire        alt_vip_itc_0_clocked_video_underflow,     //                               .underflow
		output wire        alt_vip_itc_0_clocked_video_vid_datavalid, //                               .vid_datavalid
		output wire        alt_vip_itc_0_clocked_video_vid_v_sync,    //                               .vid_v_sync
		output wire        alt_vip_itc_0_clocked_video_vid_h_sync,    //                               .vid_h_sync
		output wire        alt_vip_itc_0_clocked_video_vid_f,         //                               .vid_f
		output wire        alt_vip_itc_0_clocked_video_vid_h,         //                               .vid_h
		output wire        alt_vip_itc_0_clocked_video_vid_v,         //                               .vid_v
		output wire        alt_vip_vfr_0_interrupt_sender_irq,        // alt_vip_vfr_0_interrupt_sender.irq
		input  wire        clk_50m_clk,                               //                        clk_50m.clk
		input  wire        clk_50m_reset_reset_n,                     //                  clk_50m_reset.reset_n
		input  wire        nios_clk_clk,                              //                       nios_clk.clk
		input  wire        nios_clk_reset_reset_n,                    //                 nios_clk_reset.reset_n
		input  wire [4:0]  to_nios_2_datamaster_address,              //           to_nios_2_datamaster.address
		input  wire        to_nios_2_datamaster_write,                //                               .write
		input  wire [31:0] to_nios_2_datamaster_writedata,            //                               .writedata
		input  wire        to_nios_2_datamaster_read,                 //                               .read
		output wire [31:0] to_nios_2_datamaster_readdata,             //                               .readdata
		output wire [31:0] to_sdram_address,                          //                       to_sdram.address
		output wire [5:0]  to_sdram_burstcount,                       //                               .burstcount
		input  wire [31:0] to_sdram_readdata,                         //                               .readdata
		output wire        to_sdram_read,                             //                               .read
		input  wire        to_sdram_readdatavalid,                    //                               .readdatavalid
		input  wire        to_sdram_waitrequest,                      //                               .waitrequest
		output wire        vga_clk_clk                                //                        vga_clk.clk
	);

	wire         alt_vip_vfr_0_avalon_streaming_source_valid;         // alt_vip_vfr_0:dout_valid -> alt_vip_itc_0:is_valid
	wire  [23:0] alt_vip_vfr_0_avalon_streaming_source_data;          // alt_vip_vfr_0:dout_data -> alt_vip_itc_0:is_data
	wire         alt_vip_vfr_0_avalon_streaming_source_ready;         // alt_vip_itc_0:is_ready -> alt_vip_vfr_0:dout_ready
	wire         alt_vip_vfr_0_avalon_streaming_source_startofpacket; // alt_vip_vfr_0:dout_startofpacket -> alt_vip_itc_0:is_sop
	wire         alt_vip_vfr_0_avalon_streaming_source_endofpacket;   // alt_vip_vfr_0:dout_endofpacket -> alt_vip_itc_0:is_eop
	wire         rst_controller_reset_out_reset;                      // rst_controller:reset_out -> [alt_vip_itc_0:rst, alt_vip_vfr_0:master_reset, alt_vip_vfr_0:reset]

	alt_vipitc131_IS2Vid #(
		.NUMBER_OF_COLOUR_PLANES       (3),
		.COLOUR_PLANES_ARE_IN_PARALLEL (1),
		.BPS                           (8),
		.INTERLACED                    (0),
		.H_ACTIVE_PIXELS               (800),
		.V_ACTIVE_LINES                (600),
		.ACCEPT_COLOURS_IN_SEQ         (0),
		.FIFO_DEPTH                    (512),
		.CLOCKS_ARE_SAME               (0),
		.USE_CONTROL                   (0),
		.NO_OF_MODES                   (1),
		.THRESHOLD                     (450),
		.STD_WIDTH                     (1),
		.GENERATE_SYNC                 (0),
		.USE_EMBEDDED_SYNCS            (0),
		.AP_LINE                       (0),
		.V_BLANK                       (0),
		.H_BLANK                       (0),
		.H_SYNC_LENGTH                 (128),
		.H_FRONT_PORCH                 (40),
		.H_BACK_PORCH                  (88),
		.V_SYNC_LENGTH                 (4),
		.V_FRONT_PORCH                 (1),
		.V_BACK_PORCH                  (23),
		.F_RISING_EDGE                 (0),
		.F_FALLING_EDGE                (0),
		.FIELD0_V_RISING_EDGE          (0),
		.FIELD0_V_BLANK                (0),
		.FIELD0_V_SYNC_LENGTH          (0),
		.FIELD0_V_FRONT_PORCH          (0),
		.FIELD0_V_BACK_PORCH           (0),
		.ANC_LINE                      (0),
		.FIELD0_ANC_LINE               (0)
	) alt_vip_itc_0 (
		.is_clk        (nios_clk_clk),                                        //       is_clk_rst.clk
		.rst           (rst_controller_reset_out_reset),                      // is_clk_rst_reset.reset
		.is_data       (alt_vip_vfr_0_avalon_streaming_source_data),          //              din.data
		.is_valid      (alt_vip_vfr_0_avalon_streaming_source_valid),         //                 .valid
		.is_ready      (alt_vip_vfr_0_avalon_streaming_source_ready),         //                 .ready
		.is_sop        (alt_vip_vfr_0_avalon_streaming_source_startofpacket), //                 .startofpacket
		.is_eop        (alt_vip_vfr_0_avalon_streaming_source_endofpacket),   //                 .endofpacket
		.vid_clk       (alt_vip_itc_0_clocked_video_vid_clk),                 //    clocked_video.export
		.vid_data      (alt_vip_itc_0_clocked_video_vid_data),                //                 .export
		.underflow     (alt_vip_itc_0_clocked_video_underflow),               //                 .export
		.vid_datavalid (alt_vip_itc_0_clocked_video_vid_datavalid),           //                 .export
		.vid_v_sync    (alt_vip_itc_0_clocked_video_vid_v_sync),              //                 .export
		.vid_h_sync    (alt_vip_itc_0_clocked_video_vid_h_sync),              //                 .export
		.vid_f         (alt_vip_itc_0_clocked_video_vid_f),                   //                 .export
		.vid_h         (alt_vip_itc_0_clocked_video_vid_h),                   //                 .export
		.vid_v         (alt_vip_itc_0_clocked_video_vid_v)                    //                 .export
	);

	alt_vipvfr131_vfr #(
		.BITS_PER_PIXEL_PER_COLOR_PLANE (8),
		.NUMBER_OF_CHANNELS_IN_PARALLEL (3),
		.NUMBER_OF_CHANNELS_IN_SEQUENCE (1),
		.MAX_IMAGE_WIDTH                (800),
		.MAX_IMAGE_HEIGHT               (600),
		.MEM_PORT_WIDTH                 (32),
		.RMASTER_FIFO_DEPTH             (64),
		.RMASTER_BURST_TARGET           (32),
		.CLOCKS_ARE_SEPARATE            (1)
	) alt_vip_vfr_0 (
		.clock                (nios_clk_clk),                                        //             clock_reset.clk
		.reset                (rst_controller_reset_out_reset),                      //       clock_reset_reset.reset
		.master_clock         (nios_clk_clk),                                        //            clock_master.clk
		.master_reset         (rst_controller_reset_out_reset),                      //      clock_master_reset.reset
		.slave_address        (to_nios_2_datamaster_address),                        //            avalon_slave.address
		.slave_write          (to_nios_2_datamaster_write),                          //                        .write
		.slave_writedata      (to_nios_2_datamaster_writedata),                      //                        .writedata
		.slave_read           (to_nios_2_datamaster_read),                           //                        .read
		.slave_readdata       (to_nios_2_datamaster_readdata),                       //                        .readdata
		.slave_irq            (alt_vip_vfr_0_interrupt_sender_irq),                  //        interrupt_sender.irq
		.dout_data            (alt_vip_vfr_0_avalon_streaming_source_data),          // avalon_streaming_source.data
		.dout_valid           (alt_vip_vfr_0_avalon_streaming_source_valid),         //                        .valid
		.dout_ready           (alt_vip_vfr_0_avalon_streaming_source_ready),         //                        .ready
		.dout_startofpacket   (alt_vip_vfr_0_avalon_streaming_source_startofpacket), //                        .startofpacket
		.dout_endofpacket     (alt_vip_vfr_0_avalon_streaming_source_endofpacket),   //                        .endofpacket
		.master_address       (to_sdram_address),                                    //           avalon_master.address
		.master_burstcount    (to_sdram_burstcount),                                 //                        .burstcount
		.master_readdata      (to_sdram_readdata),                                   //                        .readdata
		.master_read          (to_sdram_read),                                       //                        .read
		.master_readdatavalid (to_sdram_readdatavalid),                              //                        .readdatavalid
		.master_waitrequest   (to_sdram_waitrequest)                                 //                        .waitrequest
	);

	vga_interface_vga_clk vga_clk (
		.refclk   (clk_50m_clk),            //  refclk.clk
		.rst      (~clk_50m_reset_reset_n), //   reset.reset
		.outclk_0 (vga_clk_clk),            // outclk0.clk
		.locked   ()                        // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~nios_clk_reset_reset_n),        // reset_in0.reset
		.clk            (nios_clk_clk),                   //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule
