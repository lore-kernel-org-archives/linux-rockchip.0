From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 4/6] rockchip: kylin: Add default gpt partition table
Date: Fri,  8 Jan 2016 18:33:30 +0800
Message-ID: <1452249212-25183-5-git-send-email-jeffy.chen@rock-chips.com>
References: <1452249212-25183-1-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1452249212-25183-1-git-send-email-jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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

Add default android gpt partition table for kylin board.

Use "gpt write mmc 0 $partitions" to apply.

Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Acked-by: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---

Changes in v2: None

 include/configs/kylin_rk3036.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/include/configs/kylin_rk3036.h b/include/configs/kylin_rk3036.h
index aa07889..b750b26 100644
--- a/include/configs/kylin_rk3036.h
+++ b/include/configs/kylin_rk3036.h
@@ -9,4 +9,33 @@
 
 #include <configs/rk3036_common.h>
 
+#ifndef CONFIG_SPL_BUILD
+
+/* Enable gpt partition table */
+#define CONFIG_CMD_GPT
+#define CONFIG_RANDOM_UUID
+#define CONFIG_EFI_PARTITION
+#define PARTS_DEFAULT \
+	"uuid_disk=${uuid_gpt_disk};" \
+	"name=loader,start=32K,size=4000K,uuid=${uuid_gpt_loader};" \
+	"name=reserved,size=64K,uuid=${uuid_gpt_reserved};" \
+	"name=misc,size=4M,uuid=${uuid_gpt_misc};" \
+	"name=recovery,size=32M,uuid=${uuid_gpt_recovery};" \
+	"name=boot_a,size=32M,uuid=${uuid_gpt_boot_a};" \
+	"name=boot_b,size=32M,uuid=${uuid_gpt_boot_b};" \
+	"name=system_a,size=818M,uuid=${uuid_gpt_system_a};" \
+	"name=system_b,size=818M,uuid=${uuid_gpt_system_b};" \
+	"name=vendor_a,size=50M,uuid=${uuid_gpt_vendor_a};" \
+	"name=vendor_b,size=50M,uuid=${uuid_gpt_vendor_b};" \
+	"name=cache,size=100M,uuid=${uuid_gpt_cache};" \
+	"name=metadata,size=16M,uuid=${uuid_gpt_metadata};" \
+	"name=persist,size=4M,uuid=${uuid_gpt_persist};" \
+	"name=userdata,size=-,uuid=${uuid_gpt_userdata};\0" \
+
+#undef CONFIG_EXTRA_ENV_SETTINGS
+#define CONFIG_EXTRA_ENV_SETTINGS \
+	"partitions=" PARTS_DEFAULT \
+
+#endif
+
 #endif
-- 
2.1.4
