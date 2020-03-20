From: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v4 0/3] Add Rockchip NFC drivers for RK3308 and others
Date: Fri, 20 Mar 2020 17:33:39 +0800
Message-ID: <20200320093342.15470-1-yifeng.zhao@rock-chips.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


Rockchp's NFC(Nand Flash Controller) has three versions: V6, V8 and V9.
This series patch can support all  three versions.


Changes in v4:
- Define platform data structure for the register offsets.
- The compatible define with rkxx_nfc.
- Use SET_SYSTEM_SLEEP_PM_OPS to define PM_OPS.
- Use exec_op instead of legacy hooks.
- The compatible define with rkxx_nfc
- Add assigned-clocks
- Fix some wrong define

Changes in v3:
- Change the title for the dt-bindings

Changes in v2:
- Fix compile error.
- Include header files sorted by file name

Yifeng Zhao (3):
  mtd: rawnand: rockchip: NFC drivers for RK3308, RK3188 and others
  dt-bindings: mtd: Describe Rockchip RK3xxx NAND flash controller
  MAINTAINERS: add maintainers to rockchip nfc

 .../bindings/mtd/rockchip,nand.yaml           |  101 ++
 MAINTAINERS                                   |    2 +
 drivers/mtd/nand/raw/Kconfig                  |    7 +
 drivers/mtd/nand/raw/Makefile                 |    1 +
 drivers/mtd/nand/raw/rockchip_nand.c          | 1315 +++++++++++++++++
 5 files changed, 1426 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand.yaml
 create mode 100644 drivers/mtd/nand/raw/rockchip_nand.c

-- 
2.17.1
