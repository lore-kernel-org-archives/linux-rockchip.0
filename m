From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/7] arm: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
Date: Fri, 24 Jul 2020 16:21:13 +0530
Message-ID: <20200724105119.13123-2-jagan@amarulasolutions.com>
References: <20200724105119.13123-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200724105119.13123-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Engicam EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board.

Genaral features:
- LCD 7" C.Touch
- microSD slot
- Ethernet 1Gb
- Wifi/BT
- 2x LVDS Full HD interfaces
- 3x USB 2.0
- 1x USB 3.0
- HDMI Out
- Mini PCIe
- MIPI CSI
- 2x CAN
- Audio Out

SOM's like PX30.Core needs to mount on top of this Evaluation board
for creating complete PX30.Core EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Note:
- Linux ML link:
  https://lkml.org/lkml/2020/7/23/518

 arch/arm/dts/px30-engicam-common.dtsi   | 31 +++++++++++++++++++++++++
 arch/arm/dts/px30-engicam-edimm2.2.dtsi |  7 ++++++
 2 files changed, 38 insertions(+)
 create mode 100644 arch/arm/dts/px30-engicam-common.dtsi
 create mode 100644 arch/arm/dts/px30-engicam-edimm2.2.dtsi

diff --git a/arch/arm/dts/px30-engicam-common.dtsi b/arch/arm/dts/px30-engicam-common.dtsi
new file mode 100644
index 0000000000..fa0645231b
--- /dev/null
+++ b/arch/arm/dts/px30-engicam-common.dtsi
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/ {
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc5v0_sys";	/* +5V */
+	};
+};
+
+&gmac {
+	phy-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	status = "okay";
+};
+
+&sdmmc {
+	vmmc-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m1_xfer>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/px30-engicam-edimm2.2.dtsi b/arch/arm/dts/px30-engicam-edimm2.2.dtsi
new file mode 100644
index 0000000000..cb00988953
--- /dev/null
+++ b/arch/arm/dts/px30-engicam-edimm2.2.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "px30-engicam-common.dtsi"
-- 
2.25.1
