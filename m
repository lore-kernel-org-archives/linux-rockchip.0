From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [RFC 0/7] rockchip: Add PHY drivers
Date: Fri,  1 May 2020 03:15:22 +0530
Message-ID: <20200430214529.18887-1-jagan@amarulasolutions.com>
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
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Tom Rini <trini@konsulko.com>, Frank Wang <frank.wang@rock-chips.com>, William Wu <william.wu@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Patrice Chotard <patrice.chotard@st.com>
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

This patch add support for USB2PHY and PCIe PHY driver
on rockchip platform and tested the same in rk3399.

Basic code is referenced from Linux, hence all the
license SPDX are reused.

The reason behind sending this as RFC is PHY devices 
for u2phy, pcie_phy nodes are unable to get via 
Generic PHY framework. The observed reasons are
1) u2phy is not part of root node.
2) pcie_phy is not part of root node and also parent
   is of non-PHY type.

This is sample PHY provider topology that Generic PHY
is failed to get PHY device.

   /{ 
      grf: syscon@ff770000 {
	compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
	reg = <0x0 0xff770000 0x0 0x10000>;
	#address-cells = <1>;
	#size-cells = <1>;

	u2phy0: usb2-phy@e450 {
		compatible = "rockchip,rk3399-usb2phy";
		reg = <0xe450 0x10>;
		clocks = <&cru SCLK_USB2PHY0_REF>;
		clock-names = "phyclk";
		#clock-cells = <0>;
		clock-output-names = "clk_usbphy0_480m";
		status = "disabled";

		u2phy0_host: host-port {
			#phy-cells = <0>;
			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
			interrupt-names = "linestate";
			status = "disabled";
		};

		u2phy0_otg: otg-port {
			#phy-cells = <0>;
			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
			interrupt-names = "otg-bvalid", "otg-id",
					  "linestate";
			status = "disabled";
		};
	};

	pcie_phy: pcie-phy {
		compatible = "rockchip,rk3399-pcie-phy";
		clocks = <&cru SCLK_PCIEPHY_REF>;
		clock-names = "refclk";
		#phy-cells = <1>;
		resets = <&cru SRST_PCIEPHY>;
		drive-impedance-ohm = <50>;
		reset-names = "phy";
		status = "disabled";
	};
   };

So, this series moved these nodes as part of root 
to make it work but of course any suggestions on this 
will be taken into consideration.

Any inputs?
Jagan.

Jagan Teki (7):
  phy: Add Rockchip PCIe PHY driver
  clk: rk3399: Enable/Disable the USB2PHY clk
  phy: rockchip: Add Rockchip USB2PHY driver
  arm64: dts: rk3399: Move u2phy into root port
  arm64: dts: rk3399: Move pcie_phy into root port
  pci: rockchip: Switch to generic-phy
  pci: rockchip: Drop legacy PHY driver

 arch/arm/dts/rk3399.dtsi                      | 118 +++----
 drivers/Kconfig                               |   2 +
 drivers/Makefile                              |   1 +
 drivers/clk/rockchip/clk_rk3399.c             |  12 +
 drivers/pci/Makefile                          |   2 +-
 drivers/pci/pcie_rockchip.c                   |  95 +++++-
 drivers/pci/pcie_rockchip.h                   | 142 --------
 drivers/pci/pcie_rockchip_phy.c               | 205 ------------
 drivers/phy/rockchip/Kconfig                  |  16 +
 drivers/phy/rockchip/Makefile                 |   7 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 312 ++++++++++++++++++
 drivers/phy/rockchip/phy-rockchip-pcie.c      | 271 +++++++++++++++
 12 files changed, 764 insertions(+), 419 deletions(-)
 delete mode 100644 drivers/pci/pcie_rockchip.h
 delete mode 100644 drivers/pci/pcie_rockchip_phy.c
 create mode 100644 drivers/phy/rockchip/Kconfig
 create mode 100644 drivers/phy/rockchip/Makefile
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb2.c
 create mode 100644 drivers/phy/rockchip/phy-rockchip-pcie.c

-- 
2.17.1
