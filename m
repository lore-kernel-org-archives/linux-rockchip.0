From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 60/92] ram: rk3399: Move mode_sel assignment
Date: Tue, 11 Jun 2019 20:21:03 +0530
Message-ID: <20190611145135.21399-61-jagan@amarulasolutions.com>
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

mode_sel assignment is based on dram type.

In phy_io_config, already have vref setting based
on the dram type, so move this mode_sel assignment
on vref setting area.

No functionality change.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index f80c8a424c..d399ec8e38 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -206,6 +206,7 @@ static int phy_io_config(const struct chan_info *chan,
 		vref_value_dq = 0x1f;
 		vref_mode_ac = 0x6;
 		vref_value_ac = 0x1f;
+		mode_sel = 0x6;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		if (sdram_params->base.odt == 1) {
 			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
@@ -266,12 +267,14 @@ static int phy_io_config(const struct chan_info *chan,
 		}
 		vref_mode_ac = 0x2;
 		vref_value_ac = 0x1f;
+		mode_sel = 0x0;
 	} else if (sdram_params->base.dramtype == DDR3) {
 		/* DDR3L */
 		vref_mode_dq = 0x1;
 		vref_value_dq = 0x1f;
 		vref_mode_ac = 0x1;
 		vref_value_ac = 0x1f;
+		mode_sel = 0x1;
 	} else {
 		debug("Unknown DRAM type.\n");
 		return -EINVAL;
@@ -293,15 +296,6 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_915 PHY_PAD_VREF_CTRL_AC 12bits offset_16 */
 	clrsetbits_le32(&denali_phy[915], 0xfff << 16, reg_value << 16);
 
-	if (sdram_params->base.dramtype == LPDDR4)
-		mode_sel = 0x6;
-	else if (sdram_params->base.dramtype == LPDDR3)
-		mode_sel = 0x0;
-	else if (sdram_params->base.dramtype == DDR3)
-		mode_sel = 0x1;
-	else
-		return -EINVAL;
-
 	/* PHY_924 PHY_PAD_FDBK_DRIVE */
 	clrsetbits_le32(&denali_phy[924], 0x7 << 15, mode_sel << 15);
 	/* PHY_926 PHY_PAD_DATA_DRIVE */
-- 
2.18.0.321.gffc6fa0e3
