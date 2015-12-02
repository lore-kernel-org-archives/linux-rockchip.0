From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH] ARM: dts: rockchip: add devicetree node to veyron minnie
Date: Wed, 02 Dec 2015 19:03:56 +0100
Message-ID: <2165846.YmcBK0foD2@diego>
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
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Minnie provides an elan,ekth3500 touchscreen over the display,
so add the necessary node to enable it.

Signed-off-by: Heiko Stuebner <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 85f0373..699beb0 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -121,6 +121,18 @@
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <50>;
 	i2c-scl-rising-time-ns = <300>;
+
+	touchscreen@10 {
+		compatible = "elan,ekth3500";
+		reg = <0x10>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <14 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&touch_int &touch_rst>;
+		reset-gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;
+		vcc33-supply = <&vcc33_touch>;
+		vccio-supply = <&vcc33_touch>;
+	};
 };
 
 &rk808 {
-- 
2.6.1
