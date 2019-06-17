From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 27/99] ram: rk3399: Add ddrtimingC0
Date: Mon, 17 Jun 2019 13:01:40 +0530
Message-ID: <20190617073252.27810-28-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190617073252.27810-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Add DdrTimingC0 structure with associated bit fields.

These would help to reconfigure sdram capabilities during
lpddr4 setup related configs.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/include/asm/arch-rockchip/sdram_rk3399.h | 12 +++++++++++-
 drivers/ram/rockchip/sdram_rk3399.c               |  2 +-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index c6a260bad8..924eeb3bac 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -26,6 +26,16 @@ struct rk3399_ddr_pi_regs {
 	u32 denali_pi[200];
 };
 
+union noc_ddrtimingc0 {
+	u32 d32;
+	struct {
+		unsigned burstpenalty : 4;
+		unsigned reserved0 : 4;
+		unsigned wrtomwr : 6;
+		unsigned reserved1 : 18;
+	} b;
+};
+
 struct rk3399_msch_regs {
 	u32 coreid;
 	u32 revisionid;
@@ -44,7 +54,7 @@ struct rk3399_msch_regs {
 struct rk3399_msch_timings {
 	u32 ddrtiminga0;
 	u32 ddrtimingb0;
-	u32 ddrtimingc0;
+	union noc_ddrtimingc0 ddrtimingc0;
 	u32 devtodev0;
 	u32 ddrmode;
 	u32 agingx0;
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index a8100749b0..787cdc6b52 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1042,7 +1042,7 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrtiminga0);
 		writel(noc_timing->ddrtimingb0,
 		       &ddr_msch_regs->ddrtimingb0);
-		writel(noc_timing->ddrtimingc0,
+		writel(noc_timing->ddrtimingc0.d32,
 		       &ddr_msch_regs->ddrtimingc0);
 		writel(noc_timing->devtodev0,
 		       &ddr_msch_regs->devtodev0);
-- 
2.18.0.321.gffc6fa0e3
