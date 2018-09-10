From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v3 2/4] arm64: dts: rockchip: add rk3328 display nodes
Date: Mon, 10 Sep 2018 11:28:41 +0200
Message-ID: <20180910092843.1700-3-heiko@sntech.de>
References: <20180910092843.1700-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180910092843.1700-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, robin.murphy-5wv7dgnIgG8@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, zhengyang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add the chain of display nodes from the core display-subsystem
through the one vop to the dw-hdmi output.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Tested-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>

changes in v3:
- drop reg from hdmi-in-port
changes in v2:
- remove trailing 0 from vop irq
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 53 ++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index beebab74ce17..6b480d723fca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -151,6 +151,11 @@
 		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
 	psci {
 		compatible = "arm,psci-1.0", "arm,psci-0.2";
 		method = "smc";
@@ -605,6 +610,28 @@
 		status = "disabled";
 	};
 
+	vop: vop@ff370000 {
+		compatible = "rockchip,rk3328-vop";
+		reg = <0x0 0xff370000 0x0 0x3efc>;
+		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_VOP>, <&cru DCLK_LCDC>, <&cru HCLK_VOP>;
+		clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
+		resets = <&cru SRST_VOP_A>, <&cru SRST_VOP_H>, <&cru SRST_VOP_D>;
+		reset-names = "axi", "ahb", "dclk";
+		iommus = <&vop_mmu>;
+		status = "disabled";
+
+		vop_out: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vop_out_hdmi: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&hdmi_in_vop>;
+			};
+		};
+	};
+
 	vop_mmu: iommu@ff373f00 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff373f00 0x0 0x100>;
@@ -616,6 +643,32 @@
 		status = "disabled";
 	};
 
+	hdmi: hdmi@ff3c0000 {
+		compatible = "rockchip,rk3328-dw-hdmi";
+		reg = <0x0 0xff3c0000 0x0 0x20000>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_HDMI>,
+			 <&cru SCLK_HDMI_SFC>;
+		clock-names = "iahb",
+			      "isfr";
+		phys = <&hdmiphy>;
+		phy-names = "hdmi";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmi_cec &hdmii2c_xfer &hdmi_hpd>;
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			hdmi_in: port {
+				hdmi_in_vop: endpoint {
+					remote-endpoint = <&vop_out_hdmi>;
+				};
+			};
+		};
+	};
+
 	hdmiphy: phy@ff430000 {
 		compatible = "rockchip,rk3328-hdmi-phy";
 		reg = <0x0 0xff430000 0x0 0x10000>;
-- 
2.17.0
