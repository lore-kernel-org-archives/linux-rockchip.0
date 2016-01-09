From: Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>
Subject: [PATCH 1/2] ARM: dts: rockchip: Add the iodomains for the Rock2 SOM
Date: Sat,  9 Jan 2016 13:54:17 +0100
Message-ID: <1452344058-27434-2-git-send-email-sjoerd.simons@collabora.co.uk>
References: <1452344058-27434-1-git-send-email-sjoerd.simons@collabora.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1452344058-27434-1-git-send-email-sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>
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
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add the IO domain configuration for the Rock2 SOM and model the fixed
regulator used as the vqmmc for the EMMC device.

Signed-off-by: Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>
---

 arch/arm/boot/dts/rk3288-rock2-som.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-rock2-som.dtsi b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
index 1813b7c3..4e93316 100644
--- a/arch/arm/boot/dts/rk3288-rock2-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
@@ -61,6 +61,31 @@
 		clock-output-names = "ext_gmac";
 	};
 
+	io_domains: io-domains {
+		compatible = "rockchip,rk3288-io-voltage-domain";
+		rockchip,grf = <&grf>;
+
+		audio-supply = <&vcc_io>;
+		bb-supply = <&vcc_io>;
+		dvp-supply = <&vcc_18>;
+		flash0-supply = <&vcc_flash>;
+		flash1-supply = <&vccio_pmu>;
+		gpio30-supply = <&vccio_pmu>;
+		gpio1830 = <&vcc_io>;
+		lcdc-supply = <&vcc_io>;
+		sdcard-supply = <&vccio_sd>;
+		wifi-supply = <&vcc_18>;
+	};
+
+	vcc_flash: flash-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		startup-delay-us = <150>;
+		vin-supply = <&vcc_io>;
+	};
+
 	vcc_sys: vsys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
@@ -85,6 +110,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
 	vmmc-supply = <&vcc_io>;
+	vqmmc-supply = <&vcc_flash>;
 	status = "okay";
 };
 
-- 
2.7.0.rc3
