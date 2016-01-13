From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v4 6/6] rockchip: kylin: Check fastboot request
Date: Wed, 13 Jan 2016 16:53:20 +0800
Message-ID: <1452675200-15941-7-git-send-email-jeffy.chen@rock-chips.com>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1452675200-15941-1-git-send-email-jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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

We will save boot mode flag in grf's os_reg[4], if fastboot
requested or fastboot key pressed, try to enter fastboot mode
at preboot stage.

Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

---

Changes in v4:
Remove unused reboot mode definitions.

Changes in v3:
Use rockchip's legacy reboot mode definitions.

Changes in v2: None

 board/kylin/kylin_rk3036/kylin_rk3036.c | 32 ++++++++++++++++++++++++++++++++
 include/configs/kylin_rk3036.h          |  3 +++
 2 files changed, 35 insertions(+)

diff --git a/board/kylin/kylin_rk3036/kylin_rk3036.c b/board/kylin/kylin_rk3036/kylin_rk3036.c
index 40d6b52..a730d7c 100644
--- a/board/kylin/kylin_rk3036/kylin_rk3036.c
+++ b/board/kylin/kylin_rk3036/kylin_rk3036.c
@@ -8,10 +8,15 @@
 #include <dm.h>
 #include <asm/io.h>
 #include <asm/arch/uart.h>
+#include <asm/arch-rockchip/grf_rk3036.h>
 #include <asm/arch/sdram_rk3036.h>
+#include <asm/gpio.h>
 
 DECLARE_GLOBAL_DATA_PTR;
 
+#define GRF_BASE	0x20008000
+static struct rk3036_grf * const grf = (void *)GRF_BASE;
+
 void get_ddr_config(struct rk3036_ddr_config *config)
 {
 	/* K4B4G1646Q config */
@@ -28,6 +33,33 @@ void get_ddr_config(struct rk3036_ddr_config *config)
 	config->bw = 1;
 }
 
+#define FASTBOOT_KEY_GPIO 93
+
+int fastboot_key_pressed(void)
+{
+	gpio_request(FASTBOOT_KEY_GPIO, "fastboot_key");
+	gpio_direction_input(FASTBOOT_KEY_GPIO);
+	return !gpio_get_value(FASTBOOT_KEY_GPIO);
+}
+
+#define ROCKCHIP_BOOT_MODE_FASTBOOT	0x5242C309
+
+int board_late_init(void)
+{
+	int boot_mode = readl(&grf->os_reg[4]);
+
+	/* Clear boot mode */
+	writel(0, &grf->os_reg[4]);
+
+	if (boot_mode == ROCKCHIP_BOOT_MODE_FASTBOOT ||
+	    fastboot_key_pressed()) {
+		printf("enter fastboot!\n");
+		setenv("preboot", "setenv preboot; fastboot usb0");
+	}
+
+	return 0;
+}
+
 int board_init(void)
 {
 	return 0;
diff --git a/include/configs/kylin_rk3036.h b/include/configs/kylin_rk3036.h
index 49997ec..424e81b 100644
--- a/include/configs/kylin_rk3036.h
+++ b/include/configs/kylin_rk3036.h
@@ -39,6 +39,9 @@
 	"mmcpart=5\0" \
 	"loadaddr=" __stringify(CONFIG_SYS_LOAD_ADDR) "\0" \
 
+#define CONFIG_BOARD_LATE_INIT
+#define CONFIG_PREBOOT
+
 #define CONFIG_ANDROID_BOOT_IMAGE
 #define CONFIG_SYS_BOOT_RAMDISK_HIGH
 #define CONFIG_SYS_HUSH_PARSER
-- 
2.1.4
