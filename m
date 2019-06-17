From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 00/99] ram: rk3399: Add LPDDR4 support
Date: Mon, 17 Jun 2019 13:01:13 +0530
Message-ID: <20190617073252.27810-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This is the v2 set for supporting LPDDR4 with associated
features, wrt to previous series[1].

Thanks to
- YouMin Chen
- Akash Gajjar
- Kever Yang
for supporting all the help on this work.

On summary this series support
- Code warning and fixes
- rank detection, this would required to probe single channel 
  sdram configured in NanoPI-NEO4
- LPDDR4 support, tested in Rockpro64 and Rock-PI-4

Changes for v2:
- handle LPDDR4 code as part of CONFIG_RAM_RK3399_LPDDR4
- support data_training and set_rate via sdram_rk3399_ops
- add proper sys_reg_enc macros
- add new patch to rename variable sdram_params with params
- fix few commit messages

patch 0001 - 0034: fix code warnings, prints, new macros

patch 0035 - 0052: rank detection, sdram debug code

patch 0053: use DDR3-1800 on NanoPI-NEO4

patch 0054 - 0094: lpddr4 support

patch 0095: enable lpddr4 in Rockpro64

patch 0096: enable lpddr4 in Rock-PI-4

patch 0097: LPDDR4-100 timings

patch 0098: Use LPDDR4-100 on Rockpro64

patch 0099: Use LPDDR4-100 on Rock-PI 4

Size (increased to ~3KiB ):
- Puma RK3399 (u-boot-spl-dtb.bin):
  before: 115644 after: 118744
- NanoPI M4 (u-boot-tpl-dtb.bin)
  before: 41873 after: 44909

Travis-CI:
https://travis-ci.org/openedev/u-boot-amarula/builds/546597944

Repo:
https://github.com/openedev/u-boot-amarula/tree/rk3399-lpddr4

[1] https://patchwork.ozlabs.org/cover/1113893/

Any inputs?
Jagan.

