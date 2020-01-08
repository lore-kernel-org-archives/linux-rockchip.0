From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH v1 00/10] Enable RK3066 NANDC for MK808
Date: Wed,  8 Jan 2020 21:53:28 +0100
Message-ID: <20200108205338.11369-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-mtd-bounces+gldm-linux-mtd-36=gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+gldm-linux-mtd-36=gmane.org@lists.infradead.org
To: miquel.raynal@bootlin.com
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com, richard@nod.at, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org, heiko@sntech.de
List-Id: linux-rockchip.vger.kernel.org

DISCLAIMER: Use at your own risk.
Status: For testing only!

Version: V1

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

# dd if-/dev/mtd0 of=dd.bin bs=8192 count=4

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

No partition support. A FTL driver will store at random locations and
a linear user specific layout does not fit within
the generic character of this basic driver.

Etc.

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
  mtd: nand: raw: add rockchip nand controller driver

Zhaoyifeng (1):
  arm64: dts: rockchip: add nandc node for rk3368

 .../devicetree/bindings/mtd/rockchip,nandc.yaml    |   78 ++
 arch/arm/boot/dts/rk3066a-mk808.dts                |    9 +
 arch/arm/boot/dts/rk322x.dtsi                      |   11 +
 arch/arm/boot/dts/rk3288.dtsi                      |   24 +
 arch/arm/boot/dts/rk3xxx.dtsi                      |   11 +
 arch/arm/boot/dts/rv1108.dtsi                      |   11 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             |   15 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |   11 +
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |   12 +
 drivers/mtd/nand/raw/Kconfig                       |    8 +
 drivers/mtd/nand/raw/Makefile                      |    1 +
 drivers/mtd/nand/raw/rockchip_nandc.c              | 1224 ++++++++++++++++++++
 12 files changed, 1415 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nandc.yaml
 create mode 100644 drivers/mtd/nand/raw/rockchip_nandc.c

--
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
