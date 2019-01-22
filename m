From: Dmitry Voytik <voytikd@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: enable usb-host regulators during boot
Date: Tue, 22 Jan 2019 23:38:48 +0100
Message-ID: <20190122223848.6019-1-voytikd@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Dmitry Voytik <voytikd@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

After commit ef05bcb60, boot from USB drives is broken.
Fix this problem by enabling usb-host regulators during boot time.

Signed-off-by: Dmitry Voytik <voytikd@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index bd937d68ca3b..040b36ef0dd2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -40,6 +40,7 @@
 		pinctrl-0 = <&usb30_host_drv>;
 		regulator-name = "vcc_host_5v";
 		regulator-always-on;
+		regulator-boot-on;
 		vin-supply = <&vcc_sys>;
 	};
 
@@ -51,6 +52,7 @@
 		pinctrl-0 = <&usb20_host_drv>;
 		regulator-name = "vcc_host1_5v";
 		regulator-always-on;
+		regulator-boot-on;
 		vin-supply = <&vcc_sys>;
 	};
 
-- 
2.20.1
