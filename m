From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 04/16] rockchip: Add rk3399 reset cause
Date: Mon, 26 Aug 2019 23:50:59 +0530
Message-ID: <20190826182111.30999-5-jagan@amarulasolutions.com>
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
Cc: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add reset cause for rk3399 in common cpu-info file.

This would help to print the reset cause for
various resets.

Common code for various rockchip reset cause
will add it in future.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/include/asm/arch-rockchip/cru.h | 12 +++++++
 arch/arm/mach-rockchip/cpu-info.c        | 43 ++++++++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/include/asm/arch-rockchip/cru.h
index 3d1927580f..e267a71ca6 100644
--- a/arch/arm/include/asm/arch-rockchip/cru.h
+++ b/arch/arm/include/asm/arch-rockchip/cru.h
@@ -11,4 +11,16 @@
 # include <asm/arch-rockchip/cru_rk3399.h>
 #endif
 
+/* CRU_GLB_RST_ST */
+enum {
+	GLB_POR_RST,
+	FST_GLB_RST_ST		= BIT(0),
+	SND_GLB_RST_ST		= BIT(1),
+	FST_GLB_TSADC_RST_ST	= BIT(2),
+	SND_GLB_TSADC_RST_ST	= BIT(3),
+	FST_GLB_WDT_RST_ST	= BIT(4),
+	SND_GLB_WDT_RST_ST	= BIT(5),
+	GLB_RST_ST_MASK		= GENMASK(5, 0),
+};
+
 #endif /* _ROCKCHIP_CLOCK_H */
diff --git a/arch/arm/mach-rockchip/cpu-info.c b/arch/arm/mach-rockchip/cpu-info.c
index 90ce65d9ff..63d867fe78 100644
--- a/arch/arm/mach-rockchip/cpu-info.c
+++ b/arch/arm/mach-rockchip/cpu-info.c
@@ -5,10 +5,53 @@
  */
 
 #include <common.h>
+#include <asm/io.h>
+#include <asm/arch-rockchip/clock.h>
+#include <asm/arch-rockchip/cru.h>
+#include <asm/arch-rockchip/hardware.h>
+#include <linux/err.h>
+
+static char *get_reset_cause(void)
+{
+	struct rockchip_cru *cru = rockchip_get_cru();
+	char *cause = NULL;
+
+	if (IS_ERR(cru))
+		return cause;
+
+	switch (cru->glb_rst_st) {
+	case GLB_POR_RST:
+		cause = "POR";
+		break;
+	case FST_GLB_RST_ST:
+	case SND_GLB_RST_ST:
+		cause = "RST";
+		break;
+	case FST_GLB_TSADC_RST_ST:
+	case SND_GLB_TSADC_RST_ST:
+		cause = "THERMAL";
+		break;
+	case FST_GLB_WDT_RST_ST:
+	case SND_GLB_WDT_RST_ST:
+		cause = "WDOG";
+		break;
+	default:
+		cause = "unknown reset";
+	}
+
+	/*
+	 * Clear glb_rst_st, so we can determine the last reset cause
+	 * for following resets.
+	 */
+	rk_clrreg(&cru->glb_rst_st, GLB_RST_ST_MASK);
+
+	return cause;
+}
 
 int print_cpuinfo(void)
 {
 	printf("SoC: Rockchip %s\n", CONFIG_SYS_SOC);
+	printf("Reset cause: %s\n", get_reset_cause());
 
 	/* TODO print operating temparature and clock */
 
-- 
2.18.0.321.gffc6fa0e3
