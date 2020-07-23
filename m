From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 2/4] arm64: dts: rockchip: Mark rock-pi-4 as rock-pi-4a dts
Date: Thu, 23 Jul 2020 14:32:08 +0530
Message-ID: <20200723090210.41201-2-jagan@amarulasolutions.com>
References: <20200723090210.41201-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200723090210.41201-1-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

ROCKPi 4 has 3 variants of hardware platforms called
RockPI 4A, 4B, and 4C.

- ROCKPi 4A has no Wif/BT.
- ROCKPi 4B has AP6256 Wifi/BT, PoE.
- ROCKPi 4C has AP6256 Wifi/BT, PoE, miniDP, USB Host enabled
  GPIO pin change compared to 4B, 4C

So move common nodes, properties into dtsi file and include
on respective variant dts files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none
Changes for v2:
- update commit message
- add radxa,rockpi4a

 arch/arm64/boot/dts/rockchip/Makefile               |  2 +-
 .../{rk3399-rock-pi-4.dts => rk3399-rock-pi-4.dtsi} |  3 ---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts  | 13 +++++++++++++
 3 files changed, 14 insertions(+), 4 deletions(-)
 rename arch/arm64/boot/dts/rockchip/{rk3399-rock-pi-4.dts => rk3399-rock-pi-4.dtsi} (99%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index b87b1f773083..42f9e1861461 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -33,7 +33,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
similarity index 99%
rename from arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
rename to arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 60f98a3e19d8..e163f438f836 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -11,9 +11,6 @@
 #include "rk3399-opp.dtsi"
 
 / {
-	model = "Radxa ROCK Pi 4";
-	compatible = "radxa,rockpi4", "rockchip,rk3399";
-
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
new file mode 100644
index 000000000000..89f2af5e111d
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Akash Gajjar <Akash_Gajjar@mentor.com>
+ * Copyright (c) 2019 Pragnesh Patel <Pragnesh_Patel@mentor.com>
+ */
+
+/dts-v1/;
+#include "rk3399-rock-pi-4.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi 4A";
+	compatible = "radxa,rockpi4a", "radxa,rockpi4", "rockchip,rk3399";
+};
-- 
2.25.1
