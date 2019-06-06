From: Adrian Hunter <adrian.hunter-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Date: Thu, 6 Jun 2019 16:59:17 +0300
Message-ID: <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20190603183740.239031-4-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Content-Language: en-US
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Ulf Hansson <ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Arend van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Cc: brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Double Lo <double.lo-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Naveen Gupta <naveen.gupta-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Madhan Mohan R <madhanmohan.r-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Hante Meuleman <hante.meuleman-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, YueHaibing <yuehaibing-hv44wF8Li93QT0dZR+AlfA@public.gmane.org>, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 3/06/19 9:37 PM, Douglas Anderson wrote:
> There are certain cases, notably when transitioning between sleep and
> active state, when Broadcom SDIO WiFi cards will produce errors on the
> SDIO bus.  This is evident from the source code where you can see that
> we try commands in a loop until we either get success or we've tried
> too many times.  The comment in the code reinforces this by saying
> "just one write attempt may fail"
> 
> Unfortunately these failures sometimes end up causing an "-EILSEQ"
> back to the core which triggers a retuning of the SDIO card and that
> blocks all traffic to the card until it's done.
> 
> Let's disable retuning around the commands we expect might fail.

It seems to me that re-tuning needs to be prevented before the
first access otherwise it might be attempted there, and it needs
to continue to be prevented during the transition when it might
reasonably be expected to fail.

What about something along these lines:

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 4e15ea57d4f5..d932780ef56e 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -664,9 +664,18 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 	int err = 0;
 	int err_cnt = 0;
 	int try_cnt = 0;
+	int need_retune = 0;
+	bool retune_release = false;
 
 	brcmf_dbg(TRACE, "Enter: on=%d\n", on);
 
+	/* Cannot re-tune if device is asleep */
+	if (on) {
+		need_retune = sdio_retune_get_needed(bus->sdiodev->func1); // TODO: host->can_retune ? host->need_retune : 0
+		sdio_retune_hold_now(bus->sdiodev->func1); // TODO: add sdio_retune_hold_now()
+		retune_release = true;
+	}
+
 	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
 	/* 1st KSO write goes to AOS wake up core if device is asleep  */
 	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);
@@ -711,8 +720,16 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 			err_cnt = 0;
 		}
 		/* bail out upon subsequent access errors */
-		if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS))
-			break;
+		if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS)) {
+			if (!retune_release)
+				break;
+			/*
+			 * Allow one more retry with re-tuning released in case
+			 * it helps.
+			 */
+			sdio_retune_release(bus->sdiodev->func1);
+			retune_release = false;
+		}
 
 		udelay(KSO_WAIT_US);
 		brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val,
@@ -727,6 +744,18 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 	if (try_cnt > MAX_KSO_ATTEMPTS)
 		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
 
+	if (retune_release) {
+		/*
+		 * CRC errors are not unexpected during the transition but they
+		 * also trigger re-tuning. Clear that here to avoid an
+		 * unnecessary re-tune if it wasn't already triggered to start
+		 * with.
+		 */
+		if (!need_retune)
+			sdio_retune_clear_needed(bus->sdiodev->func1); // TODO: host->need_retune = 0
+		sdio_retune_release(bus->sdiodev->func1); // TODO: add sdio_retune_release()
+	}
+
 	return err;
 }
 
