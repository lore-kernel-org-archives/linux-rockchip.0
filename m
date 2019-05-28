From: Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
Date: Tue, 28 May 2019 12:18:33 +0000 (UTC)
Message-ID: <20190528121833.7D3A460A00@smtp.codeaurora.org>
References: <20190517225420.176893-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190517225420.176893-2-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Madhan Mohan R <MadhanMohan.R-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Ulf Hansson <ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Hante Meuleman <hante.meuleman-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Arend van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, YueHaibing <yuehaibing-hv44wF8Li93QT0dZR+AlfA@public.gmane.org>, Adrian Hunter <adrian.hunter-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Naveen Gupta <naveen.gupta-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org, Double Lo <double.lo-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:

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
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

I don't see patch 2 in patchwork and I assume discussion continues.
Please resend if/when I need to apply something.

2 patches set to Changes Requested.

10948785 [1/3] brcmfmac: re-enable command decode in sdio_aos for BRCM 4354
10948777 [3/3] brcmfmac: sdio: Disable auto-tuning around commands expected to fail

-- 
https://patchwork.kernel.org/patch/10948785/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
