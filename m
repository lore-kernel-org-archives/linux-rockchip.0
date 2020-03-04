From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 2/3] ARM: dts: rockchip: add missing @0 to memory nodenames
Date: Wed,  4 Mar 2020 08:40:50 +0100
Message-ID: <20200304074051.8742-2-jbx6244@gmail.com>
References: <20200304074051.8742-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200304074051.8742-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm/boot/dts/rk3288-tinker.dt.yaml: /: memory:
False schema does not allow
{'device_type': ['memory'], 'reg': [[0, 0, 0, 2147483648]]}

The memory nodes all have a reg property that requires '@' in
the nodename. Fix this error by adding the missing '@0' to
the involved memory nodenames.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/root-node.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288-phycore-som.dtsi | 2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi      | 2 +-
 arch/arm/boot/dts/rk3288-veyron.dtsi      | 2 +-
 arch/arm/boot/dts/rk3288-vyasa.dts        | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-phycore-som.dtsi b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
index 77a47b9b7..9e76166c3 100644
--- a/arch/arm/boot/dts/rk3288-phycore-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
@@ -16,7 +16,7 @@
 	 * Set the minimum memory size here and
 	 * let the bootloader set the real size.
 	 */
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x8000000>;
 	};
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 312582c1b..77ae303b0 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -12,7 +12,7 @@
 		stdout-path = "serial2:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x0 0x0 0x0 0x80000000>;
 		device_type = "memory";
 	};
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 54a6838d7..c089ce008 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -18,7 +18,7 @@
 	 * The default coreboot on veyron devices ignores memory@0 nodes
 	 * and would instead create another memory node.
 	 */
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index ba06e9f97..889b95e95 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -14,7 +14,7 @@
 		stdout-path = &uart2;
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x0 0x0 0x0 0x80000000>;
 		device_type = "memory";
 	};
-- 
2.11.0
