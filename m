From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 24/57] ram: rk3399: Don't wait for PLL lock in lpddr4
Date: Tue, 16 Jul 2019 17:27:12 +0530
Message-ID: <20190716115745.12585-25-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

lpddr4 has PLL bypass mode during phy initialization phase,
which does all pll configurations.

So no need to wait explicitly during pctl config.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 88fbfa440d..023838a301 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -570,16 +570,22 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	setbits_le32(&denali_pi[0], START);
 	setbits_le32(&denali_ctl[0], START);
 
-	/* Waiting for phy DLL lock */
-	while (1) {
-		tmp = readl(&denali_phy[920]);
-		tmp1 = readl(&denali_phy[921]);
-		tmp2 = readl(&denali_phy[922]);
-		if ((((tmp >> 16) & 0x1) == 0x1) &&
-		    (((tmp1 >> 16) & 0x1) == 0x1) &&
-		    (((tmp1 >> 0) & 0x1) == 0x1) &&
-		    (((tmp2 >> 0) & 0x1) == 0x1))
-			break;
+	/**
+	 * LPDDR4 use PLL bypass mode for init
+	 * not need to wait for the PLL to lock
+	 */
+	if (params->base.dramtype != LPDDR4) {
+		/* Waiting for phy DLL lock */
+		while (1) {
+			tmp = readl(&denali_phy[920]);
+			tmp1 = readl(&denali_phy[921]);
+			tmp2 = readl(&denali_phy[922]);
+			if ((((tmp >> 16) & 0x1) == 0x1) &&
+			    (((tmp1 >> 16) & 0x1) == 0x1) &&
+			    (((tmp1 >> 0) & 0x1) == 0x1) &&
+			    (((tmp2 >> 0) & 0x1) == 0x1))
+				break;
+		}
 	}
 
 	copy_to_reg(&denali_phy[896], &params_phy[896], (958 - 895) * 4);
-- 
2.18.0.321.gffc6fa0e3
