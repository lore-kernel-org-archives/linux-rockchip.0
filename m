From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: [PATCH] arm64: dts: rockchip: add SPDIF node for rk3399-rockpro64
Date: Sun,  2 Aug 2020 02:49:50 +0900
Message-ID: <20200801174950.2309273-1-katsuhiro@katsuster.net>
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
To: Heiko Stuebner <heiko@sntech.de>
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This patch adds 'disabled' SPDIF sound node and related settings
for rk3399-rockpro64.

There are 2 reasons:
  - All RK3399 dma-bus channels have been already used by I2S0/1/2
  - RockPro64 does not have SPDIF optical nor coaxial connector,
    just have 3pins

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 6e553ff47534..e35b30f8a46e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -76,6 +76,23 @@ sound {
 		dais = <&i2s1_p0>;
 	};
 
+	sound-dit {
+		compatible = "audio-graph-card";
+		label = "rockchip,rk3399";
+		dais = <&spdif_p0>;
+	};
+
+	spdif-dit {
+		compatible = "linux,spdif-dit";
+		#sound-dai-cells = <0>;
+
+		port {
+			dit_p0_0: endpoint {
+				remote-endpoint = <&spdif_p0_0>;
+			};
+		};
+	};
+
 	vcc12v_dcin: vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -698,6 +715,17 @@ &sdhci {
 	status = "okay";
 };
 
+&spdif {
+	pinctrl-0 = <&spdif_bus_1>;
+	status = "disabled";
+
+	spdif_p0: port {
+		spdif_p0_0: endpoint {
+			remote-endpoint = <&dit_p0_0>;
+		};
+	};
+};
+
 &spi1 {
 	status = "okay";
 
-- 
2.27.0
