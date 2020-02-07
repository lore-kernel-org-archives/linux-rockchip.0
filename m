From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH] arm64: dts: rk3399: Remove extcon unit address and extcon-cells from Gru
Date: Fri,  7 Feb 2020 15:13:24 +0100
Message-ID: <20200207141324.3188898-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: Collabora Kernel ML <kernel@collabora.com>, dafna.hirschfeld@collabora.com, heiko@sntech.de, Matthias Kaehlcke <mka@chromium.org>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Brian Norris <briannorris@chromium.org>, Marcel Holtmann <marcel@holtmann.org>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The cros-ec-extcon has no reg property so remove the unit address from
the DT node to make DT compiler happy.

While here, remove the inexistent extcon-cells property from the extcon
nodes.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
Thanks to the Dafna's work and Rob's review I got noticed that the old
txt binding was wrong, and also, that the current cros-ec-extcon node in
Gru is wrong, so sending this patch now that is fresh in our minds and
update the node accordingly. There is an extcon-cells property that seems
to not exist and is not documented, so remove it.

For reference, see https://lkml.org/lkml/2020/2/5/176.

 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 4 +---
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi            | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 7cd6d470c1cb..1384dabbdf40 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -291,11 +291,9 @@ cros_ec_pwm: ec-pwm {
 		#pwm-cells = <1>;
 	};
 
-	usbc_extcon1: extcon@1 {
+	usbc_extcon1: extcon1 {
 		compatible = "google,extcon-usbc-cros-ec";
 		google,usb-port-id = <1>;
-
-		#extcon-cells = <0>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index dd5624975c9b..2f3997740068 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -570,11 +570,9 @@ i2c_tunnel: i2c-tunnel {
 			#size-cells = <0>;
 		};
 
-		usbc_extcon0: extcon@0 {
+		usbc_extcon0: extcon0 {
 			compatible = "google,extcon-usbc-cros-ec";
 			google,usb-port-id = <0>;
-
-			#extcon-cells = <0>;
 		};
 	};
 };
-- 
2.24.1
