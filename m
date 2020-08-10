From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: [PATCH v2] arm64: dts: rockchip: add SPDIF node for rk3399-rockpro64
Date: Mon, 10 Aug 2020 18:16:19 +0900
Message-ID: <20200810091619.3170534-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>
List-Id: linux-rockchip.vger.kernel.org

This patch adds 'disabled' SPDIF sound node and related settings
for rk3399-rockpro64.

There are 2 reasons:
  - All RK3399 dma-bus channels have been already used by I2S0/1/2
  - RockPro64 does not have SPDIF optical nor coaxial connector,
    just have 3pins

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

---

Changes in v2:
  - Remove redundant status property
---
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 6e553ff47534..58097245994a 100644
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
@@ -698,6 +715,16 @@ &sdhci {
 	status = "okay";
 };
 
+&spdif {
+	pinctrl-0 = <&spdif_bus_1>;
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
2.28.0
