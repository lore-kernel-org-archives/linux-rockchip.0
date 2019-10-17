From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 3/5] arm: dts: rk3368: Add rk3368-u-boot.dtsi
Date: Fri, 18 Oct 2019 00:37:08 +0530
Message-ID: <20191017190710.29985-4-jagan@amarulasolutions.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191017190710.29985-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add U-Boot specific dtsi file for rk3368 SoC. This
would help to add U-Boot specific dts nodes, properties
which are common across rk3368.

Right now, the file is empty, will add required changes
in future patches.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/dts/rk3368-geekbox-u-boot.dtsi | 2 ++
 arch/arm/dts/rk3368-lion-u-boot.dtsi    | 2 ++
 arch/arm/dts/rk3368-px5-evb-u-boot.dtsi | 3 +++
 arch/arm/dts/rk3368-sheep-u-boot.dtsi   | 2 ++
 arch/arm/dts/rk3368-u-boot.dtsi         | 4 ++++
 5 files changed, 13 insertions(+)
 create mode 100644 arch/arm/dts/rk3368-u-boot.dtsi

diff --git a/arch/arm/dts/rk3368-geekbox-u-boot.dtsi b/arch/arm/dts/rk3368-geekbox-u-boot.dtsi
index 30ea9e433a..0b724fa45f 100644
--- a/arch/arm/dts/rk3368-geekbox-u-boot.dtsi
+++ b/arch/arm/dts/rk3368-geekbox-u-boot.dtsi
@@ -3,6 +3,8 @@
  * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
  */
 
+#include "rk3368-u-boot.dtsi"
+
 &pinctrl {
 	u-boot,dm-pre-reloc;
 };
diff --git a/arch/arm/dts/rk3368-lion-u-boot.dtsi b/arch/arm/dts/rk3368-lion-u-boot.dtsi
index edc93e438f..5050d3dee8 100644
--- a/arch/arm/dts/rk3368-lion-u-boot.dtsi
+++ b/arch/arm/dts/rk3368-lion-u-boot.dtsi
@@ -3,6 +3,8 @@
  * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
  */
 
+#include "rk3368-u-boot.dtsi"
+
 / {
 	config {
 		u-boot,spl-payload-offset = <0x40000>; /* @ 256KB */
diff --git a/arch/arm/dts/rk3368-px5-evb-u-boot.dtsi b/arch/arm/dts/rk3368-px5-evb-u-boot.dtsi
index 002767a033..5fee02a65b 100644
--- a/arch/arm/dts/rk3368-px5-evb-u-boot.dtsi
+++ b/arch/arm/dts/rk3368-px5-evb-u-boot.dtsi
@@ -2,6 +2,9 @@
 /*
  * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
  */
+
+#include "rk3368-u-boot.dtsi"
+
 / {
 	chosen {
 		u-boot,spl-boot-order = &emmc;
diff --git a/arch/arm/dts/rk3368-sheep-u-boot.dtsi b/arch/arm/dts/rk3368-sheep-u-boot.dtsi
index 30ea9e433a..0b724fa45f 100644
--- a/arch/arm/dts/rk3368-sheep-u-boot.dtsi
+++ b/arch/arm/dts/rk3368-sheep-u-boot.dtsi
@@ -3,6 +3,8 @@
  * (C) Copyright 2017 Theobroma Systems Design und Consulting GmbH
  */
 
+#include "rk3368-u-boot.dtsi"
+
 &pinctrl {
 	u-boot,dm-pre-reloc;
 };
diff --git a/arch/arm/dts/rk3368-u-boot.dtsi b/arch/arm/dts/rk3368-u-boot.dtsi
new file mode 100644
index 0000000000..1e7d079315
--- /dev/null
+++ b/arch/arm/dts/rk3368-u-boot.dtsi
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
+ */
-- 
2.18.0.321.gffc6fa0e3
