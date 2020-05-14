From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] Revert "clk: rockchip: fix wrong mmc sample phase shift for rk3328"
Date: Thu, 14 May 2020 13:58:14 +0100
Message-ID: <e563eea358181446dc42c99e842c33f7ce911936.1589460539.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This reverts commit 82f4b67f018c88a7cc9337f0067ed3d6ec352648.

According to a subsequent revert in the vendor kernel, the original
change was based on unclear documentation and was in fact incorrect.

Emprically, my board's SD card at 50MHz and eMMC at 200MHZ seem to get
lucky with a phase where it had no impact, but limiting the eMMC clock
to 150MHz to match the nominal limit for the I/O pins made it virtually
unusable, constantly throwing errors and retuning. With this revert, it
starts behaving perfectly at 150MHz too.

Fixes: 82f4b67f018c ("clk: rockchip: fix wrong mmc sample phase shift for rk3328")
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/clk/rockchip/clk-rk3328.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index c186a1985bf4..2429b7c2a8b3 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -808,22 +808,22 @@ static struct rockchip_clk_branch rk3328_clk_branches[] __initdata = {
 	MMC(SCLK_SDMMC_DRV, "sdmmc_drv", "clk_sdmmc",
 	    RK3328_SDMMC_CON0, 1),
 	MMC(SCLK_SDMMC_SAMPLE, "sdmmc_sample", "clk_sdmmc",
-	    RK3328_SDMMC_CON1, 0),
+	    RK3328_SDMMC_CON1, 1),
 
 	MMC(SCLK_SDIO_DRV, "sdio_drv", "clk_sdio",
 	    RK3328_SDIO_CON0, 1),
 	MMC(SCLK_SDIO_SAMPLE, "sdio_sample", "clk_sdio",
-	    RK3328_SDIO_CON1, 0),
+	    RK3328_SDIO_CON1, 1),
 
 	MMC(SCLK_EMMC_DRV, "emmc_drv", "clk_emmc",
 	    RK3328_EMMC_CON0, 1),
 	MMC(SCLK_EMMC_SAMPLE, "emmc_sample", "clk_emmc",
-	    RK3328_EMMC_CON1, 0),
+	    RK3328_EMMC_CON1, 1),
 
 	MMC(SCLK_SDMMC_EXT_DRV, "sdmmc_ext_drv", "clk_sdmmc_ext",
 	    RK3328_SDMMC_EXT_CON0, 1),
 	MMC(SCLK_SDMMC_EXT_SAMPLE, "sdmmc_ext_sample", "clk_sdmmc_ext",
-	    RK3328_SDMMC_EXT_CON1, 0),
+	    RK3328_SDMMC_EXT_CON1, 1),
 };
 
 static const char *const rk3328_critical_clocks[] __initconst = {
-- 
2.23.0.dirty
