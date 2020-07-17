From: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v8 0/8] Add Rockchip NFC drivers for RK3308 and others
Date: Fri, 17 Jul 2020 17:24:16 +0800
Message-ID: <20200717092420.19798-1-yifeng.zhao@rock-chips.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


Rockchp's NFC(Nand Flash Controller) has four versions: V600, V622, V800 and
V900.This series patch can support all four versions.


Changes in v8:
- Fix make dt_binding_check error

Changes in v7:
- Fix some wrong define
- Rebase to linux-next.
- Fix coding style.
- Reserved 4 bytes at the begining of the oob area.
- Page raw read and write included ecc data.

Changes in v6:
- Fix some wrong define
- Modified the definition of compatible
- The mtd->name set by NAND label property.
- Add some comments.
- Fix compile error.

Changes in v5:
- Fix some wrong define.
- Add boot-medium define.
- Remove some compatible define.
- Add boot blocks support  with different ECC for bootROM.
- Rename rockchip-nand.c to rockchip-nand-controller.c.
- Unification of other variable names.
- Remove some compatible define.

Changes in v4:
- The compatible define with rkxx_nfc.
- Add assigned-clocks.
- Fix some wrong defineChanges in.
- Define platform data structure for the register offsets.
- The compatible define with rkxx_nfc.
- Use SET_SYSTEM_SLEEP_PM_OPS to define PM_OPS.
- Use exec_op instead of legacy hooks.

Changes in v3:
- Change the title for the dt-bindings.

Changes in v2:
- Fix compile error.
- Include header files sorted by file name.

Yifeng Zhao (8):
  dt-bindings: mtd: Describe Rockchip RK3xxx NAND flash controller
  mtd: rawnand: rockchip: NFC drivers for RK3308, RK2928 and others
  MAINTAINERS: add maintainers to ROCKCHIP NFC
  arm64: dts: rockchip: Add NFC node for RK3308 SoC
  arm64: dts: rockchip: Add NFC node for PX30 SoC
  arm: dts: rockchip: Add NFC node for RV1108 SoC
  arm: dts: rockchip: Add NFC node for RK2928 and other SoCs
  arm: dts: rockchip: Add NFC node for RK3036 SoC

 .../mtd/rockchip,nand-controller.yaml         |  162 ++
 MAINTAINERS                                   |    4 +-
 arch/arm/boot/dts/rk3036.dtsi                 |   52 +
 arch/arm/boot/dts/rk3xxx.dtsi                 |    9 +
 arch/arm/boot/dts/rv1108.dtsi                 |   11 +
 arch/arm64/boot/dts/rockchip/px30.dtsi        |   15 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      |   15 +
 drivers/mtd/nand/raw/Kconfig                  |   12 +
 drivers/mtd/nand/raw/Makefile                 |    1 +
 .../mtd/nand/raw/rockchip-nand-controller.c   | 1422 +++++++++++++++++
 10 files changed, 1701 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
 create mode 100644 drivers/mtd/nand/raw/rockchip-nand-controller.c

-- 
2.17.1
