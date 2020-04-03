From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: remove include for irq.h
Date: Fri,  3 Apr 2020 17:43:29 +0200
Message-ID: <20200403154329.11256-3-jbx6244@gmail.com>
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
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 -
 5 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 6f7171290..4820edc7f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -6,7 +6,6 @@
 #include <dt-bindings/clock/px30-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/px30-power.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ac43bc3f7..a9b98555d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -7,7 +7,6 @@
 #include <dt-bindings/clock/rk3308-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 #include <dt-bindings/thermal/thermal.h>
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 470783a48..175060695 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -6,7 +6,6 @@
 #include <dt-bindings/clock/rk3328-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/rk3328-power.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 1ebb0eef4..f22475016 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -5,7 +5,6 @@
 
 #include <dt-bindings/clock/rk3368-cru.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 0d895cff5..123b7402a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -6,7 +6,6 @@
 #include <dt-bindings/clock/rk3399-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/rk3399-power.h>
 #include <dt-bindings/thermal/thermal.h>
-- 
2.11.0
