From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 0/5] roc-rk3399-pc: Custom SPL init
Date: Thu, 18 Jun 2020 21:09:43 +0530
Message-ID: <20200618153948.218506-1-jagan@amarulasolutions.com>
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
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

This series supports custom initialization code required for 
roc-rk3399-pc board on SPL stage.

Here is the previous v3 this series[1]. 

Now this series is well mature code handling to add custom 
spl_board_init code parts.

roc-rk3399-pc would require custom leds initialization based 
on user intervention of the power key. This code handles the 
user intervention via SPI environment variable. If someone 
or production systems wants this feature then 'pwr_key' has 
to be set otherwise it is normal like other rk3399 boards 
in Mainline.

Changes for v4:
- enable SPL_BOARD_INIT in all platforms
Changes for v3:
- support leds on SPL
- support env 'pwr_key'

[1] https://patchwork.ozlabs.org/project/uboot/cover/20200608183144.26809-1-jagan@amarulasolutions.com

Any inputs?
Jagan.

Jagan Teki (5):
  rockchip: spl: Add spl_board_init
  rk3399: spl: Print SPL banner after relocation
  roc-rk3399-pc: Move leds setup in SPL
  rockchip: Separate the reset cause from display cpuinfo
  roc-rk3399-pc: Set LED only during POR and pwr_key=y

 arch/arm/Kconfig                              |  1 +
 arch/arm/include/asm/arch-rockchip/cru.h      |  2 +
 arch/arm/mach-rockchip/Kconfig                |  2 -
 arch/arm/mach-rockchip/Makefile               |  5 +-
 arch/arm/mach-rockchip/cpu-info.c             | 20 +++---
 arch/arm/mach-rockchip/rk3188/rk3188.c        |  2 +-
 arch/arm/mach-rockchip/rk3399/rk3399.c        | 57 -----------------
 arch/arm/mach-rockchip/spl.c                  | 11 ++++
 arch/arm/mach-rockchip/tpl.c                  |  7 ---
 board/firefly/firefly-rk3288/firefly-rk3288.c |  2 +-
 board/firefly/roc-pc-rk3399/Makefile          |  4 ++
 board/firefly/roc-pc-rk3399/roc-pc-rk3399.c   | 21 -------
 board/firefly/roc-pc-rk3399/spl.c             | 56 +++++++++++++++++
 board/phytec/phycore_rk3288/phycore-rk3288.c  |  2 +-
 .../puma_rk3399/puma-rk3399.c                 | 61 +++++++++++++++++++
 configs/roc-pc-mezzanine-rk3399_defconfig     |  6 +-
 configs/roc-pc-rk3399_defconfig               |  6 +-
 17 files changed, 162 insertions(+), 103 deletions(-)
 create mode 100644 board/firefly/roc-pc-rk3399/spl.c

-- 
2.25.1
