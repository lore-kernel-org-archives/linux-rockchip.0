From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v5 03/13] arm64: rockchip: dts: Add rk3399-u-boot.dtsi files
Date: Fri, 26 Apr 2019 22:56:47 +0530
Message-ID: <20190426172653.2930-4-jagan@amarulasolutions.com>
References: <20190426172653.2930-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190426172653.2930-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

U-Boot always managed to use Linux devicetree files with respective
bindings, but on the other hand u-boot also has it's own u-boot specific
nodes or properties example u-boot,dm-pre-reloc which is required for
SPL_OF_CONTROL to allocate particular node.

It is always a better job to add these u-boot specific nodes and properties
into separate dts files which has an extension of -u-boot.dtsi This would
help to sync the devicetrees from Linux whenever required instead of adding
specific nodes.

So, create initial rk3399-u-boot.dtsi and move sdmmc, spi1 u-boot,dm-pre-reloc
properties into it so-that the subsequent rk3399 boards can include the same
on their board dtsi files.

This patch will create all preliminary infrastructure, like
- create rk3399-u-boot.dtsi
- create board specific -u-boot.dtsi files
- include rk3399-u-boot.dtsi
- move sdram dtsi into board -u-boot.dtsi files
- move sdmmc, u-boot,dm-pre-reloc
- move spi1, u-boot,dm-pre-reloc

This would help to
- sync the dts(i) files from Linux whenever required instead of
  adding specific nodes.
- easy to add u-boot specific changes like binman node into common
  -u-boot.dtsi file

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/dts/rk3399-evb-u-boot.dtsi     |  7 +++++++
 arch/arm/dts/rk3399-evb.dts             |  2 --
 arch/arm/dts/rk3399-ficus-u-boot.dtsi   |  7 +++++++
 arch/arm/dts/rk3399-ficus.dts           |  1 -
 arch/arm/dts/rk3399-firefly-u-boot.dtsi |  7 +++++++
 arch/arm/dts/rk3399-firefly.dts         |  2 --
 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi |  7 +++++++
 arch/arm/dts/rk3399-gru-bob.dts         |  1 -
 arch/arm/dts/rk3399-gru.dtsi            |  1 -
 arch/arm/dts/rk3399-puma-ddr1600.dts    |  2 +-
 arch/arm/dts/rk3399-puma.dtsi           |  3 ---
 arch/arm/dts/rk3399-rock960-u-boot.dtsi |  7 +++++++
 arch/arm/dts/rk3399-rock960.dts         |  1 -
 arch/arm/dts/rk3399-u-boot.dtsi         | 12 ++++++++++++
 14 files changed, 48 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-u-boot.dtsi

diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
new file mode 100644
index 0000000000..20910e744b
--- /dev/null
+++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
index ce004d0d18..a506e8da37 100644
--- a/arch/arm/dts/rk3399-evb.dts
+++ b/arch/arm/dts/rk3399-evb.dts
@@ -7,7 +7,6 @@
 #include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3399.dtsi"
-#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
 
 / {
 	model = "Rockchip RK3399 Evaluation Board";
@@ -155,7 +154,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	bus-width = <4>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-ficus-u-boot.dtsi b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
new file mode 100644
index 0000000000..67b63a8352
--- /dev/null
+++ b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-ddr3-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-ficus.dts b/arch/arm/dts/rk3399-ficus.dts
index 4af0e4e383..4b2dd82b67 100644
--- a/arch/arm/dts/rk3399-ficus.dts
+++ b/arch/arm/dts/rk3399-ficus.dts
@@ -8,7 +8,6 @@
 
 /dts-v1/;
 #include "rk3399-rock960.dtsi"
-#include "rk3399-sdram-ddr3-1600.dtsi"
 
 / {
 	model = "96boards RK3399 Ficus";
diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
new file mode 100644
index 0000000000..67b63a8352
--- /dev/null
+++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-ddr3-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-firefly.dts b/arch/arm/dts/rk3399-firefly.dts
index f90e7e88db..a4cb64f8bd 100644
--- a/arch/arm/dts/rk3399-firefly.dts
+++ b/arch/arm/dts/rk3399-firefly.dts
@@ -7,7 +7,6 @@
 #include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3399.dtsi"
-#include "rk3399-sdram-ddr3-1600.dtsi"
 
 / {
 	model = "Firefly-RK3399 Board";
@@ -592,7 +591,6 @@
 };
 
 &sdmmc {
-	u-boot,dm-pre-reloc;
 	bus-width = <4>;
 	status = "okay";
 };
diff --git a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
new file mode 100644
index 0000000000..f0d31edefd
--- /dev/null
+++ b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
diff --git a/arch/arm/dts/rk3399-gru-bob.dts b/arch/arm/dts/rk3399-gru-bob.dts
index 0e3d91fc28..1ee0dc0d9f 100644
--- a/arch/arm/dts/rk3399-gru-bob.dts
+++ b/arch/arm/dts/rk3399-gru-bob.dts
@@ -7,7 +7,6 @@
 
 /dts-v1/;
 #include "rk3399-gru-chromebook.dtsi"
-#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
 
 / {
 	model = "Google Bob";
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
index 337e0eabb4..b4fc2457f0 100644
--- a/arch/arm/dts/rk3399-puma-ddr1600.dts
+++ b/arch/arm/dts/rk3399-puma-ddr1600.dts
@@ -6,5 +6,5 @@
 /dts-v1/;
 
 #include "rk3399-puma.dtsi"
+#include "rk3399-u-boot.dtsi"
 #include "rk3399-sdram-ddr3-1600.dtsi"
-
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
diff --git a/arch/arm/dts/rk3399-rock960-u-boot.dtsi b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
new file mode 100644
index 0000000000..7fb5072a9b
--- /dev/null
+++ b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+#include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-lpddr3-2GB-1600.dtsi"
diff --git a/arch/arm/dts/rk3399-rock960.dts b/arch/arm/dts/rk3399-rock960.dts
index 25c58b4261..7e06bc97e5 100644
--- a/arch/arm/dts/rk3399-rock960.dts
+++ b/arch/arm/dts/rk3399-rock960.dts
@@ -5,7 +5,6 @@
 
 /dts-v1/;
 #include "rk3399-rock960.dtsi"
-#include "rk3399-sdram-lpddr3-2GB-1600.dtsi"
 
 / {
 	model = "96boards Rock960";
diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
new file mode 100644
index 0000000000..0786c1193a
--- /dev/null
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
+
+&sdmmc {
+	u-boot,dm-pre-reloc;
+};
+
+&spi1 {
+	u-boot,dm-pre-reloc;
+};
-- 
2.18.0.321.gffc6fa0e3
