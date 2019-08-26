From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 06/16] wdt: designware: Simplify enable function
Date: Mon, 26 Aug 2019 23:51:01 +0530
Message-ID: <20190826182111.30999-7-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190826182111.30999-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Chin Liang See <clsee-EIB2kfCEclfQT0dZR+AlfA@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Andy Shevchenko <andriy.shevchenko-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Simplify dw watchdog enable function by using
proper macro and drop unwanted macros.

Cc: Chin Liang See <clsee-EIB2kfCEclfQT0dZR+AlfA@public.gmane.org>
Cc: Andy Shevchenko <andriy.shevchenko-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/watchdog/designware_wdt.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/watchdog/designware_wdt.c b/drivers/watchdog/designware_wdt.c
index bd858f0608..2979fda44e 100644
--- a/drivers/watchdog/designware_wdt.c
+++ b/drivers/watchdog/designware_wdt.c
@@ -14,7 +14,6 @@
 
 #define DW_WDT_CR_EN_OFFSET	0x00
 #define DW_WDT_CR_RMOD_OFFSET	0x01
-#define DW_WDT_CR_RMOD_VAL	0x00
 #define DW_WDT_CRR_RESTART_VAL	0x76
 
 /*
@@ -38,9 +37,11 @@ static int designware_wdt_settimeout(unsigned int timeout)
 
 static void designware_wdt_enable(void)
 {
-	writel(((DW_WDT_CR_RMOD_VAL << DW_WDT_CR_RMOD_OFFSET) |
-	      (0x1 << DW_WDT_CR_EN_OFFSET)),
-	      (CONFIG_DW_WDT_BASE + DW_WDT_CR));
+	u32 val = readl(CONFIG_DW_WDT_BASE + DW_WDT_CR);
+
+	/* Enable watchdog */
+	val |= DW_WDT_CR_RMOD_OFFSET;
+	writel(val, CONFIG_DW_WDT_BASE + DW_WDT_CR);
 }
 
 static unsigned int designware_wdt_is_enabled(void)
-- 
2.18.0.321.gffc6fa0e3
