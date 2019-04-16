From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 00/14] rockchip: Add new rk3399 boards
Date: Tue, 16 Apr 2019 16:26:33 +0530
Message-ID: <20190416105647.18437-1-jagan@amarulasolutions.com>
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
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This series is combination of previous version[1] plus new rk3399
boards addition.

Overall this series add support below rk3399 boards
- Orangepi RK3399
- Nanopc T4
- Nanopi M4
- Nanopi NEO4
- Orangepi RK3399
- Rockpro64

All the respective dts(i) files are synced from Linux 5.1-rc2 and few
dts(i) from linux-next.

Nanopi NEO4, Rockpro64 are supporting via Rockchip miniloader, and rest
support both Rockchip miniloader along with U-Boot SPL.

- Rockpro64, is not possible to boot via U-Boot SPL since it has dependency with LPDDR4 
  code which is work-in-progress and as soon it arrived in mailing list, will update the 
  same with ddr dtsi.
- Nanopi NEO4 has some ddr issue with[2] rk3399-sdram-ddr3-1866.dtsi,
  will update the same with U-Boot SPL once it is fixed.

patch 1, 2: Sync rk3399 dtsi files from Linux 5.1-rc2

patch 3: Create global rk3399-u-boot.dtsi

patch 4: move default SPL_FIT_GENERATOR to Kconfig

patch 5: Move common rk3399 configs into Kconfig

patch 6: Add Orangepi RK3399 support

patch 7: Sync rk3399-nanopi4.dtsi from Linux 

patch 8: Fix for sdmmc CD pin

patch 9: Add 4GB LPDDR3-1866 ddr dtsi

patch 10: Add Nanopi M4 support

patch 11: Add Nanopc T4 support

patch 12: Add Nanopi NEO4 support

patch 13: Add Rockpro64 support

patch 14: Global document for build/flash 

[2] https://marc.info/?l=u-boot&m=154671835328469&w=2
[1] https://patchwork.ozlabs.org/patch/1054208/

Any inputs?
Jagan.

Jagan Teki (14):
  rockchip: dts: rk3399: Sync rk3399-opp from Linux
  rockchip: dts: rk3399: Sync pwm2_pin_pull_down from Linux 5.1-rc2
  rockchip: dts: rk3399: Create initial rk3399-u-boot.dtsi
  Kconfig: Add default SPL_FIT_GENERATOR for rockchip
  arm: rockchip: rk3399: Move common configs in Kconfig
  rockchip: rk3399: Add Orangepi RK3399 support
  rockchip: dts: rk3399: Sync rk3399-nanopi4.dtsi from Linux
  rockchip: dts: rk3399: nanopi4: Use CD pin as RK_FUNC_1
  rockchip: rk3399: Add 4GB LPDDR3-1866 DMC settings
  rockchip: rk3399: Add Nanopi M4 board support
  rockchip: rk3399: Add Nanopc T4 board support
  rockchip: rk3399: Add Nanopi NEO4 board support
  rockchip: rk3399: Add Rockpro64 board support
  doc: rockchip: Add global doc for rk3399 build/flash

 Kconfig                                       |    1 +
 arch/arm/dts/Makefile                         |    5 +
 arch/arm/dts/rk3399-evb.dts                   |    1 -
 arch/arm/dts/rk3399-firefly.dts               |    1 -
 arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi     |    7 +
 arch/arm/dts/rk3399-nanopc-t4.dts             |   91 +
 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi     |    7 +
 arch/arm/dts/rk3399-nanopi-m4.dts             |   66 +
 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi   |    6 +
 arch/arm/dts/rk3399-nanopi-neo4.dts           |   50 +
 arch/arm/dts/rk3399-nanopi4.dtsi              |  699 ++++++++
 arch/arm/dts/rk3399-opp.dtsi                  |  133 ++
 arch/arm/dts/rk3399-orangepi-u-boot.dtsi      |    7 +
 arch/arm/dts/rk3399-orangepi.dts              |  771 +++++++++
 arch/arm/dts/rk3399-puma.dtsi                 |    1 -
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi     |    6 +
 arch/arm/dts/rk3399-rockpro64.dts             |  712 ++++++++
 .../arm/dts/rk3399-sdram-lpddr3-4GB-1866.dtsi | 1535 +++++++++++++++++
 arch/arm/dts/rk3399-u-boot.dtsi               |    8 +
 arch/arm/dts/rk3399.dtsi                      |    6 +
 arch/arm/mach-rockchip/Kconfig                |   16 +
 board/rockchip/evb_rk3399/MAINTAINERS         |   32 +
 configs/chromebook_bob_defconfig              |   17 -
 configs/evb-rk3399_defconfig                  |   17 -
 configs/ficus-rk3399_defconfig                |   17 -
 configs/firefly-rk3399_defconfig              |   17 -
 configs/nanopc-t4-rk3399_defconfig            |   58 +
 configs/nanopi-m4-rk3399_defconfig            |   58 +
 configs/nanopi-neo4-rk3399_defconfig          |   58 +
 configs/orangepi-rk3399_defconfig             |   58 +
 configs/puma-rk3399_defconfig                 |   16 -
 configs/rock960-rk3399_defconfig              |   17 -
 configs/rockpro64-rk3399_defconfig            |   58 +
 doc/README.rockchip                           |  209 ++-
 34 files changed, 4656 insertions(+), 105 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-nanopc-t4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopc-t4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-m4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-neo4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi4.dtsi
 create mode 100644 arch/arm/dts/rk3399-opp.dtsi
 create mode 100644 arch/arm/dts/rk3399-orangepi-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-orangepi.dts
 create mode 100644 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rockpro64.dts
 create mode 100644 arch/arm/dts/rk3399-sdram-lpddr3-4GB-1866.dtsi
 create mode 100644 arch/arm/dts/rk3399-u-boot.dtsi
 create mode 100644 configs/nanopc-t4-rk3399_defconfig
 create mode 100644 configs/nanopi-m4-rk3399_defconfig
 create mode 100644 configs/nanopi-neo4-rk3399_defconfig
 create mode 100644 configs/orangepi-rk3399_defconfig
 create mode 100644 configs/rockpro64-rk3399_defconfig

-- 
2.18.0.321.gffc6fa0e3
