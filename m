From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [RFC PATCH v2 00/10] Enable RK3066 NANDC for MK808
Date: Fri, 24 Jan 2020 17:29:51 +0100
Message-ID: <20200124163001.28910-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org
Cc: richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

DISCLAIMER: Use at your own risk.
Status: For testing only!

Version: V2

Title: Enable RK3066 NANDC for MK808.

The majority of Rockchip devices use a closed source FTL driver
to reduce wear leveling. This patch serie proposes
an experimental raw NAND controller driver for basic tasks
in order to get the bindings and the nodes accepted for in the dts files.

What does it do:

On module load this driver will reserve its resources.
After initialization the MTD framework will then try to detect
the type and number of NAND chips. When all conditions are met,
it registers it self as MTD device.
This driver is then ready to receive user commands
such as to read and write NAND pages.

Test examples:

# dd if=/dev/mtd0 of=dd.bin bs=8192 count=4

# nanddump -a -l 32768 -f nanddump.bin /dev/mtd0

Not tested:

NANDC version 9.
NAND raw write.
RK3066 still has no support for Uboot.
Any write command would interfere with data structures made by the boot loader.

Etc.

Problems:

No bad block support. Most devices use a FTL bad block map with tags
that must be located on specific page locations which is outside
the scope of the raw MTD framework.

hynix_nand_init() add extra option NAND_BBM_LASTPAGE for H27UCG8T2ATR-BC.

No partition support. A FTL driver will store at random locations and
a linear user specific layout does not fit within
the generic character of this basic driver.

Driver assumes that IO pins are correctly set by the boot loader.

Fixed timing setting.

RK3228A/RK3228B compatibility version 701 unknown
RV1108 nand version unknown

Etc.

Todo:

MLC ?
ARM vs arm64 testing
move BCH strengths and array size to struct rk_nandc_data

Changes V2:
Include suggestions by Miquel Raynal
Include suggestions by Rob Herring

Kconfig:
  add supported Socs

rk3*.dtsi
  change compatible
  remove #address-cells and #size-cells;
  swap clock
  swap clock-names

rockchip,nand-controller.yaml
  add "rockchip,idb-res-blk-num" property
  add hash
  change compatible
  change doc name
  swap clock-names

rockchip-nand-controller.c
  add fls(8 * 1024) original intention
  add more struct rk_nandc_data types
  add rk_nandc_hw_ecc_setup_helper()
  add "rockchip,idb-res-blk-num" property
  add struct rk_nandc_cap
  add struct rk_nandc_reg_offset
  change copyright text
  change dev_err to dev_dbg in rk_nandc_probe()
  change driver name
  change of_rk_nandc_match compatible and data
  change rk_nandc_hw_syndrome_ecc_read_page() error message
  check return status rk_nandc_hw_syndrome_ecc_read_page()
  check return status rk_nandc_hw_syndrome_ecc_write_page()
  fix ./scripts/checkpatch.pl --strict issues
  fix arm64 compile (untested)
  fix rk_nandc_chip_init nand_scan
  move empty line above MODULE_LICENSE()
  move NAND_ECC_HW below NAND_ECC_HW_SYNDROME
  move vars from controller to chip structure
  relocate init_completion()
  remove nand_to_mtd in rk_nandc_attach_chip()
  remove page pointer write tag for bootrom
  rename all defines to RK_NANDC_*
  rename rk_nand_ctrl
  replace bank_base calculations by defines
  replace g_nandc_info[id]
  replace kmalloc by devm_kzalloc
  replace uint8_t by u8
  replace uint32_t bu u32
  replace writel by writel_relaxed
  replace RK_NANDC_NUM_BANKS by ctrl->cap->max_cs


Chris Zhong (1):
  ARM: dts: rockchip: add nandc node for rk3066a/rk3188

Dingqiang Lin (2):
  arm64: dts: rockchip: add nandc node for px30
  arm64: dts: rockchip: add nandc node for rk3308

Jianqun Xu (1):
  ARM: dts: rockchip: add nandc nodes for rk3288

Johan Jonker (2):
  dt-bindings: mtd: add rockchip nand controller bindings
  ARM: dts: rockchip: rk3066a-mk808: enable nandc node

Jon Lin (1):
  ARM: dts: rockchip: add nandc node for rv1108

Wenping Zhang (1):
  ARM: dts: rockchip: add nandc node for rk322x

Yifeng Zhao (1):
  mtd: rawnand: rockchip: Add NAND controller driver

Zhaoyifeng (1):
  arm64: dts: rockchip: add nandc node for rk3368

 .../bindings/mtd/rockchip,nand-controller.yaml     |   92 ++
 arch/arm/boot/dts/rk3066a-mk808.dts                |   11 +
 arch/arm/boot/dts/rk322x.dtsi                      |    9 +
 arch/arm/boot/dts/rk3288.dtsi                      |   20 +
 arch/arm/boot/dts/rk3xxx.dtsi                      |    9 +
 arch/arm/boot/dts/rv1108.dtsi                      |    9 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             |   12 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |    9 +
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |    9 +
 drivers/mtd/nand/raw/Kconfig                       |    9 +
 drivers/mtd/nand/raw/Makefile                      |    1 +
 drivers/mtd/nand/raw/rockchip-nand-controller.c    | 1307 ++++++++++++++++++++
 12 files changed, 1497 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
 create mode 100644 drivers/mtd/nand/raw/rockchip-nand-controller.c

--
2.11.0
