From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: [PATCH] arm64: dts: rockchip: split rk3399-rockpro64 for v2 and v2.1
 boards
Date: Wed, 27 Nov 2019 01:55:29 +0900
Message-ID: <20191126165529.30703-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, Hugh Cole-Baker <sigmaris@gmail.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
v2.1 boards.

Both v2 and v2.1 boards can use almost same settings but we find a
difference in I2C address of audio CODEC ES8136.

Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  3 +-
 .../dts/rockchip/rk3399-rockpro64-v2.1.dts    | 30 +++++++++++++++++++
 .../boot/dts/rockchip/rk3399-rockpro64-v2.dts | 30 +++++++++++++++++++
 ...99-rockpro64.dts => rk3399-rockpro64.dtsi} | 18 -----------
 4 files changed, 62 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
 rename arch/arm64/boot/dts/rockchip/{rk3399-rockpro64.dts => rk3399-rockpro64.dtsi} (97%)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 48fb631d5451..3debaeb517fd 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
new file mode 100644
index 000000000000..9450207bedad
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
+ * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
+ */
+
+/dts-v1/;
+#include "rk3399-rockpro64.dtsi"
+
+/ {
+	model = "Pine64 RockPro64 v2.1";
+	compatible = "pine64,rockpro64", "rockchip,rk3399";
+};
+
+&i2c1 {
+	es8316: codec@11 {
+		compatible = "everest,es8316";
+		reg = <0x11>;
+		clocks = <&cru SCLK_I2S_8CH_OUT>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;
+
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s1_p0_0>;
+			};
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
new file mode 100644
index 000000000000..7bd37eaa1d57
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
+ * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
+ */
+
+/dts-v1/;
+#include "rk3399-rockpro64.dtsi"
+
+/ {
+	model = "Pine64 RockPro64 v2";
+	compatible = "pine64,rockpro64", "rockchip,rk3399";
+};
+
+&i2c1 {
+	es8316: codec@10 {
+		compatible = "everest,es8316";
+		reg = <0x10>;
+		clocks = <&cru SCLK_I2S_8CH_OUT>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;
+
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s1_p0_0>;
+			};
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
similarity index 97%
rename from arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
rename to arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 7f4b2eba31d4..183eda4ffb9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -4,16 +4,12 @@
  * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
  */
 
-/dts-v1/;
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pwm/pwm.h>
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
 
 / {
-	model = "Pine64 RockPro64";
-	compatible = "pine64,rockpro64", "rockchip,rk3399";
-
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
@@ -476,20 +472,6 @@ &i2c1 {
 	i2c-scl-rising-time-ns = <300>;
 	i2c-scl-falling-time-ns = <15>;
 	status = "okay";
-
-	es8316: codec@11 {
-		compatible = "everest,es8316";
-		reg = <0x11>;
-		clocks = <&cru SCLK_I2S_8CH_OUT>;
-		clock-names = "mclk";
-		#sound-dai-cells = <0>;
-
-		port {
-			es8316_p0_0: endpoint {
-				remote-endpoint = <&i2s1_p0_0>;
-			};
-		};
-	};
 };
 
 &i2c3 {
-- 
2.24.0
