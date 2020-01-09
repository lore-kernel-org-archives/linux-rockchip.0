From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v4 0/8] rk3399: Add redundant boot support
Date: Thu,  9 Jan 2020 14:22:14 +0530
Message-ID: <20200109085222.22670-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Boot redundancy is one of the key criteria for switch
recovery or golden partition based on the bootcount 
value, which indeed very much needed in production 
systems on the fields.

This is v4 patchset support redundant boot on Rockchip 
rk3399.

Changes for v4:
- fixed compilation issue
- add wdt kconfig option
- tested wdt and bootcount
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

Jagan Teki (8):
  rockchip: Add cpu-info
  rockchip: rk3399: Enable DISPLAY_CPUINFO
  arm: rockchip: Add common cru.h
  rockchip: Add common reset cause
  rockchip: rk3399: Add bootcount support
  watchdog: kconfig: Enable designware for rk3399
  [DO NOT MERGE] roc-rk3399-pc: Enable watchdog
  [DO NOT MERGE] roc-rk3399-pc: Enable bootcount

 arch/arm/include/asm/arch-rockchip/clock.h    |  4 +-
 arch/arm/include/asm/arch-rockchip/cru.h      | 30 +++++++++
 .../include/asm/arch-rockchip/cru_rk3288.h    | 20 ++----
 .../include/asm/arch-rockchip/cru_rk3399.h    | 11 ++--
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
 configs/roc-pc-rk3399_defconfig               |  3 +-
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
 drivers/watchdog/Kconfig                      |  1 +
 include/configs/rk3399_common.h               |  5 +-
 45 files changed, 182 insertions(+), 144 deletions(-)
 create mode 100644 arch/arm/include/asm/arch-rockchip/cru.h
 create mode 100644 arch/arm/mach-rockchip/cpu-info.c

-- 
2.18.0.321.gffc6fa0e3
