From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 00/11] rk3399: SPI boot support (fixes, updates)
Date: Sat, 21 Dec 2019 13:24:29 +0530
Message-ID: <20191221075440.6944-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This series support SPI boot on rk3399 in ROC-PC-RK3399 as
an example board.

Series introduces rk_spi fixes, sf distroboot, SPI boot support
on ROC-PC-RK3399 board.

SPI Boot log:
------------

Channel 0: LPDDR4, 50MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB
Channel 1: LPDDR4, 50MHz
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB
256B stride
256B stride
lpddr4_set_rate: change freq to 400000000 mhz 0, 1
lpddr4_set_rate: change freq to 800000000 mhz 1, 0

U-Boot SPL 2020.01-rc4-00241-g9c3e7e925f (Dec 18 2019 - 19:54:46 +0530)
Trying to boot from SPI


U-Boot 2020.01-rc4-00241-g9c3e7e925f (Dec 18 2019 - 19:54:46 +0530)

Model: Firefly ROC-RK3399-PC Board
DRAM:  3.9 GiB
PMIC:  RK808 
MMC:   dwmmc@fe320000: 1, sdhci@fe330000: 0
Loading Environment from SPI Flash... SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
*** Warning - bad CRC, using default environment

In:    serial@ff1a0000
Out:   serial@ff1a0000
Err:   serial@ff1a0000
Model: Firefly ROC-RK3399-PC Board
rockchip_dnl_key_pressed: adc_channel_single_shot fail!
Net:   
Error: ethernet@fe300000 address not set.
No ethernet found.

Hit any key to stop autoboot:  0 
=> 

Any inputs?
Jagan.

Jagan Teki (11):
  spi: rk: Limit transfers to (64K - 1) bytes
  distro_bootcmd: Add SF support
  rockchip: Include SF on distrocmd devices
  rk3399: Add boot flash script offet, size
  rk3399: Check MMC env while defining it
  env: kconfig: Restrict rockchip env for MMC
  env: Enable SPI flash env for rockchip
  rockchip: dts: Sync ROC-RK3399-PC changes from Linux
  roc-pc-rk3399: Enable SPI Flash
  rockpro-rk3399: Enable SPI Flash
  roc-rk3399-pc: Add SPI boot support

 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi    |  16 +-
 arch/arm/dts/rk3399-roc-pc.dts            | 673 +-----------------
 arch/arm/dts/rk3399-roc-pc.dtsi           | 813 ++++++++++++++++++++++
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi |   4 +
 board/rockchip/evb_rk3399/MAINTAINERS     |   2 +
 configs/roc-pc-rk3399-spi_defconfig       |  62 ++
 configs/roc-pc-rk3399_defconfig           |   2 +
 configs/rockpro64-rk3399_defconfig        |   2 +
 drivers/spi/rk_spi.c                      |  10 +-
 env/Kconfig                               |   8 +-
 include/config_distro_bootcmd.h           |  35 +
 include/configs/evb_rk3399.h              |   4 +-
 include/configs/rk3399_common.h           |   2 +
 include/configs/rockchip-common.h         |   7 +
 14 files changed, 964 insertions(+), 676 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-roc-pc.dtsi
 create mode 100644 configs/roc-pc-rk3399-spi_defconfig

-- 
2.18.0.321.gffc6fa0e3
