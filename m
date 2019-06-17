From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: [PATCH v4 5/5] brcmfmac: sdio: Don't tune while the card is off
Date: Mon, 17 Jun 2019 12:52:51 +0200
Message-ID: <f0dc6ef8-b339-8656-14d6-cf7c4e872b22@broadcom.com>
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-6-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <20190613234153.59309-6-dianders@chromium.org>
Content-Language: en-US
Sender: netdev-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, Adrian Hunter <adrian.hunter@intel.com>
Cc: brcm80211-dev-list.pdl@broadcom.com, linux-rockchip@lists.infradead.org, Double Lo <double.lo@cypress.com>, briannorris@chromium.org, linux-wireless@vger.kernel.org, Naveen Gupta <naveen.gupta@cypress.com>, Madhan Mohan R <madhanmohan.r@cypress.com>, mka@chromium.org, Wright Feng <wright.feng@cypress.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, netdev@vger.kernel.org, brcm80211-dev-list@cypress.com, Franky Lin <franky.lin@broadcom.com>, linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>, YueHaibing <yuehaibing@huawei.com>, "David S. Miller" <davem@davemloft.net>
List-Id: linux-rockchip.vger.kernel.org

On 6/14/2019 1:41 AM, Douglas Anderson wrote:
> When Broadcom SDIO cards are idled they go to sleep and a whole
> separate subsystem takes over their SDIO communication.  This is the
> Always-On-Subsystem (AOS) and it can't handle tuning requests.
> 
> Specifically, as tested on rk3288-veyron-minnie (which reports having
> BCM4354/1 in dmesg), if I force a retune in brcmf_sdio_kso_control()
> when "on = 1" (aka we're transition from sleep to wake) by whacking:
>    bus->sdiodev->func1->card->host->need_retune = 1
> ...then I can often see tuning fail.  In this case dw_mmc reports "All
> phases bad!").  Note that I don't get 100% failure, presumably because
> sometimes the card itself has already transitioned away from the AOS
> itself by the time we try to wake it up.  If I force retuning when "on
> = 0" (AKA force retuning right before sending the command to go to
> sleep) then retuning is always OK.
> 
> NOTE: we need _both_ this patch and the patch to avoid triggering
> tuning due to CRC errors in the sleep/wake transition, AKA ("brcmfmac:
> sdio: Disable auto-tuning around commands expected to fail").  Though
> both patches handle issues with Broadcom's AOS, the problems are
> distinct:
> 1. We want to defer (but not ignore) asynchronous (like
>     timer-requested) tuning requests till the card is awake.  However,
>     we want to ignore CRC errors during the transition, we don't want
>     to queue deferred tuning request.
> 2. You could imagine that the AOS could implement retuning but we
>     could still get errors while transitioning in and out of the AOS.
>     Similarly you could imagine a seamless transition into and out of
>     the AOS (with no CRC errors) even if the AOS couldn't handle
>     tuning.
> 
> ALSO NOTE: presumably there is never a desperate need to retune in
> order to wake up the card, since doing so is impossible.  Luckily the
> only way the card can get into sleep state is if we had a good enough
> tuning to send it a sleep command, so presumably that "good enough"
> tuning is enough to wake us up, at least with a few retries.

The term "sleep command" is a bit confusing. There actually is a CMD14 
defined in the eSD spec, but that is not what we are using (unless we 
program the chip to do so) here. It is simply a specific register access 
using CMD52.

Apart from that....

Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

I think the stable version is mostly determined by change in MMC/SDIO so 
4.18 as mentioned Adrian seems most sensible. bcm4354 support was 
introduced in 3.14 and there were some earlier devices (4335) using same 
sleep mechanism.

Regards,
Arend
