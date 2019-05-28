From: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
Date: Tue, 28 May 2019 12:18:33 +0000 (UTC)
Message-ID: <20190528121833.B45F06087F@smtp.codeaurora.org>
References: <20190517225420.176893-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190517225420.176893-2-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>, Arend van Spriel <arend.vanspriel@broadcom.com>, linux-rockchip@lists.infradead.org, Double Lo <double.lo@cypress.com>, briannorris@chromium.org, Madhan Mohan R <madhanmohan.r@cypress.com>, mka@chromium.org, Wright Feng <wright.feng@cypress.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Douglas Anderson <dianders@chromium.org>, brcm80211-dev-list.pdl@broadcom.com, Franky Lin <franky.lin@broadcom.com>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, Madhan Mohan R <MadhanMohan.R@cypress.com>, Hante Meuleman <hante.meuleman@broadcom.com>, Naveen Gupta <naveen.gupta@cypress.com>, brcm80211-dev-list@cypress.com, YueHaibing <yuehaibing@huawei.com>
List-Id: linux-rockchip.vger.kernel.org

Douglas Anderson <dianders@chromium.org> wrote:

> In commit 29f6589140a1 ("brcmfmac: disable command decode in
> sdio_aos") we disabled something called "command decode in sdio_aos"
> for a whole bunch of Broadcom SDIO WiFi parts.
> 
> After that patch landed I find that my kernel log on
> rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
>   brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110
> 
> This seems to happen every time the Broadcom WiFi transitions out of
> sleep mode.  Reverting the part of the commit that affects the WiFi on
> my boards fixes the problem for me, so that's what this patch does.
> 
> Note that, in general, the justification in the original commit seemed
> a little weak.  It looked like someone was testing on a SD card
> controller that would sometimes die if there were CRC errors on the
> bus.  This used to happen back in early days of dw_mmc (the controller
> on my boards), but we fixed it.  Disabling a feature on all boards
> just because one SD card controller is broken seems bad.  ...so
> instead of just this patch possibly the right thing to do is to fully
> revert the original commit.
> 
> Fixes: 29f6589140a1 ("brcmfmac: disable command decode in sdio_aos")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

I don't see patch 2 in patchwork and I assume discussion continues.
Please resend if/when I need to apply something.

2 patches set to Changes Requested.

10948785 [1/3] brcmfmac: re-enable command decode in sdio_aos for BRCM 4354
10948777 [3/3] brcmfmac: sdio: Disable auto-tuning around commands expected to fail

-- 
https://patchwork.kernel.org/patch/10948785/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
