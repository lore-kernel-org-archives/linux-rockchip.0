From: Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
Date: Mon, 11 Nov 2019 08:51:58 +0800
Message-ID: <20191111005158.25070-3-kever.yang@rock-chips.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191111005158.25070-1-kever.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, Peter Robinson <pbrobinson@gmail.com>, Akash Gajjar <akash@openedev.com>, Alexis Ballier <aballier@gentoo.org>, =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>, Andy Yan <andyshrk@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>, Hugh Cole-Baker <sigmaris@gmail.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Mark Rutland <mark.rutland@arm.com>, Nick Xie <nick@khadas.com>, Oskari Lemmela <oskari@lemmela.net>, Pragnesh Patel <Pragnesh_Patel@mentor.com>, Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Soeren Moch <smoch@web.de>, Vicente Bergas <vicencb@gmail.com>, Vivek Unune <npcomplete13@gm>
List-Id: linux-rockchip.vger.kernel.org

Since there is no devfreq used for vdd_log, so the vdd_log(pwm regulator)
will be 'enable' with the dts node at a default PWM state with high or low
output. Both too high or too low for vdd_log is not good for the board,
add init voltage for driver to make the regulator get into a know output.

Note that this will be used by U-Boot for init voltage output, and this
is very important for it may get system hang somewhere during system
boot up with regulator enable and without this init value.

CC: Elaine Zhang <zhangqing@rock-chips.com>
CC: Peter Robinson <pbrobinson@gmail.com>
Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3399-evb.dts          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts   | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts       | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi    | 1 +
 9 files changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 77008dca45bc..fa241aeb11b0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -65,6 +65,7 @@
 		regulator-name = "vdd_center";
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		regulator-always-on;
 		regulator-boot-on;
 		status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 92de83dd4dbc..4e45269fcdff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -208,6 +208,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <430000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc_sys>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index c133e8d64b2a..692f3154edc3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -100,6 +100,7 @@
 		regulator-name = "vdd_log";
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		regulator-always-on;
 		regulator-boot-on;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 4944d78a0a1c..c2ac80d99301 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -79,6 +79,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vsys_3v3>;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 73be38a53796..c32abcc4ddc1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -101,6 +101,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 0541dfce924d..9d674c51f025 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -164,6 +164,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc_sys>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
index 19f7732d728c..7d856ce1d156 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -129,6 +129,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc3v3_sys>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index e544deb61d28..8fbccbc8bf47 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -174,6 +174,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1700000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 1bc1579674e5..f8e2cb8c0624 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -133,6 +133,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc_sys>;
 	};
 };
-- 
2.17.1
