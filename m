From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v5 00/13] rockchip: Add new rk3399 boards
Date: Fri, 26 Apr 2019 22:56:44 +0530
Message-ID: <20190426172653.2930-1-jagan@amarulasolutions.com>
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
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This is v5 patchset for New rk3399 boards support wrt previous
version[1]

Overall this series add support below rk3399 boards
- Orangepi RK3399
- NanoPI M4
- NanoPI NEO4
- Orangepi RK3399
- Rock PI 4
- Rockpro64

All the respective dts(i) files are synced from Linux 5.1-rc2 and few
dts(i) from linux-next.

Out of all above boards Rockpor64, Rock-PI and Nanopi NEO4 would support
booting via Rockchip miniloader as of now.

For booting the same with SPL NEO4 would require dynamic dram timing
detection and rest require LPDDR4 code. There is WIP[2] for these
dependencies and this would require big chunk of changes will effect
all the rk3399 boards, so I'm planning to mark it for next MW. 

Changes for v5:
- Make all changes related to move sdmmc, spi1 u-boot,dm-pre-reloc
  properties into all rk3399 dts(i) files.
Changes for v4:
- don't include existing dts(i) sdmmc, u-boot,dm-pre-reloc into
  rk3399-u-boot.dtsi
Changes for v3:
- drop NanoPC T4 for now, since board is yet to receive.
- add Rock PI-4 board.
- add separate -u-boot.dtsi file for nanopi4 sdram changes.
- collect Paul, Philipp and Kever Reviewed-by tags

[1] https://patchwork.ozlabs.org/cover/1091580/
[2] https://github.com/amarula/u-boot-amarula/tree/rockdev-lpddr4

Any inputs?
Jagan.

Jagan Teki (13):
  rockchip: dts: rk3399: Sync rk3399-opp from Linux
  rockchip: dts: rk3399: Sync pwm2_pin_pull_down from Linux 5.1-rc2
  arm64: rockchip: dts: Add rk3399-u-boot.dtsi files
  Kconfig: Add default SPL_FIT_GENERATOR for rockchip
  arm: rockchip: rk3399: Move common configs in Kconfig
  rockchip: rk3399: Add Orangepi RK3399 support
  rockchip: dts: rk3399: Sync rk3399-nanopi4.dtsi from Linux
  rockchip: dts: rk3399: nanopi4: Use CD pin as RK_FUNC_1
  rockchip: rk3399: Add Nanopi M4 board support
  rockchip: rk3399: Add Nanopi NEO4 board support
  rockchip: rk3399: Add Rockpro64 board support
  rockchip: rk3399: Add Rock PI 4 support
  doc: rockchip: Add global doc for rk3399 build/flash

 Kconfig                                     |   1 +
 arch/arm/dts/Makefile                       |   5 +
 arch/arm/dts/rk3399-evb-u-boot.dtsi         |   7 +
 arch/arm/dts/rk3399-evb.dts                 |   2 -
 arch/arm/dts/rk3399-ficus-u-boot.dtsi       |   7 +
 arch/arm/dts/rk3399-ficus.dts               |   1 -
 arch/arm/dts/rk3399-firefly-u-boot.dtsi     |   7 +
 arch/arm/dts/rk3399-firefly.dts             |   2 -
 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi     |   7 +
 arch/arm/dts/rk3399-gru-bob.dts             |   1 -
 arch/arm/dts/rk3399-gru.dtsi                |   1 -
 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi   |   7 +
 arch/arm/dts/rk3399-nanopi-m4.dts           |  66 ++
 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi |   6 +
 arch/arm/dts/rk3399-nanopi-neo4.dts         |  50 ++
 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi     |  11 +
 arch/arm/dts/rk3399-nanopi4.dtsi            | 703 ++++++++++++++++++
 arch/arm/dts/rk3399-opp.dtsi                | 133 ++++
 arch/arm/dts/rk3399-orangepi-u-boot.dtsi    |   7 +
 arch/arm/dts/rk3399-orangepi.dts            | 771 ++++++++++++++++++++
 arch/arm/dts/rk3399-puma-ddr1600.dts        |   2 +-
 arch/arm/dts/rk3399-puma.dtsi               |   3 -
 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi   |   6 +
 arch/arm/dts/rk3399-rock-pi-4.dts           | 606 +++++++++++++++
 arch/arm/dts/rk3399-rock960-u-boot.dtsi     |   7 +
 arch/arm/dts/rk3399-rock960.dts             |   1 -
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi   |   6 +
 arch/arm/dts/rk3399-rockpro64.dts           | 712 ++++++++++++++++++
 arch/arm/dts/rk3399-u-boot.dtsi             |  12 +
 arch/arm/dts/rk3399.dtsi                    |   6 +
 arch/arm/mach-rockchip/Kconfig              |  16 +
 board/rockchip/evb_rk3399/MAINTAINERS       |  33 +
 configs/chromebook_bob_defconfig            |  17 -
 configs/evb-rk3399_defconfig                |  17 -
 configs/ficus-rk3399_defconfig              |  17 -
 configs/firefly-rk3399_defconfig            |  17 -
 configs/nanopi-m4-rk3399_defconfig          |  58 ++
 configs/nanopi-neo4-rk3399_defconfig        |  58 ++
 configs/orangepi-rk3399_defconfig           |  58 ++
 configs/puma-rk3399_defconfig               |  16 -
 configs/rock-pi-4-rk3399_defconfig          |  58 ++
 configs/rock960-rk3399_defconfig            |  17 -
 configs/rockpro64-rk3399_defconfig          |  58 ++
 doc/README.rockchip                         | 209 +++++-
 44 files changed, 3691 insertions(+), 114 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-m4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-m4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi-neo4.dts
 create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-nanopi4.dtsi
 create mode 100644 arch/arm/dts/rk3399-opp.dtsi
 create mode 100644 arch/arm/dts/rk3399-orangepi-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-orangepi.dts
 create mode 100644 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rock-pi-4.dts
 create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rockpro64.dts
 create mode 100644 arch/arm/dts/rk3399-u-boot.dtsi
 create mode 100644 configs/nanopi-m4-rk3399_defconfig
 create mode 100644 configs/nanopi-neo4-rk3399_defconfig
 create mode 100644 configs/orangepi-rk3399_defconfig
 create mode 100644 configs/rock-pi-4-rk3399_defconfig
 create mode 100644 configs/rockpro64-rk3399_defconfig

-- 
2.18.0.321.gffc6fa0e3
