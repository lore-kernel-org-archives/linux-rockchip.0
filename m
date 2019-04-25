From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 03/13] rockchip: dts: rk3399: Create initial
 rk3399-u-boot.dtsi
Date: Thu, 25 Apr 2019 23:04:17 +0530
Message-ID: <20190425173427.13445-4-jagan@amarulasolutions.com>
References: <20190425173427.13445-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190425173427.13445-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

u-boot,dm-pre-reloc is required for SDMMC booted rk3399 boards and
which is U-Boot specific devicetrees binding.

Move it on global rk3399-u-boot.dtsi file and rest of the U-Boot
bindings will move it future based on the requirement.

This would help to sync the devicetrees from Linux whenever required
instead of adding specific nodes.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
---
 arch/arm/dts/rk3399-evb.dts     | 1 -
 arch/arm/dts/rk3399-firefly.dts | 1 -
 arch/arm/dts/rk3399-puma.dtsi   | 1 -
 arch/arm/dts/rk3399-u-boot.dtsi | 8 ++++++++
 4 files changed, 8 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-u-boot.dtsi

diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
index ce004d0d18..9162f3dd50 100644
--- a/arch/arm/dts/rk3399-evb.dts
+++ b/arch/arm/dts/rk3399-evb.dts
@@ -155,7 +155,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	bus-width = <4>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-firefly.dts b/arch/arm/dts/rk3399-firefly.dts
index f90e7e88db..46f2ffaf8d 100644
--- a/arch/arm/dts/rk3399-firefly.dts
+++ b/arch/arm/dts/rk3399-firefly.dts
@@ -592,7 +592,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	bus-width = <4>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
index 8304f67192..9049694243 100644
--- a/arch/arm/dts/rk3399-puma.dtsi
+++ b/arch/arm/dts/rk3399-puma.dtsi
@@ -492,7 +492,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	clock-frequency = <150000000>;
 	max-frequency = <40000000>;
 	supports-sd;
diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
new file mode 100644
index 0000000000..f533ed95eb
--- /dev/null
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+&sdmmc {
+	u-boot,dm-pre-reloc;
+};
-- 
2.18.0.321.gffc6fa0e3
