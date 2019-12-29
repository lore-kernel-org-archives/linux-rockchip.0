From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 0/5] rk3399: Add redundant boot support
Date: Mon, 30 Dec 2019 00:37:21 +0530
Message-ID: <20191229190726.29266-1-jagan@amarulasolutions.com>
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
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Boot redundancy is one of the key criteria for switch
recovery or golden partition based on the bootcount 
value, which indeed very much needed in production 
systems on the fields.

This is v3 patchset support redundant boot on Rockchip 
rk3399.

This series skip wdt changes as Marek patches support 
the same.

Changes for v3:
- rework of cru.h to include rk3288
- rebase on master
Changes for v2:
- Handle TPL build for watchdog, if TPL won't enable
- Fix comments for dw_wdt driver-model comments from Andy
- Add Kconfig items for WDT_TPL
- Support WDT on TPL as well
- Use SYS_SOC for cpu-info

Any inputs?
Jagan.

Jagan Teki (5):
  rockchip: Add cpu-info
  rockchip: rk3399: Enable DISPLAY_CPUINFO
  arm: rockchip: Add common cru.h
  rockchip: Add common reset cause
  rockchip: rk3399: Add bootcount support

 arch/arm/include/asm/arch-rockchip/clock.h    |  4 +-
 arch/arm/include/asm/arch-rockchip/cru.h      | 28 ++++++++
 .../include/asm/arch-rockchip/cru_rk3288.h    | 20 ++----
 .../include/asm/arch-rockchip/cru_rk3399.h    | 10 +--
 arch/arm/mach-rockchip/Kconfig                |  2 +
 arch/arm/mach-rockchip/Makefile               |  1 +
 arch/arm/mach-rockchip/cpu-info.c             | 65 +++++++++++++++++++
 arch/arm/mach-rockchip/rk3288/clk_rk3288.c    |  2 +-
 arch/arm/mach-rockchip/rk3288/rk3288.c        | 41 +-----------
 arch/arm/mach-rockchip/rk3399/Kconfig         | 10 +++
 arch/arm/mach-rockchip/rk3399/clk_rk3399.c    |  2 +-
 arch/arm/mach-rockchip/rk3399/rk3399.c        |  2 +-
 configs/evb-rk3288_defconfig                  |  1 -
 configs/evb-rk3399_defconfig                  |  1 -
 configs/ficus-rk3399_defconfig                |  1 -
 configs/firefly-rk3288_defconfig              |  1 -
 configs/firefly-rk3399_defconfig              |  1 -
 configs/khadas-edge-captain-rk3399_defconfig  |  1 -
 configs/khadas-edge-rk3399_defconfig          |  1 -
 configs/khadas-edge-v-rk3399_defconfig        |  1 -
 configs/leez-rk3399_defconfig                 |  1 -
 configs/miqi-rk3288_defconfig                 |  1 -
 configs/nanopc-t4-rk3399_defconfig            |  1 -
 configs/nanopi-m4-rk3399_defconfig            |  1 -
 configs/nanopi-neo4-rk3399_defconfig          |  1 -
 configs/orangepi-rk3399_defconfig             |  1 -
 configs/phycore-rk3288_defconfig              |  1 -
 configs/popmetal-rk3288_defconfig             |  1 -
 configs/puma-rk3399_defconfig                 |  1 -
 configs/roc-pc-rk3399_defconfig               |  1 -
 configs/rock-pi-4-rk3399_defconfig            |  1 -
 configs/rock960-rk3399_defconfig              |  1 -
 configs/rockpro64-rk3399_defconfig            |  1 -
 configs/tinker-rk3288_defconfig               |  1 -
 configs/tinker-s-rk3288_defconfig             |  1 -
 configs/vyasa-rk3288_defconfig                |  1 -
 drivers/clk/rockchip/clk_rk3288.c             | 42 ++++++------
 drivers/clk/rockchip/clk_rk3399.c             | 36 +++++-----
 drivers/ram/rockchip/sdram_rk3288.c           | 10 +--
 drivers/ram/rockchip/sdram_rk3399.c           | 10 +--
 drivers/video/rockchip/rk3288_mipi.c          |  2 +-
 drivers/video/rockchip/rk3399_mipi.c          |  2 +-
 drivers/video/rockchip/rk_mipi.c              |  2 +-
 include/configs/rk3399_common.h               |  5 +-
 44 files changed, 177 insertions(+), 143 deletions(-)
 create mode 100644 arch/arm/include/asm/arch-rockchip/cru.h
 create mode 100644 arch/arm/mach-rockchip/cpu-info.c

-- 
2.18.0.321.gffc6fa0e3
