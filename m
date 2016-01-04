From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v1 5/6] rockchip: kylin: Enable boot with android boot image
Date: Mon,  4 Jan 2016 15:50:22 +0800
Message-ID: <1451893823-20309-6-git-send-email-jeffy.chen@rock-chips.com>
References: <1451893823-20309-1-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1451893823-20309-1-git-send-email-jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, huang lin <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The android kernel is using appended dtb by default, and store
ramdisk right after kernel & dtb.
So we needs to relocate ramdisk, and use atags to pass params.

Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 include/configs/kylin_rk3036.h | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/include/configs/kylin_rk3036.h b/include/configs/kylin_rk3036.h
index b750b26..49997ec 100644
--- a/include/configs/kylin_rk3036.h
+++ b/include/configs/kylin_rk3036.h
@@ -35,6 +35,29 @@
 #undef CONFIG_EXTRA_ENV_SETTINGS
 #define CONFIG_EXTRA_ENV_SETTINGS \
 	"partitions=" PARTS_DEFAULT \
+	"mmcdev=0\0" \
+	"mmcpart=5\0" \
+	"loadaddr=" __stringify(CONFIG_SYS_LOAD_ADDR) "\0" \
+
+#define CONFIG_ANDROID_BOOT_IMAGE
+#define CONFIG_SYS_BOOT_RAMDISK_HIGH
+#define CONFIG_SYS_HUSH_PARSER
+
+#undef CONFIG_BOOTCOMMAND
+#define CONFIG_BOOTCOMMAND \
+	"mmc dev ${mmcdev}; if mmc rescan; then " \
+		"part start mmc ${mmcdev} ${mmcpart} boot_start;" \
+		"part size mmc ${mmcdev} ${mmcpart} boot_size;" \
+		"mmc read ${loadaddr} ${boot_start} ${boot_size};" \
+		"bootm start ${loadaddr}; bootm ramdisk;" \
+		"bootm prep; bootm go;" \
+	"fi;" \
+
+/* Enable atags */
+#define CONFIG_SYS_BOOTPARAMS_LEN	(64*1024)
+#define CONFIG_INITRD_TAG
+#define CONFIG_SETUP_MEMORY_TAGS
+#define CONFIG_CMDLINE_TAG
 
 #endif
 
-- 
2.1.4
