From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 2/2] rockchip: Add SF distro bootcmd
Date: Mon,  3 Feb 2020 14:49:24 +0530
Message-ID: <20200203091924.15385-2-jagan@amarulasolutions.com>
References: <20200203091924.15385-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200203091924.15385-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add distro boot command support for SPI flash in Rockchip.

This distro boot will read the boot script at specific
location at the flash and start sourcing the same.

Included the SF device at the last of the target devices
list since all the rest of the devices on the list have
more possibility to boot the distribution due to the
size of the SPI flash is concern.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 include/configs/rockchip-common.h | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/include/configs/rockchip-common.h b/include/configs/rockchip-common.h
index b55e09a9ca..8e7c994266 100644
--- a/include/configs/rockchip-common.h
+++ b/include/configs/rockchip-common.h
@@ -41,11 +41,26 @@
 	#define BOOT_TARGET_DHCP(func)
 #endif
 
+#if CONFIG_IS_ENABLED(CMD_SF)
+	#define BOOT_TARGET_SF(func)	func(SF, sf, na)
+#else
+	#define BOOT_TARGET_SF(func)
+#endif
+
+#define BOOTENV_DEV_SF(devtypeu, devtypel, instance) \
+	"bootcmd_sf=sf probe 0 0 0 && " \
+		"sf read ${scriptaddr} ${script_offset_f} ${script_size_f} && " \
+		"source ${scriptaddr}; echo SCRIPT FAILED: continuing...;\0"
+
+#define BOOTENV_DEV_NAME_SF(devtypeu, devtypel, instance) \
+	"sf "
+
 #define BOOT_TARGET_DEVICES(func) \
 	BOOT_TARGET_MMC(func) \
 	BOOT_TARGET_USB(func) \
 	BOOT_TARGET_PXE(func) \
-	BOOT_TARGET_DHCP(func)
+	BOOT_TARGET_DHCP(func) \
+	BOOT_TARGET_SF(func)
 
 #ifdef CONFIG_ARM64
 #define ROOT_UUID "B921B045-1DF0-41C3-AF44-4C6F280D3FAE;\0"
-- 
2.17.1
