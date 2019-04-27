From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v6 3/3] arm64: rockchip: dts: rk3399: Use rk3399-u-boot.dtsi
Date: Sat, 27 Apr 2019 17:12:02 +0530
Message-ID: <20190427114202.7358-4-jagan@amarulasolutions.com>
References: <20190427114202.7358-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190427114202.7358-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Now we have
- board specific -u-boot.dtsi files for board specific u-boot
  dts changes.
- soc specific rk3399-u-boot.dtsi for soc specific u-boot
  dts changes.

So, include the rk3399-u-boot-dtsi on respective board -u-boot.dtsi
and drop the properties which are globally available in rk3399-u-boot.dtsi

Right now rk3399-u-boot.dtsi has sdmmc, spi1 u-boot,dm-pre-reloc
property and more properties and nodes can be move further based
on the requirements.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/dts/rk3399-evb-u-boot.dtsi     | 1 +
 arch/arm/dts/rk3399-evb.dts             | 1 -
 arch/arm/dts/rk3399-firefly-u-boot.dtsi | 1 +
 arch/arm/dts/rk3399-firefly.dts         | 1 -
 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi | 1 +
 arch/arm/dts/rk3399-gru-u-boot.dtsi     | 6 ++++++
 arch/arm/dts/rk3399-gru.dtsi            | 1 -
 arch/arm/dts/rk3399-puma-ddr1600.dts    | 1 +
 arch/arm/dts/rk3399-puma.dtsi           | 3 ---
 9 files changed, 10 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-gru-u-boot.dtsi

diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
index 7e2c57af22..20910e744b 100644
--- a/arch/arm/dts/rk3399-evb-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
@@ -3,4 +3,5 @@
  * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
  */
 
+#include "rk3399-u-boot.dtsi"
 #include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
index 2366e7ed3a..a506e8da37 100644
--- a/arch/arm/dts/rk3399-evb.dts
+++ b/arch/arm/dts/rk3399-evb.dts
@@ -154,7 +154,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	bus-width = <4>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
index eab86bdb30..67b63a8352 100644
--- a/arch/arm/dts/rk3399-firefly-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
@@ -3,4 +3,5 @@
  * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
  */
 
+#include "rk3399-u-boot.dtsi"
 #include "rk3399-sdram-ddr3-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-firefly.dts b/arch/arm/dts/rk3399-firefly.dts
index 5d52319393..a4cb64f8bd 100644
--- a/arch/arm/dts/rk3399-firefly.dts
+++ b/arch/arm/dts/rk3399-firefly.dts
@@ -591,7 +591,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	bus-width = <4>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
index 9edb8cf841..726f396f32 100644
--- a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
@@ -3,4 +3,5 @@
  * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
  */
 
+#include "rk3399-gru-u-boot.dtsi"
 #include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
diff --git a/arch/arm/dts/rk3399-gru-u-boot.dtsi b/arch/arm/dts/rk3399-gru-u-boot.dtsi
new file mode 100644
index 0000000000..7bddc3acdb
--- /dev/null
+++ b/arch/arm/dts/rk3399-gru-u-boot.dtsi
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#include "rk3399-u-boot.dtsi"
diff --git a/arch/arm/dts/rk3399-gru.dtsi b/arch/arm/dts/rk3399-gru.dtsi
index df19263acc..8b3d90fdc6 100644
--- a/arch/arm/dts/rk3399-gru.dtsi
+++ b/arch/arm/dts/rk3399-gru.dtsi
@@ -545,7 +545,6 @@ ap_i2c_audio: &i2c8 {
 
 &spi1 {
 	status = "okay";
-	u-boot,dm-pre-reloc;
 
 	pinctrl-names = "default", "sleep";
 	pinctrl-1 = <&spi1_sleep>;
diff --git a/arch/arm/dts/rk3399-puma-ddr1600.dts b/arch/arm/dts/rk3399-puma-ddr1600.dts
index 337e0eabb4..42763f82d0 100644
--- a/arch/arm/dts/rk3399-puma-ddr1600.dts
+++ b/arch/arm/dts/rk3399-puma-ddr1600.dts
@@ -6,5 +6,6 @@
 /dts-v1/;
 
 #include "rk3399-puma.dtsi"
+#include "rk3399-u-boot.dtsi"
 #include "rk3399-sdram-ddr3-1600.dtsi"
 
diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
index 8304f67192..2712ab6826 100644
--- a/arch/arm/dts/rk3399-puma.dtsi
+++ b/arch/arm/dts/rk3399-puma.dtsi
@@ -492,7 +492,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	clock-frequency = <150000000>;
 	max-frequency = <40000000>;
 	supports-sd;
@@ -648,8 +647,6 @@
 
 
 &spi1 {
-	u-boot,dm-pre-reloc;
-
 	status = "okay";
 
 	#address-cells = <1>;
-- 
2.18.0.321.gffc6fa0e3
