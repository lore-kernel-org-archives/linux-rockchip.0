From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: add isp and sensors for scarlet
Date: Tue, 14 Apr 2020 11:06:34 -0300
Message-ID: <20200414140634.915086-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Mark Rutland <mark.rutland@arm.com>, Eddie Cai <eddie.cai.linux@gmail.com>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>, jbx6244@gmail.com, kernel@collabora.com, Shunqian Zheng <zhengsq@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Eddie Cai <eddie.cai.linux@gmail.com>

Enable ISP and camera sensor ov2685 and ov5695 for scarlet.

Verified with:
    make ARCH=arm64 dtbs_check

Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
Signed-off-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Helen Koike <helen.koike@collabora.com>
---
This patch is based on:
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/527854

It should be merged after moving the bidings out of staging:
https://patchwork.kernel.org/project/linux-media/list/?series=266089
---
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 4373ed732af76..ae08205aa8e24 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -296,6 +296,52 @@ camera: &i2c7 {
 
 	/* 24M mclk is shared between world and user cameras */
 	pinctrl-0 = <&i2c7_xfer &test_clkout1>;
+
+	/* Rear-facing camera */
+	wcam: camera@36 {
+		compatible = "ovti,ov5695";
+		reg = <0x36>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wcam_rst>;
+
+		clocks = <&cru SCLK_TESTCLKOUT1>;
+		clock-names = "xvclk";
+
+		avdd-supply = <&pp2800_cam>;
+		dvdd-supply = <&pp1250_cam>;
+		dovdd-supply = <&pp1800_s0>;
+		reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
+
+		port {
+			wcam_out: endpoint {
+				remote-endpoint = <&mipi_in_wcam>;
+				data-lanes = <1 2>;
+			};
+		};
+	};
+
+	/* Front-facing camera */
+	ucam: camera@3c {
+		compatible = "ovti,ov2685";
+		reg = <0x3c>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ucam_rst>;
+
+		clocks = <&cru SCLK_TESTCLKOUT1>;
+		clock-names = "xvclk";
+
+		avdd-supply = <&pp2800_cam>;
+		dovdd-supply = <&pp1800_s0>;
+		dvdd-supply = <&pp1800_s0>;
+		reset-gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
+
+		port {
+			ucam_out: endpoint {
+				remote-endpoint = <&mipi_in_ucam>;
+				data-lanes = <1>;
+			};
+		};
+	};
 };
 
 &cdn_dp {
@@ -353,10 +399,38 @@ &io_domains {
 	gpio1830-supply = <&pp1800_s0>;		/* APIO4_VDD;  4c 4d */
 };
 
+&isp0 {
+	status = "okay";
+
+	ports {
+		port@0 {
+			mipi_in_wcam: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&wcam_out>;
+				data-lanes = <1 2>;
+			};
+
+			mipi_in_ucam: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&ucam_out>;
+				data-lanes = <1>;
+			};
+		};
+	};
+};
+
+&isp0_mmu {
+	status = "okay";
+};
+
 &max98357a {
 	sdmode-gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
 };
 
+&mipi_dphy_rx0 {
+	status = "okay";
+};
+
 &mipi_dsi {
 	status = "okay";
 	clock-master;
-- 
2.26.0
