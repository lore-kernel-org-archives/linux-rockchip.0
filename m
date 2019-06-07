From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around commands expected to fail
Date: Fri, 07 Jun 2019 07:12:42 +0200
Message-ID: <16b305a7110.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org>
 <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
 <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>, Adrian Hunter <adrian.hunter@intel.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, brcm80211-dev-list.pdl@broadcom.com, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Double Lo <double.lo@cypress.com>, Brian Norris <briannorris@chromium.org>, linux-wireless <linux-wireless@vger.kernel.org>, Naveen Gupta <naveen.gupta@cypress.com>, Madhan Mohan R <madhanmohan.r@cypress.com>, Matthias Kaehlcke <mka@chromium.org>, Wright Feng <wright.feng@cypress.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, netdev <netdev@vger.kernel.org>, brcm80211-dev-list <brcm80211-dev-list@cypress.com>, "David S. Miller" <davem@davemloft.net>, Franky Lin <franky.lin@broadcom.com>, LKML <linux-kernel@vger.kernel.org>, Hante Meuleman <hante.meuleman@broadcom.>
List-Id: linux-rockchip.vger.kernel.org

On June 6, 2019 11:37:22 PM Doug Anderson <dianders@chromium.org> wrote:
>
> In the case of dw_mmc, which I'm most familiar with, we don't have any
> sort of automated or timed-based retuning.  ...so we'll only re-tune
> when we see the CRC error.  If I'm understanding things correctly then
> that for dw_mmc my solution and yours behave the same.  That means the
> difference is how we deal with other retuning requests, either ones
> that come about because of an interrupt that the host controller
> provided or because of a timer.  Did I get that right?

Right.

> ...and I guess the reason we have to deal specially with these cases
> is because any time that SDIO card is "sleeping" we don't want to
> retune because it won't work.  Right?  NOTE: the solution that would
> come to my mind first to solve this would be to hold the retuning for
> the whole time that the card was sleeping and then release it once the
> card was awake again.  ...but I guess we don't truly need to do that
> because tuning only happens as a side effect of sending a command to
> the card and the only command we send to the card is the "wake up"
> command.  That's why your solution to hold tuning while sending the
> "wake up" command works, right?

Yup.

> ---
>
> OK, so assuming all the above is correct, I feel like we're actually
> solving two problems and in fact I believe we actually need both our
> approaches to solve everything correctly.  With just your patch in
> place there's a problem because we will clobber any external retuning
> requests that happened while we were waking up the card.  AKA, imagine
> this:
>
> A) brcmf_sdio_kso_control(on=True) gets called; need_retune starts as 0
>
> B) We call sdio_retune_hold_now()
>
> C) A retuning timer goes off or the SD Host controller tells us to retune
>
> D) We get to the end of brcmf_sdio_kso_control() and clear the "retune
> needed" since need_retune was 0 at the start.
>
> ...so we dropped the retuning request from C), right?
>
>
> What we truly need is:
>
> 1. CRC errors shouldn't trigger a retuning request when we're in
> brcmf_sdio_kso_control()
>
> 2. A separate patch that holds any retuning requests while the SDIO
> card is off.  This patch _shouldn't_ do any clearing of retuning
> requests, just defer them.
>
>
> Does that make sense to you?  If so, I can try to code it up...

FWIW it does make sense to me. However, I am still not sure if our sdio 
hardware supports retuning. Have to track down an asic designer who can 
tell or dive into vhdl myself.

So I want to disable device sleep and trigger retuning through debugfs or 
some other hack.

Regards,
Arend
