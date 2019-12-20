From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3308-roc-cc: sort nodes in alphabetical order
Date: Fri, 20 Dec 2019 13:10:07 +0100
Message-ID: <20191220121007.29337-2-jbx6244@gmail.com>
References: <20191220121007.29337-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191220121007.29337-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Sort nodes in alphabetical order.
Place &pwm5 below &pwm0.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 23527daa7..14ba4c152 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -141,12 +141,6 @@
 	};
 };
 
-&pwm5 {
-	status = "okay";
-	pinctrl-names = "active";
-	pinctrl-0 = <&pwm5_pin_pull_down>;
-};
-
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rtc_32k>;
@@ -165,8 +159,14 @@
 };
 
 &pwm0 {
-	status = "okay";
 	pinctrl-0 = <&pwm0_pin_pull_down>;
+	status = "okay";
+};
+
+&pwm5 {
+	pinctrl-names = "active";
+	pinctrl-0 = <&pwm5_pin_pull_down>;
+	status = "okay";
 };
 
 &sdmmc {
-- 
2.11.0
