From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 1/3] environment: distro: Add SF distro command
Date: Fri, 10 Apr 2020 23:56:29 +0530
Message-ID: <20200410182631.11951-2-jagan@amarulasolutions.com>
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200410182631.11951-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add distro boot command support for SPI flash (SF).

This distro boot will read the boot script at specific
location at the flash and start sourcing the same.

This file need to include on required include/config
file.

Cc: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v2:
- new patch

 include/environment/distro/sf.h | 41 +++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 include/environment/distro/sf.h

diff --git a/include/environment/distro/sf.h b/include/environment/distro/sf.h
new file mode 100644
index 0000000000..e793be06c6
--- /dev/null
+++ b/include/environment/distro/sf.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2020 Amarula Solutions(India)
+ *
+ * SF distro configurations.
+ */
+
+#ifndef __DISTRO_SF_CONFIG_H
+#define __DISTRO_SF_CONFIG_H
+
+#if CONFIG_IS_ENABLED(CMD_SF)
+#define BOOTENV_SHARED_SF(devtypel)				\
+	#devtypel "_boot=" 					\
+	"if " #devtypel " probe ${busnum}; then "		\
+		"devtype=" #devtypel "; "	  		\
+		"run scan_sf_for_scripts; "	  		\
+	"fi\0"
+#define BOOTENV_DEV_SF(devtypeu, devtypel, instance) 		\
+	"bootcmd_" #devtypel #instance "=" 			\
+		"busnum=" #instance "; " 			\
+		"run " #devtypel "_boot\0"
+#define BOOTENV_DEV_NAME_SF(devtypeu, devtypel, instance) 	\
+	#devtypel #instance " "
+#else
+#define BOOTENV_SHARED_SF(devtypel)
+#define BOOTENV_DEV_SF \
+	BOOT_TARGET_DEVICES_references_SF_without_CONFIG_CMD_SF
+#define BOOTENV_DEV_NAME_SF \
+	BOOT_TARGET_DEVICES_references_SF_without_CONFIG_CMD_SF
+
+#endif /* CONFIG_CMD_SF */
+
+#define BOOTENV_SF \
+	BOOTENV_SHARED_SF(sf) \
+	"scan_sf_for_scripts="					\
+		"${devtype} read ${scriptaddr} "		\
+			"${script_offset_f} ${script_size_f}; "	\
+		"source ${scriptaddr}; "			\
+		"echo SCRIPT FAILED: continuing...\0"
+
+#endif /* __DISTRO_SF_CONFIG_H */
-- 
2.17.1
