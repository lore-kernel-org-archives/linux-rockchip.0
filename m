From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH] ARM: dts: rockchip: add focaltech touchscreen to
 rk3188-bqedison2qc
Date: Fri, 21 Dec 2018 17:51:29 +0100
Message-ID: <20181221165129.28628-1-heiko@sntech.de>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko.stuebner-K3U4GQvHnyU@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner-K3U4GQvHnyU@public.gmane.org>

The Edison tablet uses a Focaltech touchscreen, with one speciality
that the touchscreen resolution doesn't match the display resolution
(1024x768 vs. 1280x600) which userspace will have to compensate for.

Signed-off-by: Heiko Stuebner <heiko.stuebner-K3U4GQvHnyU@public.gmane.org>
---
 arch/arm/boot/dts/rk3188-bqedison2qc.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
index a7477a09fbe8..3685568f999f 100644
--- a/arch/arm/boot/dts/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rk3188-bqedison2qc.dts
@@ -408,6 +408,21 @@
 &i2c2 {
 	clock-frequency = <400000>;
 	status = "okay";
+
+	ft5606: touchscreen@3e {
+		compatible = "edt,edt-ft5506";
+		reg = <0x3e>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PB7 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&tp_int &tp_rst>;
+		reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
+		touchscreen-inverted-y;
+		/* hw ts resolution does not match display */
+		touchscreen-size-y = <1024>;
+		touchscreen-size-x = <768>;
+		touchscreen-swapped-x-y;
+	};
 };
 
 &i2c3 {
-- 
2.19.2
