
module vga_interface (
	alt_vip_itc_0_clocked_video_vid_clk,
	alt_vip_itc_0_clocked_video_vid_data,
	alt_vip_itc_0_clocked_video_underflow,
	alt_vip_itc_0_clocked_video_vid_datavalid,
	alt_vip_itc_0_clocked_video_vid_v_sync,
	alt_vip_itc_0_clocked_video_vid_h_sync,
	alt_vip_itc_0_clocked_video_vid_f,
	alt_vip_itc_0_clocked_video_vid_h,
	alt_vip_itc_0_clocked_video_vid_v,
	alt_vip_vfr_0_interrupt_sender_irq,
	clk_50m_clk,
	clk_50m_reset_reset_n,
	nios_clk_clk,
	nios_clk_reset_reset_n,
	to_nios_2_datamaster_address,
	to_nios_2_datamaster_write,
	to_nios_2_datamaster_writedata,
	to_nios_2_datamaster_read,
	to_nios_2_datamaster_readdata,
	to_sdram_address,
	to_sdram_burstcount,
	to_sdram_readdata,
	to_sdram_read,
	to_sdram_readdatavalid,
	to_sdram_waitrequest,
	vga_clk_clk);	

	input		alt_vip_itc_0_clocked_video_vid_clk;
	output	[23:0]	alt_vip_itc_0_clocked_video_vid_data;
	output		alt_vip_itc_0_clocked_video_underflow;
	output		alt_vip_itc_0_clocked_video_vid_datavalid;
	output		alt_vip_itc_0_clocked_video_vid_v_sync;
	output		alt_vip_itc_0_clocked_video_vid_h_sync;
	output		alt_vip_itc_0_clocked_video_vid_f;
	output		alt_vip_itc_0_clocked_video_vid_h;
	output		alt_vip_itc_0_clocked_video_vid_v;
	output		alt_vip_vfr_0_interrupt_sender_irq;
	input		clk_50m_clk;
	input		clk_50m_reset_reset_n;
	input		nios_clk_clk;
	input		nios_clk_reset_reset_n;
	input	[4:0]	to_nios_2_datamaster_address;
	input		to_nios_2_datamaster_write;
	input	[31:0]	to_nios_2_datamaster_writedata;
	input		to_nios_2_datamaster_read;
	output	[31:0]	to_nios_2_datamaster_readdata;
	output	[31:0]	to_sdram_address;
	output	[5:0]	to_sdram_burstcount;
	input	[31:0]	to_sdram_readdata;
	output		to_sdram_read;
	input		to_sdram_readdatavalid;
	input		to_sdram_waitrequest;
	output		vga_clk_clk;
endmodule
