From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 06/92] ram: rk3399: Move macro after include files
Date: Tue, 11 Jun 2019 20:20:09 +0530
Message-ID: <20190611145135.21399-7-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190611145135.21399-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Move the macro definitions after include files for better
code readability and to satisfy coding style.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index da04b11922..52633166c1 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -22,6 +22,19 @@
 #include <linux/err.h>
 #include <time.h>
 
+#define PRESET_SGRF_HOLD(n)	((0x1 << (6 + 16)) | ((n) << 6))
+#define PRESET_GPIO0_HOLD(n)	((0x1 << (7 + 16)) | ((n) << 7))
+#define PRESET_GPIO1_HOLD(n)	((0x1 << (8 + 16)) | ((n) << 8))
+
+#define PHY_DRV_ODT_HI_Z	0x0
+#define PHY_DRV_ODT_240		0x1
+#define PHY_DRV_ODT_120		0x8
+#define PHY_DRV_ODT_80		0x9
+#define PHY_DRV_ODT_60		0xc
+#define PHY_DRV_ODT_48		0xd
+#define PHY_DRV_ODT_40		0xe
+#define PHY_DRV_ODT_34_3	0xf
+
 struct chan_info {
 	struct rk3399_ddr_pctl_regs *pctl;
 	struct rk3399_ddr_pi_regs *pi;
@@ -43,19 +56,6 @@ struct dram_info {
 	struct rk3399_pmugrf_regs *pmugrf;
 };
 
-#define PRESET_SGRF_HOLD(n)	((0x1 << (6 + 16)) | ((n) << 6))
-#define PRESET_GPIO0_HOLD(n)	((0x1 << (7 + 16)) | ((n) << 7))
-#define PRESET_GPIO1_HOLD(n)	((0x1 << (8 + 16)) | ((n) << 8))
-
-#define PHY_DRV_ODT_HI_Z	0x0
-#define PHY_DRV_ODT_240		0x1
-#define PHY_DRV_ODT_120		0x8
-#define PHY_DRV_ODT_80		0x9
-#define PHY_DRV_ODT_60		0xc
-#define PHY_DRV_ODT_48		0xd
-#define PHY_DRV_ODT_40		0xe
-#define PHY_DRV_ODT_34_3	0xf
-
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
 
-- 
2.18.0.321.gffc6fa0e3
