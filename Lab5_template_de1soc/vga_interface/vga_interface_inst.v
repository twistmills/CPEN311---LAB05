	vga_interface u0 (
		.alt_vip_itc_0_clocked_video_vid_clk       (<connected-to-alt_vip_itc_0_clocked_video_vid_clk>),       //    alt_vip_itc_0_clocked_video.vid_clk
		.alt_vip_itc_0_clocked_video_vid_data      (<connected-to-alt_vip_itc_0_clocked_video_vid_data>),      //                               .vid_data
		.alt_vip_itc_0_clocked_video_underflow     (<connected-to-alt_vip_itc_0_clocked_video_underflow>),     //                               .underflow
		.alt_vip_itc_0_clocked_video_vid_datavalid (<connected-to-alt_vip_itc_0_clocked_video_vid_datavalid>), //                               .vid_datavalid
		.alt_vip_itc_0_clocked_video_vid_v_sync    (<connected-to-alt_vip_itc_0_clocked_video_vid_v_sync>),    //                               .vid_v_sync
		.alt_vip_itc_0_clocked_video_vid_h_sync    (<connected-to-alt_vip_itc_0_clocked_video_vid_h_sync>),    //                               .vid_h_sync
		.alt_vip_itc_0_clocked_video_vid_f         (<connected-to-alt_vip_itc_0_clocked_video_vid_f>),         //                               .vid_f
		.alt_vip_itc_0_clocked_video_vid_h         (<connected-to-alt_vip_itc_0_clocked_video_vid_h>),         //                               .vid_h
		.alt_vip_itc_0_clocked_video_vid_v         (<connected-to-alt_vip_itc_0_clocked_video_vid_v>),         //                               .vid_v
		.alt_vip_vfr_0_interrupt_sender_irq        (<connected-to-alt_vip_vfr_0_interrupt_sender_irq>),        // alt_vip_vfr_0_interrupt_sender.irq
		.clk_50m_clk                               (<connected-to-clk_50m_clk>),                               //                        clk_50m.clk
		.clk_50m_reset_reset_n                     (<connected-to-clk_50m_reset_reset_n>),                     //                  clk_50m_reset.reset_n
		.nios_clk_clk                              (<connected-to-nios_clk_clk>),                              //                       nios_clk.clk
		.nios_clk_reset_reset_n                    (<connected-to-nios_clk_reset_reset_n>),                    //                 nios_clk_reset.reset_n
		.to_nios_2_datamaster_address              (<connected-to-to_nios_2_datamaster_address>),              //           to_nios_2_datamaster.address
		.to_nios_2_datamaster_write                (<connected-to-to_nios_2_datamaster_write>),                //                               .write
		.to_nios_2_datamaster_writedata            (<connected-to-to_nios_2_datamaster_writedata>),            //                               .writedata
		.to_nios_2_datamaster_read                 (<connected-to-to_nios_2_datamaster_read>),                 //                               .read
		.to_nios_2_datamaster_readdata             (<connected-to-to_nios_2_datamaster_readdata>),             //                               .readdata
		.to_sdram_address                          (<connected-to-to_sdram_address>),                          //                       to_sdram.address
		.to_sdram_burstcount                       (<connected-to-to_sdram_burstcount>),                       //                               .burstcount
		.to_sdram_readdata                         (<connected-to-to_sdram_readdata>),                         //                               .readdata
		.to_sdram_read                             (<connected-to-to_sdram_read>),                             //                               .read
		.to_sdram_readdatavalid                    (<connected-to-to_sdram_readdatavalid>),                    //                               .readdatavalid
		.to_sdram_waitrequest                      (<connected-to-to_sdram_waitrequest>),                      //                               .waitrequest
		.vga_clk_clk                               (<connected-to-vga_clk_clk>)                                //                        vga_clk.clk
	);

