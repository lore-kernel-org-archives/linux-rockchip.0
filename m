From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 1/3] clk: rockchip: Fix wrong parents for MMC phase clock for
 rk3328
Date: Wed, 21 Mar 2018 10:39:18 +0800
Message-ID: <1521599960-34381-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

commit c420c1e4db22 ("clk: rockchip: Prevent calculating mmc phase if
clock rate is zero") catches some gremlins for clk-rk3328.c that the
parents of MMC phase clock should be clk_{sdmmc, sdio, emmc}, but not
sclk_{sdmmc, sdio, emmc}.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/clk/rockchip/clk-rk3328.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index f680b42..252366a 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -810,24 +810,24 @@ enum rk3328_plls {
 	GATE(0, "pclk_phy_niu", "pclk_phy_pre", 0, RK3328_CLKGATE_CON(15), 15, GFLAGS),
 
 	/* PD_MMC */
-	MMC(SCLK_SDMMC_DRV, "sdmmc_drv", "sclk_sdmmc",
+	MMC(SCLK_SDMMC_DRV, "sdmmc_drv", "clk_sdmmc",
 	    RK3328_SDMMC_CON0, 1),
-	MMC(SCLK_SDMMC_SAMPLE, "sdmmc_sample", "sclk_sdmmc",
+	MMC(SCLK_SDMMC_SAMPLE, "sdmmc_sample", "clk_sdmmc",
 	    RK3328_SDMMC_CON1, 1),
 
-	MMC(SCLK_SDIO_DRV, "sdio_drv", "sclk_sdio",
+	MMC(SCLK_SDIO_DRV, "sdio_drv", "clk_sdio",
 	    RK3328_SDIO_CON0, 1),
-	MMC(SCLK_SDIO_SAMPLE, "sdio_sample", "sclk_sdio",
+	MMC(SCLK_SDIO_SAMPLE, "sdio_sample", "clk_sdio",
 	    RK3328_SDIO_CON1, 1),
 
-	MMC(SCLK_EMMC_DRV, "emmc_drv", "sclk_emmc",
+	MMC(SCLK_EMMC_DRV, "emmc_drv", "clk_emmc",
 	    RK3328_EMMC_CON0, 1),
-	MMC(SCLK_EMMC_SAMPLE, "emmc_sample", "sclk_emmc",
+	MMC(SCLK_EMMC_SAMPLE, "emmc_sample", "clk_emmc",
 	    RK3328_EMMC_CON1, 1),
 
-	MMC(SCLK_SDMMC_EXT_DRV, "sdmmc_ext_drv", "sclk_sdmmc_ext",
+	MMC(SCLK_SDMMC_EXT_DRV, "sdmmc_ext_drv", "clk_sdmmc_ext",
 	    RK3328_SDMMC_EXT_CON0, 1),
-	MMC(SCLK_SDMMC_EXT_SAMPLE, "sdmmc_ext_sample", "sclk_sdmmc_ext",
+	MMC(SCLK_SDMMC_EXT_SAMPLE, "sdmmc_ext_sample", "clk_sdmmc_ext",
 	    RK3328_SDMMC_EXT_CON1, 1),
 };
 
-- 
1.9.1
