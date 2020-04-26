From: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v5 0/7] Add Rockchip NFC drivers for RK3308 and others
Date: Sun, 26 Apr 2020 18:02:43 +0800
Message-ID: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


Rockchp's NFC(Nand Flash Controller) has three versions: V6, V8 and V9.
This series patch can support all three versions.


Changes in v5:
- Fix some wrong define
- Add boot-medium define
- Remove some compatible define
- Add boot blocks support  with different ecc for bootrom
- Rename rockchip-nand.c to rockchip-nand-controller.c
- Unification of other variable names
- Remove some compatible define

Changes in v4:
- The compatible define with rkxx_nfc
- Add assigned-clocks
- Fix some wrong define
- Define platform data structure for the register offsets.
- The compatible define with rkxx_nfc.
- Use SET_SYSTEM_SLEEP_PM_OPS to define PM_OPS.
- Use exec_op instead of legacy hooks.

Changes in v3:
- Change the title for the dt-bindings

Changes in v2:
- Fix compile error.
- Include header files sorted by file name

Yifeng Zhao (7):
  dt-bindings: mtd: Describe Rockchip RK3xxx NAND flash controller
  mtd: rawnand: rockchip: NFC drivers for RK3308, RK3188 and others
  MAINTAINERS: add maintainers to rockchip nfc
  arm64: dts: rockchip: Add nfc dts for RK3308 SOC
  arm64: dts: rockchip: Add nfc dts for PX30 SOC
  xarm: dts: rockchip: Add nfc dts for RV1108 SOC
  arm: dts: rockchip: Add nfc dts for RK3066 and RK3188 SOC

 .../mtd/rockchip,nand-controller.yaml         |  124 ++
 MAINTAINERS                                   |    4 +-
 arch/arm/boot/dts/rk3xxx.dtsi                 |    9 +
 arch/arm/boot/dts/rv1108.dtsi                 |   11 +
 arch/arm64/boot/dts/rockchip/px30.dtsi        |   15 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      |   14 +
 drivers/mtd/nand/raw/Kconfig                  |    7 +
 drivers/mtd/nand/raw/Makefile                 |    1 +
 .../mtd/nand/raw/rockchip-nand-controller.c   | 1344 +++++++++++++++++
 9 files changed, 1527 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
 create mode 100644 drivers/mtd/nand/raw/rockchip-nand-controller.c

-- 
2.17.1
