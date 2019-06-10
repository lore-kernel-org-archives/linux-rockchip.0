From: "Hunter, Adrian" <adrian.hunter@intel.com>
Subject: RE: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Date: Mon, 10 Jun 2019 08:56:48 +0000
Message-ID: <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190607223716.119277-4-dianders@chromium.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Double Lo <double.lo@cypress.com>, "briannorris@chromium.org" <briannorris@chromium.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Naveen Gupta <naveen.gupta@cypress.com>, Madhan Mohan R <madhanmohan.r@cypress.com>, "mka@chromium.org" <mka@chromium.org>, Wright Feng <wright.feng@cypress.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>, Franky Lin <franky.lin@broadcom.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Madhan Mohan R <MadhanMohan.R@>
List-Id: linux-rockchip.vger.kernel.org

> -----Original Message-----
> From: Douglas Anderson [mailto:dianders@chromium.org]
> Sent: Saturday, June 8, 2019 1:37 AM
> To: Ulf Hansson <ulf.hansson@linaro.org>; Kalle Valo
> <kvalo@codeaurora.org>; Hunter, Adrian <adrian.hunter@intel.com>; Arend
> van Spriel <arend.vanspriel@broadcom.com>
> Cc: brcm80211-dev-list.pdl@broadcom.com; linux-
> rockchip@lists.infradead.org; Double Lo <double.lo@cypress.com>;
> briannorris@chromium.org; linux-wireless@vger.kernel.org; Naveen Gupta
> <naveen.gupta@cypress.com>; Madhan Mohan R
> <madhanmohan.r@cypress.com>; mka@chromium.org; Wright Feng
> <wright.feng@cypress.com>; Chi-Hsien Lin <chi-hsien.lin@cypress.com>;
> netdev@vger.kernel.org; brcm80211-dev-list@cypress.com; Douglas
> Anderson <dianders@chromium.org>; Franky Lin
> <franky.lin@broadcom.com>; linux-kernel@vger.kernel.org; Madhan Mohan
> R <MadhanMohan.R@cypress.com>; Hante Meuleman
> <hante.meuleman@broadcom.com>; YueHaibing
> <yuehaibing@huawei.com>; David S. Miller <davem@davemloft.net>
> Subject: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
> commands expected to fail
> 
> There are certain cases, notably when transitioning between sleep and active
> state, when Broadcom SDIO WiFi cards will produce errors on the SDIO bus.
> This is evident from the source code where you can see that we try
> commands in a loop until we either get success or we've tried too many
> times.  The comment in the code reinforces this by saying "just one write
> attempt may fail"
> 
> Unfortunately these failures sometimes end up causing an "-EILSEQ"
> back to the core which triggers a retuning of the SDIO card and that blocks all
> traffic to the card until it's done.
> 
> Let's disable retuning around the commands we expect might fail.
> 
> Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
> Changes in v3:
> - Expect errors for all of brcmf_sdio_kso_control() (Adrian).
> 
> Changes in v2: None
> 
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> index 4a750838d8cd..4040aae1f9ed 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> @@ -16,6 +16,7 @@
>  #include <linux/mmc/sdio_ids.h>
>  #include <linux/mmc/sdio_func.h>
>  #include <linux/mmc/card.h>
> +#include <linux/mmc/core.h>

SDIO function drivers should not really include linux/mmc/core.h
(Also don't know why linux/mmc/card.h is included)

>  #include <linux/semaphore.h>
>  #include <linux/firmware.h>
>  #include <linux/module.h>
> @@ -667,6 +668,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool
> on)
> 
>  	brcmf_dbg(TRACE, "Enter: on=%d\n", on);
> 
> +	mmc_expect_errors_begin(bus->sdiodev->func1->card->host);
> +
>  	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
>  	/* 1st KSO write goes to AOS wake up core if device is asleep  */
>  	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR,
> wr_val, &err); @@ -727,6 +730,8 @@ brcmf_sdio_kso_control(struct
> brcmf_sdio *bus, bool on)
>  	if (try_cnt > MAX_KSO_ATTEMPTS)
>  		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
> 
> +	mmc_expect_errors_end(bus->sdiodev->func1->card->host);
> +
>  	return err;
>  }
> 
> --
> 2.22.0.rc2.383.gf4fbbf30c2-goog
