From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 2/3] ARM: dts: rockchip: remove include for irq.h
Date: Fri,  3 Apr 2020 17:43:28 +0200
Message-ID: <20200403154329.11256-2-jbx6244@gmail.com>
References: <20200403154329.11256-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200403154329.11256-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The 'irq.h' file is already included through 'arm-gic.h',
so remove them from all Rockchip dtsi files.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 3 +--
 arch/arm/boot/dts/rk322x.dtsi | 3 +--
 arch/arm/boot/dts/rk3288.dtsi | 5 ++---
 arch/arm/boot/dts/rk3xxx.dtsi | 1 -
 arch/arm/boot/dts/rv1108.dtsi | 4 ++--
 5 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 781ac7583..55f3838b2 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -1,10 +1,9 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3036-cru.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3036-cru.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 
 / {
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index c14891fe8..d5a1aad17 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -1,10 +1,9 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3228-cru.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3228-cru.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index f102fec69..a56b4a58f 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1,13 +1,12 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3288-cru.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3288-cru.h>
 #include <dt-bindings/power/rk3288-power.h>
-#include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	#address-cells = <2>;
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index f9fcb7e96..c79d98edd 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -4,7 +4,6 @@
  * Author: Heiko Stuebner <heiko@sntech.de>
  */
 
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index b453f8d0f..06c46bed9 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rv1108-cru.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/clock/rv1108-cru.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/thermal/thermal.h>
+
 / {
 	#address-cells = <1>;
 	#size-cells = <1>;
-- 
2.11.0