Jagan Teki (99):
  ram: rk3399: Fix code warnings
  ram: rk3399: Add space between string with format specifier
  ram: rk3399: Add proper spaces in code
  ram: rk3399: s/sdram_params/params
  ram: rk3399: Handle data training return types
  ram: rk3399: Order include files
  ram: rk3399: Move macro after include files
  ram: rk3399: Clear PI_175 interrupts in data training
  ram: rk3399: Use rank mask in ca data training
  ram: rk3399: Use rank mask in wdql data training
  ram: rk3399: Add ddrtype enc macro
  ram: rk3399: Add channel number encoder macro
  ram: rk3399: Add row_3_4 enc macro
  ram: rk3399: Add chipinfo macro
  ram: rk3399: Add rank enc macro
  ram: rk3399: Add column enc macro
  ram: rk3399: Add bk enc macro
  ram: rk3399: Add dbw enc macro
  ram: rk3399: Add cs0_rw macro
  ram: rk3399: Add cs1_rw macro
  ram: rk3399: Add bw enc macro
  ram: rk3399: Rename sys_reg with sys_reg2
  ram: rk3399: Update cs0_row to use sys_reg3
  ram: rk3399: Update cs1_row to use sys_reg3
  ram: rk3399: Add cs1_col enc macro
  ram: rk3399: Add ddr version enc macro
  ram: rk3399: Add ddrtimingC0
  ram: rk3399: Add DdrMode
  ram: rk3399: Handle pctl_cfg return type
  ram: rk3399: s/tsel_wr_select_n/tsel_wr_select_dq_n
  ram: rk3399: s/tsel_wr_select_p/tsel_wr_select_dq_p
  ram: rk3399: s/ca_tsel_wr_select_n/tsel_wr_select_ca_n
  ram: rk3399: s/ca_tsel_wr_select_p/tsel_wr_select_ca_p
  ram: rk3399: Order tsel variables
  ram: rk3399: Add phy pctrl reset support
  ram: rk3399: Move pwrup_srefresh_exit to dram_info
  ram: rk3399: Add pctl start support
  ram: rockchip: rk3399: Add cap_info structure
  ram: rk3399: s/rk3399_base_params/sdram_base_params
  ram: rk3399: Move common sdram structures in common header
  arm: include: rockchip: Move dramtypes to common header
  arm: include: rockchip: Add DDR4 enum
  ram: rockchip: Add initial Kconfig
  debug_uart: Add printdec
  ram: rockchip: Add debug sdram driver
  ram: rockchip: debug: Add sdram_print_ddr_info
  ram: rockchip: debug: Get the cs capacity
  ram: rk3399: debug: Add sdram_print_stride
  ram: rk3399: Compute stride for 2 channels
  ram: rk3399: Compute stride for 1 channel a
  ram: rk3399: Add rank detection support
  ram: rk3399: Enable sdram debug functions
  rockchip: dts: rk3399: nanopi-neo4: Use DDR3-1866 dtsi
  clk: rockchip: rk3399: Fix check patch warnings and checks
  clk: rockchip: rk3399: Set 50MHz ddr clock
  clk: rockchip: rk3399: Set 400MHz ddr clock
  ram: rk3399: Add spaces in pctl_cfg
  ram: rk3399: Configure phy IO in ds odt
  ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
  ram: rk3399: Add lpddr4 rank mask for ca training
  ram: rk3399: Add lpddr4 rank mask for wdql training
  ram: rk3399: Move mode_sel assignment
  ram: rk3399: Don't wait for PLL lock in lpddr4
  ram: rk3399: Avoid two channel ZQ Cal Start at the same time
  ram: rk3399: Configure PHY_898, PHY_919 for lpddr4
  ram: rk3399: Configure BOOSTP_EN, BOOSTN_EN for lpddr4
  ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
  ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
  ram: rk3399: Map chipselect for lpddr4
  ram: rk3399: Configure tsel write ca for lpddr4
  ram: rk3399: Don't disable dfi dram clk for lpddr4, rank 1
  ram: rk3399: Add IO settings
  ram: sdram: Configure lpddr4 tsel rd, wr based on IO settings
  ram: rk3399: Add tsel control clock drive
  ram: rk3399: Configure soc odt support
  ram: rk3399: Get lpddr4 tsel_rd_en from io settings
  ram: rk3399: Update lpddr4 vref based on io settings
  ram: rk3399: Update lpddr4 mode_sel based on io settings
  ram: rk3399: Update lpddr4 vref_mode_ac
  ram: rk3399: Simplify data training first argument
  ram: rk3399: Handle data training via ops
  ram: rk3399: Add LPPDR4 mr detection
  arm: include: rockchip: Add rk3399 pmu file
  rockchip: rk3399: syscon: Add pmu support
  rockchip: dts: rk3399: Add u-boot,dm-pre-reloc for pmu
  ram: rk3399: Add LPPDDR4-400 timings inc
  ram: rk3399: Add LPPDDR4-800 timings inc
  ram: rk3399: Add set_rate sdram rk3399 ops
  ram: rk3399: Add lpddr4 set rate support
  ram: rk3399: Set lpddr4 dq odt
  ram: rk3399: Set lpddr4 ca odt
  ram: rk3399: Set lpddr4 MR3
  ram: rk3399: Set lpddr4 MR12
  ram: rk3399: Set lpddr4 MR14
  configs: rockpro64: Enable LPDDR4 support
  configs: rock-pi-4: Enable LPDDR4 support
  rockchip: dts: rk3399: Add LPDDR4-100 timings
  rockchip: dts: rk3399: rockpro64: Use LPDDR4-100 dtsi
  rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi

 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi   |    1 +
 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi     |    1 +
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi     |    1 +
 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi     | 1537 +++++++++++
 arch/arm/dts/rk3399-u-boot.dtsi               |    4 +
 .../include/asm/arch-rockchip/pmu_rk3399.h    |   72 +
 arch/arm/include/asm/arch-rockchip/sdram.h    |    6 -
 .../include/asm/arch-rockchip/sdram_common.h  |   90 +
 .../include/asm/arch-rockchip/sdram_rk322x.h  |    7 -
 .../include/asm/arch-rockchip/sdram_rk3399.h  |   65 +-
 arch/arm/mach-rockchip/rk3399/syscon_rk3399.c |    8 +
 configs/rock-pi-4-rk3399_defconfig            |    1 +
 configs/rockpro64-rk3399_defconfig            |    1 +
 drivers/clk/rockchip/clk_rk3399.c             |   76 +-
 drivers/ram/Kconfig                           |    1 +
 drivers/ram/rockchip/Kconfig                  |   33 +
 drivers/ram/rockchip/Makefile                 |    3 +-
 .../ram/rockchip/sdram-rk3399-lpddr4-400.inc  | 1570 +++++++++++
 .../ram/rockchip/sdram-rk3399-lpddr4-800.inc  | 1570 +++++++++++
 drivers/ram/rockchip/sdram_debug.c            |  147 ++
 drivers/ram/rockchip/sdram_rk3399.c           | 2289 ++++++++++++++---
 include/debug_uart.h                          |   19 +
 22 files changed, 7035 insertions(+), 467 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-sdram-lpddr4-100.dtsi
 create mode 100644 arch/arm/include/asm/arch-rockchip/pmu_rk3399.h
 create mode 100644 drivers/ram/rockchip/Kconfig
 create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-400.inc
 create mode 100644 drivers/ram/rockchip/sdram-rk3399-lpddr4-800.inc
 create mode 100644 drivers/ram/rockchip/sdram_debug.c

-- 
2.18.0.321.gffc6fa0e3
