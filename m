From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: add fan on Sapphire board
Date: Sun, 30 Sep 2018 17:50:33 +0200
Message-ID: <20180930155033.31105-1-vicencb@gmail.com>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The Sapphire board has a 12V fan. So, adding it to the DTS.
There is no power supply directly connected, it needs the baseboard to
work.
If the board is used standalone then a hardware modification is needed.
On the Sapphire board there is an unpopulated resistor to connect it to
VBUS_TYPEC, which is usually 5V (too low) and can range up to 20V
(too high).
I tested it for a week connected to VCC_SYS which is 8.4V and proved to
be more than enough for the required cooling needs. This is the
connection described in the comment.

Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 .../boot/dts/rockchip/rk3399-sapphire.dtsi    | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 5421e23760c3..90d813bdabde 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -66,6 +66,19 @@
 		regulator-max-microvolt = <12000000>;
 	};
 
+	/*
+	 * The fan power supply comes from the baseboard.
+	 * For the standalone Sapphire one option is to connect a wire
+	 * from  R90030 DNP R0805 pin2  to  C90002 10uF C0805 pin1 (vcc_sys).
+	 */
+	fan0: gpio-fan {
+		#cooling-cells = <2>;
+		compatible = "gpio-fan";
+		gpio-fan,speed-map = <0 0 3000 1>;
+		gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
+		status = "okay";
+	};
+
 	keys: gpio-keys {
 		compatible = "gpio-keys";
 		autorepeat;
@@ -183,6 +196,24 @@
 	cpu-supply = <&vdd_cpu_b>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_hot: cpu_hot {
+			hysteresis = <10000>;
+			temperature = <55000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map2 {
+			cooling-device =
+				<&fan0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+			trip = <&cpu_hot>;
+		};
+	};
+};
+
 &emmc_phy {
 	status = "okay";
 };
@@ -472,6 +503,13 @@
 		};
 	};
 
+	fan {
+		motor_pwr: motor-pwr {
+			rockchip,pins =
+				<RK_GPIO1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins =
-- 
2.19.0
