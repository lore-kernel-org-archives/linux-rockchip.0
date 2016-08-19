From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 2/3] arm64: dts: rockchip: add the PCIe controller support for
 RK3399
Date: Fri, 19 Aug 2016 11:24:28 +0800
Message-ID: <1471577069-14483-2-git-send-email-shawn.lin@rock-chips.com>
References: <1471577069-14483-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1471577069-14483-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Wenrui Li <wenrui.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patch introduces PCIe support found on RK3399 platform,
and specify phys phandle for it.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 51 ++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 5694e27..e502b5b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -242,6 +242,44 @@
 		status = "disabled";
 	};
 
+	pcie0: pcie@f8000000 {
+		compatible = "rockchip,rk3399-pcie";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		bus-range = <0x0 0x1>;
+		clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
+			 <&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
+		clock-names = "aclk", "aclk-perf",
+			      "hclk", "pm";
+		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH 0>;
+		#interrupt-cells = <1>;
+		interrupt-names = "sys", "legacy", "client";
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie0_intc 0>,
+				<0 0 0 2 &pcie0_intc 1>,
+				<0 0 0 3 &pcie0_intc 2>,
+				<0 0 0 4 &pcie0_intc 3>;
+		msi-map = <0x0 &its 0x0 0x1000>;
+		phys = <&pcie_phy>;
+		phy-names = "pcie-phy";
+		ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x600000
+			  0x81000000 0x0 0xfa600000 0x0 0xfa600000 0x0 0x100000>;
+		reg = <0x0 0xf8000000 0x0 0x2000000>,
+		      <0x0 0xfd000000 0x0 0x1000000>;
+		reg-names = "axi-base", "apb-base";
+		resets = <&cru SRST_PCIE_CORE>, <&cru SRST_PCIE_MGMT>,
+			 <&cru SRST_PCIE_MGMT_STICKY>, <&cru SRST_PCIE_PIPE>;
+		reset-names = "core", "mgmt", "mgmt-sticky", "pipe";
+		status = "disabled";
+		pcie0_intc: interrupt-controller {
+			interrupt-controller;
+			#address-cells = <0>;
+			#interrupt-cells = <1>;
+		};
+	};
+
 	usb_host0_ehci: usb@fe380000 {
 		compatible = "generic-ehci";
 		reg = <0x0 0xfe380000 0x0 0x20000>;
@@ -1552,5 +1590,18 @@
 					<1 14 RK_FUNC_1 &pcfg_pull_none>;
 			};
 		};
+
+		pcie {
+			pcie_clkreqn: pci-clkreqn {
+				rockchip,pins =
+					<2 26 RK_FUNC_2 &pcfg_pull_none>;
+			};
+
+			pcie_clkreqnb: pci-clkreqnb {
+				rockchip,pins =
+					<4 24 RK_FUNC_1 &pcfg_pull_none>;
+			};
+		};
+
 	};
 };
-- 
2.3.7
