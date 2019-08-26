From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 07/16] wdt: dw: Add driver-model support
Date: Mon, 26 Aug 2019 23:51:02 +0530
Message-ID: <20190826182111.30999-8-jagan@amarulasolutions.com>
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

Add driver-model code for designware watchdog.

Cc: Chin Liang See <clsee-EIB2kfCEclfQT0dZR+AlfA@public.gmane.org>
Cc: Andy Shevchenko <andriy.shevchenko-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/watchdog/designware_wdt.c | 118 +++++++++++++++++++++++++++++-
 1 file changed, 117 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/designware_wdt.c b/drivers/watchdog/designware_wdt.c
index 2979fda44e..c822b1e36b 100644
--- a/drivers/watchdog/designware_wdt.c
+++ b/drivers/watchdog/designware_wdt.c
@@ -4,7 +4,6 @@
  */
 
 #include <common.h>
-#include <watchdog.h>
 #include <asm/io.h>
 #include <asm/utils.h>
 
@@ -16,6 +15,121 @@
 #define DW_WDT_CR_RMOD_OFFSET	0x01
 #define DW_WDT_CRR_RESTART_VAL	0x76
 
+#define DW_WDT_MIN_TOP		0
+#define DW_WDT_MAX_TOP		15
+#define DW_WDT_TOPINIT_SHIFT	4
+
+#ifdef CONFIG_WDT
+
+#include <dm.h>
+#include <wdt.h>
+#include <clk.h>
+
+struct dw_wdt {
+	void __iomem *regs;
+	unsigned long clk_rate;
+};
+
+static inline int dw_wdt_is_enabled(struct dw_wdt *dw)
+{
+	return readl(dw->regs + DW_WDT_CR) & DW_WDT_CR_RMOD_OFFSET;
+}
+
+/*
+ * Set the watchdog time interval.
+ * Counter is 32 bit.
+ */
+static int dw_wdt_set_timeout(struct dw_wdt *dw, unsigned int timeout)
+{
+	int i, top_val;
+
+	/* calculate the timeout range value */
+	i = log_2_n_round_up(timeout * dw->clk_rate) - 16;
+	top_val = clamp_t(int, i, DW_WDT_MIN_TOP, DW_WDT_MAX_TOP);
+
+	writel((top_val | (top_val << DW_WDT_TOPINIT_SHIFT)),
+	       dw->regs + DW_WDT_TORR);
+
+	return 0;
+}
+
+static void dw_wdt_enable(struct dw_wdt *dw)
+{
+	u32 val = readl(dw->regs + DW_WDT_CR);
+
+	/* Enable watchdog */
+	val |= DW_WDT_CR_RMOD_OFFSET;
+	writel(val, dw->regs + DW_WDT_CR);
+}
+
+static int dw_wdt_reset(struct udevice *dev)
+{
+	struct dw_wdt *dw = dev_get_priv(dev);
+
+	if (dw_wdt_is_enabled(dw))
+		writel(DW_WDT_CRR_RESTART_VAL, dw->regs + DW_WDT_CRR);
+	else
+		dw_wdt_enable(dw);
+
+	return 0;
+}
+
+static int dw_wdt_start(struct udevice *dev, u64 timeout, ulong flags)
+{
+	struct dw_wdt *dw = dev_get_priv(dev);
+
+	dw_wdt_set_timeout(dw, timeout);
+	dw_wdt_enable(dw);
+
+	return 0;
+}
+
+static int dw_wdt_probe(struct udevice *dev)
+{
+	struct dw_wdt *dw = dev_get_priv(dev);
+	struct clk clk;
+	int ret;
+
+	dw->regs = dev_remap_addr(dev);
+	if (!dw->regs)
+		return -EINVAL;
+
+	ret = clk_get_by_index(dev, 0, &clk);
+	if (ret)
+		return ret;
+
+	dw->clk_rate = clk_get_rate(&clk);
+	if (!dw->clk_rate)
+		return -EINVAL;
+
+	dw_wdt_reset(dev);
+
+	return 0;
+}
+
+static const struct wdt_ops dw_wdt_ops = {
+	.reset = dw_wdt_reset,
+	.start = dw_wdt_start,
+};
+
+static const struct udevice_id dw_wdt_ids[] = {
+	{ .compatible = "snps,dw-wdt" },
+	{ /* sentinel */ }
+};
+
+U_BOOT_DRIVER(dw_wdt) = {
+	.name = "dw_wdt",
+	.id = UCLASS_WDT,
+	.of_match = dw_wdt_ids,
+	.ops = &dw_wdt_ops,
+	.priv_auto_alloc_size = sizeof(struct dw_wdt),
+	.probe = dw_wdt_probe,
+};
+
+#else
+
+#include <watchdog.h>
+
 /*
  * Set the watchdog time interval.
  * Counter is 32 bit.
@@ -70,3 +184,5 @@ void hw_watchdog_init(void)
 	hw_watchdog_reset();
 }
 #endif
+
+#endif /* CONFIG_WDT */
-- 
2.18.0.321.gffc6fa0e3
