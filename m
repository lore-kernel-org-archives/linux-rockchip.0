From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 09/15] ram: rk3399: Order tsel variables
Date: Mon, 15 Jul 2019 23:51:04 +0530
Message-ID: <20190715182110.21336-10-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190715182110.21336-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Order tsel* variable declarations and assignment in proper
and meaningful way.

No functionality change.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 37 +++++++++++++++++------------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 8a983f9bb1..043b27737d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -159,41 +159,48 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 *denali_phy = chan->publ->denali_phy;
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
-	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
-	u32 tsel_wr_select_ca_p, tsel_wr_select_ca_n;
-	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
+	u32 tsel_idle_select_p, tsel_rd_select_p;
+	u32 tsel_idle_select_n, tsel_rd_select_n;
+	u32 tsel_wr_select_dq_p, tsel_wr_select_ca_p;
+	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
 	u32 reg_value;
 
 	if (params->base.dramtype == LPDDR4) {
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
-		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
-		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
+		tsel_rd_select_n = PHY_DRV_ODT_240;
+
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
+		tsel_idle_select_n = PHY_DRV_ODT_240;
 
-		tsel_rd_select_n = PHY_DRV_ODT_240;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_40;
+
+		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
-		tsel_idle_select_n = PHY_DRV_ODT_240;
 	} else if (params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
-		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
+		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
+
 		tsel_idle_select_p = PHY_DRV_ODT_240;
+		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 
-		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
+
+		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_48;
-		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
-		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
+		tsel_rd_select_n = PHY_DRV_ODT_240;
+
 		tsel_idle_select_p = PHY_DRV_ODT_240;
+		tsel_idle_select_n = PHY_DRV_ODT_240;
 
-		tsel_rd_select_n = PHY_DRV_ODT_240;
+		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
+
+		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
 		tsel_wr_select_ca_n = PHY_DRV_ODT_34_3;
-		tsel_idle_select_n = PHY_DRV_ODT_240;
 	}
 
 	if (params->base.odt == 1)
-- 
2.18.0.321.gffc6fa0e3
