From: "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: give some life to the rk3328-roc-cc leds
Date: Sat,  2 Mar 2019 00:58:13 +0200
Message-ID: <20190301225813.19834-1-papadakospan@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Assign the LED's to heartbeat and sdcard io, as in other RK boards.

https://github.com/armbian/build/commit/f1affad5c7be62d6e93832af3556c7609edd0858

Signed-off-by: Leonidas P. Papadakos <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 33c44e857..a881d4c8d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -81,6 +81,33 @@
 		regulator-always-on;
 		regulator-boot-on;
 	};
+
+	leds {
+		compatible = "gpio-leds";
+		power {
+			label = "firefly:blue:power";
+			linux,default-trigger = "heartbeat";
+			gpios = <&rk805 1 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+			mode = <0x23>;
+		};
+
+		user {
+			label = "firefly:yellow:user";
+			linux,default-trigger = "mmc1";
+			gpios = <&rk805 0 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+			mode = <0x05>;
+		};
+
+		ir {
+			status = "disabled";
+			/* gpios = <&gpio2 GPIO_C2 GPIO_ACTIVE_HIGH>; */
+			linux,default-trigger = "ir";
+			default-state = "off";
+			mode = <0x00>;
+		};
+	};
 };
 
 &cpu0 {
-- 
2.21.0
