From: Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: Fix min voltage for rk3399-firefly vdd_log
Date: Mon, 11 Nov 2019 08:51:56 +0800
Message-ID: <20191111005158.25070-1-kever.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The min/max value of vdd_log is decide by pwm IO voltage and its
resistors, the rk3399-firefly board's pwm regulator circuit is designed
for IO voltage at 1.8V, while the board actually use 3.0V for IO, which
at last lead to the min-microvolt to '430mV' instead of '800mV'.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index c706db0ee9ec..92de83dd4dbc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -206,7 +206,7 @@
 		regulator-name = "vdd_log";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <800000>;
+		regulator-min-microvolt = <430000>;
 		regulator-max-microvolt = <1400000>;
 		vin-supply = <&vcc_sys>;
 	};
-- 
2.17.1
