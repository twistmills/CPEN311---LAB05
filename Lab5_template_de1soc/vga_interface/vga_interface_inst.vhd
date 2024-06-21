	component vga_interface is
		port (
			alt_vip_itc_0_clocked_video_vid_clk       : in  std_logic                     := 'X';             -- vid_clk
			alt_vip_itc_0_clocked_video_vid_data      : out std_logic_vector(23 downto 0);                    -- vid_data
			alt_vip_itc_0_clocked_video_underflow     : out std_logic;                                        -- underflow
			alt_vip_itc_0_clocked_video_vid_datavalid : out std_logic;                                        -- vid_datavalid
			alt_vip_itc_0_clocked_video_vid_v_sync    : out std_logic;                                        -- vid_v_sync
			alt_vip_itc_0_clocked_video_vid_h_sync    : out std_logic;                                        -- vid_h_sync
			alt_vip_itc_0_clocked_video_vid_f         : out std_logic;                                        -- vid_f
			alt_vip_itc_0_clocked_video_vid_h         : out std_logic;                                        -- vid_h
			alt_vip_itc_0_clocked_video_vid_v         : out std_logic;                                        -- vid_v
			alt_vip_vfr_0_interrupt_sender_irq        : out std_logic;                                        -- irq
			clk_50m_clk                               : in  std_logic                     := 'X';             -- clk
			clk_50m_reset_reset_n                     : in  std_logic                     := 'X';             -- reset_n
			nios_clk_clk                              : in  std_logic                     := 'X';             -- clk
			nios_clk_reset_reset_n                    : in  std_logic                     := 'X';             -- reset_n
			to_nios_2_datamaster_address              : in  std_logic_vector(4 downto 0)  := (others => 'X'); -- address
			to_nios_2_datamaster_write                : in  std_logic                     := 'X';             -- write
			to_nios_2_datamaster_writedata            : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			to_nios_2_datamaster_read                 : in  std_logic                     := 'X';             -- read
			to_nios_2_datamaster_readdata             : out std_logic_vector(31 downto 0);                    -- readdata
			to_sdram_address                          : out std_logic_vector(31 downto 0);                    -- address
			to_sdram_burstcount                       : out std_logic_vector(5 downto 0);                     -- burstcount
			to_sdram_readdata                         : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			to_sdram_read                             : out std_logic;                                        -- read
			to_sdram_readdatavalid                    : in  std_logic                     := 'X';             -- readdatavalid
			to_sdram_waitrequest                      : in  std_logic                     := 'X';             -- waitrequest
			vga_clk_clk                               : out std_logic                                         -- clk
		);
	end component vga_interface;

	u0 : component vga_interface
		port map (
			alt_vip_itc_0_clocked_video_vid_clk       => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_clk,       --    alt_vip_itc_0_clocked_video.vid_clk
			alt_vip_itc_0_clocked_video_vid_data      => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_data,      --                               .vid_data
			alt_vip_itc_0_clocked_video_underflow     => CONNECTED_TO_alt_vip_itc_0_clocked_video_underflow,     --                               .underflow
			alt_vip_itc_0_clocked_video_vid_datavalid => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_datavalid, --                               .vid_datavalid
			alt_vip_itc_0_clocked_video_vid_v_sync    => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_v_sync,    --                               .vid_v_sync
			alt_vip_itc_0_clocked_video_vid_h_sync    => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_h_sync,    --                               .vid_h_sync
			alt_vip_itc_0_clocked_video_vid_f         => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_f,         --                               .vid_f
			alt_vip_itc_0_clocked_video_vid_h         => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_h,         --                               .vid_h
			alt_vip_itc_0_clocked_video_vid_v         => CONNECTED_TO_alt_vip_itc_0_clocked_video_vid_v,         --                               .vid_v
			alt_vip_vfr_0_interrupt_sender_irq        => CONNECTED_TO_alt_vip_vfr_0_interrupt_sender_irq,        -- alt_vip_vfr_0_interrupt_sender.irq
			clk_50m_clk                               => CONNECTED_TO_clk_50m_clk,                               --                        clk_50m.clk
			clk_50m_reset_reset_n                     => CONNECTED_TO_clk_50m_reset_reset_n,                     --                  clk_50m_reset.reset_n
			nios_clk_clk                              => CONNECTED_TO_nios_clk_clk,                              --                       nios_clk.clk
			nios_clk_reset_reset_n                    => CONNECTED_TO_nios_clk_reset_reset_n,                    --                 nios_clk_reset.reset_n
			to_nios_2_datamaster_address              => CONNECTED_TO_to_nios_2_datamaster_address,              --           to_nios_2_datamaster.address
			to_nios_2_datamaster_write                => CONNECTED_TO_to_nios_2_datamaster_write,                --                               .write
			to_nios_2_datamaster_writedata            => CONNECTED_TO_to_nios_2_datamaster_writedata,            --                               .writedata
			to_nios_2_datamaster_read                 => CONNECTED_TO_to_nios_2_datamaster_read,                 --                               .read
			to_nios_2_datamaster_readdata             => CONNECTED_TO_to_nios_2_datamaster_readdata,             --                               .readdata
			to_sdram_address                          => CONNECTED_TO_to_sdram_address,                          --                       to_sdram.address
			to_sdram_burstcount                       => CONNECTED_TO_to_sdram_burstcount,                       --                               .burstcount
			to_sdram_readdata                         => CONNECTED_TO_to_sdram_readdata,                         --                               .readdata
			to_sdram_read                             => CONNECTED_TO_to_sdram_read,                             --                               .read
			to_sdram_readdatavalid                    => CONNECTED_TO_to_sdram_readdatavalid,                    --                               .readdatavalid
			to_sdram_waitrequest                      => CONNECTED_TO_to_sdram_waitrequest,                      --                               .waitrequest
			vga_clk_clk                               => CONNECTED_TO_vga_clk_clk                                --                        vga_clk.clk
		);

