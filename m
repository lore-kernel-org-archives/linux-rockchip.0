From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 1/6] arm64: dts: rk3399-puma: Move u-boot properties into
 -u-boot.dtsi
Date: Sat, 25 Apr 2020 16:23:14 +0530
Message-ID: <20200425105319.12009-2-jagan@amarulasolutions.com>
References: <20200425105319.12009-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200425105319.12009-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Peter Robinson <pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Move U-Boot specific properties into rk3399-puma u-boot
specific dtsi file.

This would help to sync the devicetrees from Linux whenever
required instead of adding specific nodes.

Cc: Peter Robinson <pbrobinson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/dts/rk3399-puma-u-boot.dtsi | 16 ++++++++++++++++
 arch/arm/dts/rk3399-puma.dtsi        | 11 -----------
 2 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm/dts/rk3399-puma-u-boot.dtsi b/arch/arm/dts/rk3399-puma-u-boot.dtsi
index 52f62b5d39..e664779227 100644
--- a/arch/arm/dts/rk3399-puma-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-puma-u-boot.dtsi
@@ -22,3 +22,19 @@
        };
 
 };
+
+&bios_enable {
+	u-boot,dm-pre-reloc;
+};
+
+&gpio1 {
+	u-boot,dm-pre-reloc;
+};
+
+&gpio3 {
+	u-boot,dm-pre-reloc;
+};
+
+&spiflash {
+	u-boot,dm-pre-reloc;
+};
diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
index 558b6337df..246a892cb7 100644
--- a/arch/arm/dts/rk3399-puma.dtsi
+++ b/arch/arm/dts/rk3399-puma.dtsi
@@ -91,7 +91,6 @@
 	 */
 	bios_enable: bios_enable {
 		compatible = "regulator-fixed";
-		u-boot,dm-pre-reloc;
 		regulator-name = "bios_enable";
 		enable-active-high;
 		gpio = <&gpio3 RK_PD5 GPIO_ACTIVE_LOW>;
@@ -520,14 +519,6 @@
 	status = "okay";
 };
 
-&gpio1 {
-	u-boot,dm-pre-reloc;
-};
-
-&gpio3 {
-	u-boot,dm-pre-reloc;
-};
-
 &pinctrl {
 	/* Pins that are not explicitely used by any devices */
 	pinctrl-names = "default";
@@ -633,8 +624,6 @@
 	#size-cells = <0>;
 
 	spiflash: w25q32dw@0 {
-		u-boot,dm-pre-reloc;
-
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <49500000>;
-- 
2.17.1
