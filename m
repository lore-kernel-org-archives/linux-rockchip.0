From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 02/11] distro_bootcmd: Add SF support
Date: Sat, 21 Dec 2019 13:24:31 +0530
Message-ID: <20191221075440.6944-3-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191221075440.6944-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add distro boot command support for SPI flash.

This distro boot will read the boot script at specific
location at the flash and start sourcing the same.

The common macro like BOOTENV_SHARED_FLASH would help
to extend the support for nand flash in future.

Cc: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 include/config_distro_bootcmd.h | 35 +++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/include/config_distro_bootcmd.h b/include/config_distro_bootcmd.h
index fc0935fa21..d68b79e290 100644
--- a/include/config_distro_bootcmd.h
+++ b/include/config_distro_bootcmd.h
@@ -43,6 +43,22 @@
 #define BOOTENV_DEV_NAME_BLKDEV(devtypeu, devtypel, instance) \
 	#devtypel #instance " "
 
+#define BOOTENV_SHARED_SF_BODY(devtypel) \
+		"if " #devtypel " probe ${devnum}; then " \
+			"devtype=" #devtypel "; "	  \
+			"run scan_flash_for_scripts; "	  \
+		"fi\0"
+
+#define BOOTENV_SHARED_FLASH(devtypel) \
+	#devtypel "_boot=" \
+	BOOTENV_SHARED_SF_BODY(devtypel)
+
+#define BOOTENV_DEV_FLASH(devtypeu, devtypel, instance) \
+	BOOTENV_DEV_BLKDEV(devtypeu, devtypel, instance)
+
+#define BOOTENV_DEV_NAME_FLASH(devtypeu, devtypel, instance) \
+	BOOTENV_DEV_NAME_BLKDEV(devtypeu, devtypel, instance)
+
 #ifdef CONFIG_SANDBOX
 #define BOOTENV_SHARED_HOST	BOOTENV_SHARED_BLKDEV(host)
 #define BOOTENV_DEV_HOST	BOOTENV_DEV_BLKDEV
@@ -398,6 +414,18 @@
 	BOOT_TARGET_DEVICES_references_PXE_without_CONFIG_CMD_DHCP_or_PXE
 #endif
 
+#if defined(CONFIG_CMD_SF)
+#define BOOTENV_SHARED_SF	BOOTENV_SHARED_FLASH(sf)
+#define BOOTENV_DEV_SF		BOOTENV_DEV_FLASH
+#define BOOTENV_DEV_NAME_SF	BOOTENV_DEV_NAME_FLASH
+#else
+#define BOOTENV_SHARED_SF
+#define BOOTENV_DEV_SF \
+	BOOT_TARGET_DEVICES_references_SF_without_CONFIG_CMD_SF
+#define BOOTENV_DEV_NAME_SF \
+	BOOT_TARGET_DEVICES_references_SF_without_CONFIG_CMD_SF
+#endif
+
 #define BOOTENV_DEV_NAME(devtypeu, devtypel, instance) \
 	BOOTENV_DEV_NAME_##devtypeu(devtypeu, devtypel, instance)
 #define BOOTENV_BOOT_TARGETS \
@@ -412,6 +440,7 @@
 	BOOTENV_SHARED_USB \
 	BOOTENV_SHARED_SATA \
 	BOOTENV_SHARED_SCSI \
+	BOOTENV_SHARED_SF \
 	BOOTENV_SHARED_NVME \
 	BOOTENV_SHARED_IDE \
 	BOOTENV_SHARED_UBIFS \
@@ -436,6 +465,12 @@
 			"echo SCRIPT FAILED: continuing...; "             \
 		"fi\0"                                                    \
 	\
+	"scan_flash_for_scripts="                                         \
+		"${devtype} read ${scriptaddr} "                          \
+			"${script_offset_f} ${script_size_f}; "		  \
+		"source ${scriptaddr}; "				  \
+		"echo SCRIPT FAILED: continuing...\0"			  \
+	\
 	"boot_a_script="                                                  \
 		"load ${devtype} ${devnum}:${distro_bootpart} "           \
 			"${scriptaddr} ${prefix}${script}; "              \
-- 
2.18.0.321.gffc6fa0e3
