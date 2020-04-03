From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v3 4/4] ARM: dts: rockchip: sort includes of dtsi files
Date: Fri,  3 Apr 2020 20:01:59 +0200
Message-ID: <20200403180159.13387-4-jbx6244@gmail.com>
References: <20200403180159.13387-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200403180159.13387-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The includes of Rockchip dtsi files have been subject of
several patch styles, so give them a little alphabetical sort.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi        | 2 +-
 arch/arm/boot/dts/rk3066a.dtsi       | 2 +-
 arch/arm/boot/dts/rk3188.dtsi        | 2 +-
 arch/arm/boot/dts/rk322x.dtsi        | 2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi | 4 ++--
 arch/arm/boot/dts/rk3288.dtsi        | 4 ++--
 arch/arm/boot/dts/rv1108.dtsi        | 3 ++-
 7 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 8be47354d..55f3838b2 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -1,9 +1,9 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3036-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3036-cru.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 
 / {
diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 1cf7e1b38..9924def56 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -4,9 +4,9 @@
  * Author: Heiko Stuebner <heiko@sntech.de>
  */
 
+#include <dt-bindings/clock/rk3066a-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3066a-cru.h>
 #include <dt-bindings/power/rk3066-power.h>
 #include "rk3xxx.dtsi"
 
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 2298a8d84..e22bfc612 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -4,9 +4,9 @@
  * Author: Heiko Stuebner <heiko@sntech.de>
  */
 
+#include <dt-bindings/clock/rk3188-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3188-cru.h>
 #include <dt-bindings/power/rk3188-power.h>
 #include "rk3xxx.dtsi"
 
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 86c4d62fc..d5a1aad17 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -1,9 +1,9 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3228-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3228-cru.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 77ae303b0..60259d9eb 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -3,9 +3,9 @@
  * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
  */
 
-#include "rk3288.dtsi"
-#include <dt-bindings/input/input.h>
 #include <dt-bindings/clock/rockchip,rk808.h>
+#include <dt-bindings/input/input.h>
+#include "rk3288.dtsi"
 
 / {
 	chosen {
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index ace67aa7d..a56b4a58f 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1,12 +1,12 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3288-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3288-cru.h>
 #include <dt-bindings/power/rk3288-power.h>
-#include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	#address-cells = <2>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 7d2ef39db..06c46bed9 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -1,10 +1,11 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rv1108-cru.h>
 #include <dt-bindings/gpio/gpio.h>
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
