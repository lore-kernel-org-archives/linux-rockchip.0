From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: add rk3399 DSI0 reset
Date: Wed, 29 Nov 2017 17:07:27 -0800
Message-ID: <20171130010723.GA133459@google.com>
References: <20171129233541.51337-1-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20171129233541.51337-1-briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Nickey Yang <nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Nickey Yang <nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

This patch adds the information for the secondary MIPI DSI controller,
e.g., interrupts, grf, clocks, ports and so on. Mirrors the existing
definition for dsi0.

Signed-off-by: Nickey Yang <nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 45 ++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 8940a3dc3670..e7e882d06c68 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1526,6 +1526,11 @@
 				reg = <2>;
 				remote-endpoint = <&hdmi_in_vopl>;
 			};
+
+			vopl_out_mipi1: endpoint@3 {
+				reg = <3>;
+				remote-endpoint = <&mipi1_in_vopl>;
+			};
 		};
 	};
 
@@ -1573,6 +1578,11 @@
 				reg = <2>;
 				remote-endpoint = <&hdmi_in_vopb>;
 			};
+
+			vopb_out_mipi1: endpoint@3 {
+				reg = <3>;
+				remote-endpoint = <&mipi1_in_vopb>;
+			};
 		};
 	};
 
@@ -1674,6 +1684,41 @@
 		};
 	};
 
+	mipi_dsi1: mipi@ff968000 {
+		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x0 0xff968000 0x0 0x8000>;
+		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru SCLK_DPHY_PLL>, <&cru PCLK_MIPI_DSI1>,
+			 <&cru SCLK_DPHY_TX1RX1_CFG>, <&cru PCLK_VIO_GRF>;
+		clock-names = "ref", "pclk", "phy_cfg", "grf";
+		power-domains = <&power RK3399_PD_VIO>;
+		resets = <&cru SRST_P_MIPI_DSI1>;
+		reset-names = "apb";
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			mipi1_in: port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				mipi1_in_vopb: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&vopb_out_mipi1>;
+				};
+
+				mipi1_in_vopl: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&vopl_out_mipi1>;
+				};
+			};
+		};
+	};
+
 	edp: edp@ff970000 {
 		compatible = "rockchip,rk3399-edp";
 		reg = <0x0 0xff970000 0x0 0x8000>;
-- 
2.15.0.531.g2ccb3012c9-goog
