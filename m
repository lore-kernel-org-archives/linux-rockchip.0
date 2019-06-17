From: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v4 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Date: Mon, 17 Jun 2019 11:33:14 +0300
Message-ID: <36770536-eb30-59ba-3f4e-b3640fc27408@intel.com>
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-4-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190613234153.59309-4-dianders@chromium.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: brcm80211-dev-list.pdl@broadcom.com, linux-rockchip@lists.infradead.org, Double Lo <double.lo@cypress.com>, briannorris@chromium.org, linux-wireless@vger.kernel.org, Naveen Gupta <naveen.gupta@cypress.com>, Madhan Mohan R <madhanmohan.r@cypress.com>, mka@chromium.org, Wright Feng <wright.feng@cypress.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, netdev@vger.kernel.org, brcm80211-dev-list@cypress.com, Hans de Goede <hdegoede@redhat.com>, Franky Lin <franky.lin@broadcom.com>, linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>, YueHaibing <yuehaibing@huawei.com>, "David S. Miller" <davem@davemloft.net>
List-Id: linux-rockchip.vger.kernel.org

On 14/06/19 2:41 AM, Douglas Anderson wrote:
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
> 
> Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
> 
> Changes in v4:
> - Adjust to API rename (Adrian, Ulf).
> 
> Changes in v3:
> - Expect errors for all of brcmf_sdio_kso_control() (Adrian).
> 
> Changes in v2: None
> 
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> index 4a750838d8cd..ee76593259a7 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> @@ -667,6 +667,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
>  
>  	brcmf_dbg(TRACE, "Enter: on=%d\n", on);
>  
> +	sdio_retune_crc_disable(bus->sdiodev->func1);
> +
>  	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
>  	/* 1st KSO write goes to AOS wake up core if device is asleep  */
>  	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);
> @@ -727,6 +729,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
>  	if (try_cnt > MAX_KSO_ATTEMPTS)
>  		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
>  
> +	sdio_retune_crc_enable(bus->sdiodev->func1);
> +
>  	return err;
>  }
>  
> 
