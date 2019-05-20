From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
Date: Mon, 20 May 2019 10:09:39 +0200
Message-ID: <e3f54bcb-8d10-1336-1458-2bd11cfc1010@broadcom.com>
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <20190517225420.176893-2-dianders@chromium.org>
Content-Language: en-US
Sender: netdev-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-rockchip@lists.infradead.org, Double Lo <double.lo@cypress.com>, briannorris@chromium.org, Madhan Mohan R <madhanmohan.r@cypress.com>, mka@chromium.org, Wright Feng <wright.feng@cypress.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, brcm80211-dev-list.pdl@broadcom.com, Franky Lin <franky.lin@broadcom.com>, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>, Naveen Gupta <naveen.gupta@cypress.com>, brcm80211-dev-list@cypress.com, YueHaibing <yuehaibing@huawei.com>, "David S. Miller" <davem@davemloft.net>
List-Id: linux-rockchip.vger.kernel.org



On 5/18/2019 12:54 AM, Douglas Anderson wrote:
> In commit 29f6589140a1 ("brcmfmac: disable command decode in
> sdio_aos") we disabled something called "command decode in sdio_aos"
> for a whole bunch of Broadcom SDIO WiFi parts.
> 
> After that patch landed I find that my kernel log on
> rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
>    brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110
> 
> This seems to happen every time the Broadcom WiFi transitions out of
> sleep mode.  Reverting the part of the commit that affects the WiFi on
> my boards fixes the problem for me, so that's what this patch does.

This sounds very similar to the issue we had during integration of wifi 
on rk3288 chromebooks years ago.

> Note that, in general, the justification in the original commit seemed
> a little weak.  It looked like someone was testing on a SD card
> controller that would sometimes die if there were CRC errors on the
> bus.  This used to happen back in early days of dw_mmc (the controller
> on my boards), but we fixed it.  Disabling a feature on all boards
> just because one SD card controller is broken seems bad.  ...so
> instead of just this patch possibly the right thing to do is to fully
> revert the original commit.

I am leaning towards a full revert, but let's wait for more background info.

Regards,
Arend
