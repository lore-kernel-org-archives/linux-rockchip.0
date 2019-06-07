From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around commands
 expected to fail
Date: Fri,  7 Jun 2019 15:37:14 -0700
Message-ID: <20190607223716.119277-4-dianders@chromium.org>
References: <20190607223716.119277-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190607223716.119277-1-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ulf Hansson <ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Adrian Hunter <adrian.hunter-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Arend van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Cc: Madhan Mohan R <MadhanMohan.R-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, YueHaibing <yuehaibing-hv44wF8Li93QT0dZR+AlfA@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Hante Meuleman <hante.meuleman-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Double Lo <double.lo-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org, Naveen Gupta <naveen.gupta-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

There are certain cases, notably when transitioning between sleep and
active state, when Broadcom SDIO WiFi cards will produce errors on the
SDIO bus.  This is evident from the source code where you can see that
we try commands in a loop until we either get success or we've tried
too many times.  The comment in the code reinforces this by saying
"just one write attempt may fail"

Unfortunately these failures sometimes end up causing an "-EILSEQ"
back to the core which triggers a retuning of the SDIO card and that
blocks all traffic to the card until it's done.

Let's disable retuning around the commands we expect might fail.

Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---

Changes in v3:
- Expect errors for all of brcmf_sdio_kso_control() (Adrian).

Changes in v2: None

 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 4a750838d8cd..4040aae1f9ed 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -16,6 +16,7 @@
 #include <linux/mmc/sdio_ids.h>
 #include <linux/mmc/sdio_func.h>
 #include <linux/mmc/card.h>
+#include <linux/mmc/core.h>
 #include <linux/semaphore.h>
 #include <linux/firmware.h>
 #include <linux/module.h>
@@ -667,6 +668,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 
 	brcmf_dbg(TRACE, "Enter: on=%d\n", on);
 
+	mmc_expect_errors_begin(bus->sdiodev->func1->card->host);
+
 	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
 	/* 1st KSO write goes to AOS wake up core if device is asleep  */
 	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);
@@ -727,6 +730,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 	if (try_cnt > MAX_KSO_ATTEMPTS)
 		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
 
+	mmc_expect_errors_end(bus->sdiodev->func1->card->host);
+
 	return err;
 }
 
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog
