From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH] arm64: dts: rockchip: Add vcc_sys enable pin on rk3399-roc-pc
Date: Thu, 31 Oct 2019 09:51:56 +0100
Message-ID: <c72db0ad-c261-af4f-efe6-22bbcf4a0b7b@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

rk3399-roc-pc has vcc_sys 5V supply for USB and other peripherals.
Add the GPIO pin to enable the regulator.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
index 4150e6900788..c0c2d896f4da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -140,6 +140,10 @@
 
 	vcc_sys: vcc-sys {
 		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc_sys_en>;
 		regulator-name = "vcc_sys";
 		regulator-always-on;
 		regulator-boot-on;
@@ -600,6 +604,10 @@
 			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		vcc_sys_en: vcc-sys-en {
+			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		hub_rst: hub-rst {
 			rockchip,pins = <2 RK_PA4 RK_FUNC_GPIO &pcfg_output_high>;
 		};
-- 
2.20.1
