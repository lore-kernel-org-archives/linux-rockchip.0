From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2] mmc: sdhci: Fix HISPD bit handling
Date: Tue,  9 Jun 2020 19:31:35 +0530
Message-ID: <20200609140135.131887-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Peng Fan <peng.fan@nxp.com>, Jaehoon Chung <jh80.chung@samsung.com>, Kever Yang <kever.yang@rock-chips.com>
Cc: sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

SDHCI HISPD bits need to be configured based on desired mmc
timings mode and some HISPD quirks.

So, handle the HISPD bit based on the mmc computed selected
mode(timing parameter) rather than fixed mmc card clock
frequency.

Linux handle the HISPD similar like this in below commit,

commit <501639bf2173> ("mmc: sdhci: fix SDHCI_QUIRK_NO_HISPD_BIT handling")

This eventually fixed the mmc write issue observed in
rk3399 sdhci controller.

Bug log for refernece,
=> gpt write mmc 0 $partitions
Writing GPT: mmc write failed
** Can't write to device 0 **
** Can't write to device 0 **
error!

Cc: Kever Yang <kever.yang@rock-chips.com>
Cc: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- collect Jaehoon R-b

 drivers/mmc/sdhci.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
index 92cc8434af..280b8c88eb 100644
--- a/drivers/mmc/sdhci.c
+++ b/drivers/mmc/sdhci.c
@@ -594,14 +594,21 @@ static int sdhci_set_ios(struct mmc *mmc)
 			ctrl &= ~SDHCI_CTRL_4BITBUS;
 	}
 
-	if (mmc->clock > 26000000)
-		ctrl |= SDHCI_CTRL_HISPD;
-	else
-		ctrl &= ~SDHCI_CTRL_HISPD;
-
-	if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
-	    (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
-		ctrl &= ~SDHCI_CTRL_HISPD;
+	if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
+	    !(host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE)) {
+		if (mmc->selected_mode == MMC_HS ||
+		    mmc->selected_mode == SD_HS ||
+		    mmc->selected_mode == MMC_DDR_52 ||
+		    mmc->selected_mode == MMC_HS_200 ||
+		    mmc->selected_mode == MMC_HS_400 ||
+		    mmc->selected_mode == UHS_SDR25 ||
+		    mmc->selected_mode == UHS_SDR50 ||
+		    mmc->selected_mode == UHS_SDR104 ||
+		    mmc->selected_mode == UHS_DDR50)
+			ctrl |= SDHCI_CTRL_HISPD;
+		else
+			ctrl &= ~SDHCI_CTRL_HISPD;
+	}
 
 	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
 
-- 
2.25.1
