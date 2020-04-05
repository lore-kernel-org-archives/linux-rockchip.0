From: Oleksandr Suvorov <oleksandr.suvorov-2KBjVHiyJgBBDgjK7y7TUQ@public.gmane.org>
Subject: [RFC PATCH v2 3/6] arm64: dts: pwm: replace flag 1 with PWM_POLARITY_INVERTED
Date: Sun,  5 Apr 2020 22:22:43 +0300
Message-ID: <20200405192246.3741784-4-oleksandr.suvorov@toradex.com>
References: <20200405192246.3741784-1-oleksandr.suvorov@toradex.com>
Mime-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200405192246.3741784-1-oleksandr.suvorov-2KBjVHiyJgBBDgjK7y7TUQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Paul Barker <pbarker-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Marcel Ziswiler <marcel.ziswiler-2KBjVHiyJgBBDgjK7y7TUQ@public.gmane.org>, Igor Opaniuk <igor.opaniuk-2KBjVHiyJgBBDgjK7y7TUQ@public.gmane.org>, Philippe Schenker <philippe.schenker-2KBjVHiyJgBBDgjK7y7TUQ@public.gmane.org>, =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Oleksandr Suvorov <oleksandr.suvorov-2KBjVHiyJgBBDgjK7y7TUQ@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Alexis Ballier <aballier-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius-4ZmsDwijFH7sq35pWSNszA@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hugh Cole-Baker <sigmaris-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Flag '1' in the 3rd cell of the "pwms" property means the inverted
polarity.

This patch converts '1' flag into macro PWM_POLARITY_INVERTED.

Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov-2KBjVHiyJgBBDgjK7y7TUQ@public.gmane.org>
---

Changes in v2: None

 arch/arm64/boot/dts/rockchip/rk3308-evb.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi    | 2 +-
 12 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
index 9b4f855ea5d4..8a198676cef3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
@@ -155,7 +155,7 @@ vcc5v0_host: vcc5v0-host {
 
 	vdd_core: vdd-core {
 		compatible = "pwm-regulator";
-		pwms = <&pwm0 0 5000 1>;
+		pwms = <&pwm0 0 5000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_core";
 		regulator-min-microvolt = <827000>;
 		regulator-max-microvolt = <1340000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index aa256350b18f..6ef851e7e16a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -96,7 +96,7 @@ vcc_sd: vcc-sd {
 
 	vdd_core: vdd-core {
 		compatible = "pwm-regulator";
-		pwms = <&pwm0 0 5000 1>;
+		pwms = <&pwm0 0 5000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_core";
 		regulator-min-microvolt = <827000>;
 		regulator-max-microvolt = <1340000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index d63faf38cc81..5617a441e141 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -202,7 +202,7 @@ vcc_sys: vcc-sys {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index aee484a05181..5c590f99d80e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -115,7 +115,7 @@ vcc5v0_usb: vcc5v0-usb {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		pwm-supply = <&vcc_sys>;
 		regulator-name = "vdd_log";
 		regulator-min-microvolt = <800000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index e87a04477440..47890757e866 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -73,7 +73,7 @@ vcc5v0_host: vcc5v0-host-regulator {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 73be38a53796..d6c069c6e195 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -95,7 +95,7 @@ vcc5v0_sys: vcc5v0-sys {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index f9f7246d4d2f..bf9976346c0b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -158,7 +158,7 @@ vcc_sys: vcc-sys {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 5ea281b55fe2..5884968cd5b4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -228,7 +228,7 @@ regulator-state-mem {
 	/* RK3399 logic supply */
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 9f225e9c3d54..d9dad0f45564 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -191,7 +191,7 @@ vcc_sys: vcc-sys {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 3923ec01ef66..5e4f535ef607 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -122,7 +122,7 @@ regulator-state-mem {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 9bca25801260..5eedeae21189 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -163,7 +163,7 @@ vcc5v0_usb: vcc5v0-usb {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 1bc1579674e5..9391110b788f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -127,7 +127,7 @@ vcc_sys: vcc-sys {
 
 	vdd_log: vdd-log {
 		compatible = "pwm-regulator";
-		pwms = <&pwm2 0 25000 1>;
+		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
-- 
2.24.1
