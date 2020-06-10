From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3] mmc: sdhci: Fix HISPD bit handling
Date: Wed, 10 Jun 2020 17:13:47 +0530
Message-ID: <20200610114347.118501-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Peng Fan <peng.fan-3arQi8VN3Tc@public.gmane.org>, Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Marc Zyngier <maz-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
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

Cc: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Peng Fan <peng.fan-3arQi8VN3Tc@public.gmane.org>
Reviewed-by: Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Tested-by: Marc Zyngier <maz-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> # nanopc-t4
Tested-by: Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> # roc-rk3399-pc
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v3:
- use && for quirk check.

 drivers/mmc/sdhci.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
index 92cc8434af..a7db278a0e 100644
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
+	if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) &&
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
