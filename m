From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Date: Fri, 7 Jun 2019 11:06:16 -0700
Message-ID: <CAD=FV=XVmCYWe9rtTFakq8yu67R-97EPyAHWck+o3dRXzHCchQ@mail.gmail.com>
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org> <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
 <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
 <16b305a7110.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <ff0e7b7a-6a58-8bec-b182-944a8b64236d@intel.com> <16b3223dea0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <16b3223dea0.2764.9b12b7fc0a3841636cfb5e919b41b954-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Arend Van Spriel <arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Cc: Adrian Hunter <adrian.hunter-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Ulf Hansson <ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Double Lo <double.lo-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-wireless <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Naveen Gupta <naveen.gupta-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Madhan Mohan R <madhanmohan.r-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Wright Feng <wright.feng-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, Chi-Hsien Lin <chi-hsien.lin-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, netdev <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, brcm80211-dev-list <brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Franky Lin <franky.lin-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Jun 7, 2019 at 6:32 AM Arend Van Spriel
<arend.vanspriel-dY08KVG/lbpWk0Htik3J/w@public.gmane.org> wrote:
>
> On June 7, 2019 2:40:04 PM Adrian Hunter <adrian.hunter-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org> wrote:
>
> > On 7/06/19 8:12 AM, Arend Van Spriel wrote:
> >> On June 6, 2019 11:37:22 PM Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> >>>
> >>> In the case of dw_mmc, which I'm most familiar with, we don't have any
> >>> sort of automated or timed-based retuning.  ...so we'll only re-tune
> >>> when we see the CRC error.  If I'm understanding things correctly then
> >>> that for dw_mmc my solution and yours behave the same.  That means the
> >>> difference is how we deal with other retuning requests, either ones
> >>> that come about because of an interrupt that the host controller
> >>> provided or because of a timer.  Did I get that right?
> >>
> >> Right.
> >>
> >>> ...and I guess the reason we have to deal specially with these cases
> >>> is because any time that SDIO card is "sleeping" we don't want to
> >>> retune because it won't work.  Right?  NOTE: the solution that would
> >>> come to my mind first to solve this would be to hold the retuning for
> >>> the whole time that the card was sleeping and then release it once the
> >>> card was awake again.  ...but I guess we don't truly need to do that
> >>> because tuning only happens as a side effect of sending a command to
> >>> the card and the only command we send to the card is the "wake up"
> >>> command.  That's why your solution to hold tuning while sending the
> >>> "wake up" command works, right?
> >>
> >> Yup.
> >>
> >>> ---
> >>>
> >>> OK, so assuming all the above is correct, I feel like we're actually
> >>> solving two problems and in fact I believe we actually need both our
> >>> approaches to solve everything correctly.  With just your patch in
> >>> place there's a problem because we will clobber any external retuning
> >>> requests that happened while we were waking up the card.  AKA, imagine
> >>> this:
> >>>
> >>> A) brcmf_sdio_kso_control(on=True) gets called; need_retune starts as 0
> >>>
> >>> B) We call sdio_retune_hold_now()
> >>>
> >>> C) A retuning timer goes off or the SD Host controller tells us to retune
> >>>
> >>> D) We get to the end of brcmf_sdio_kso_control() and clear the "retune
> >>> needed" since need_retune was 0 at the start.
> >>>
> >>> ...so we dropped the retuning request from C), right?
> >>>
> >>>
> >>> What we truly need is:
> >>>
> >>> 1. CRC errors shouldn't trigger a retuning request when we're in
> >>> brcmf_sdio_kso_control()
> >>>
> >>> 2. A separate patch that holds any retuning requests while the SDIO
> >>> card is off.  This patch _shouldn't_ do any clearing of retuning
> >>> requests, just defer them.
> >>>
> >>>
> >>> Does that make sense to you?  If so, I can try to code it up...
> >>
> >> FWIW it does make sense to me. However, I am still not sure if our sdio
> >> hardware supports retuning. Have to track down an asic designer who can tell
> >> or dive into vhdl myself.
> >
> > The card supports re-tuning if is handles CMD19, which it does.  It is not
> > the card that does any tuning, only the host.  The card just helps by
> > providing a known data pattern in response to CMD19.  It can be that a card
> > provides good enough signals that the host should not need to re-tune.  I
> > don't know if that can be affected by the board design though.
>
> Right. I know it supports initial tuning, but I'm not sure about subsequent
> retuning initiated by the host controller.

My evidence says that it supports subsequent tuning.  In fact, without
this series my logs would be filled with:

  dwmmc_rockchip ff0d0000.dwmmc: Successfully tuned phase to XYZ

...where the phase varied by a few degrees each time.  AKA: it was
retuning over and over again and getting sane results which implies
that the tuning was working just fine.

The whole point of this series is not that the retuning was actually
broken or anything it was just pointless and blocking the bus while it
happened.  On rk3288 dw_mmc ports we also currently do pretty
extensive tuning, trying _lots_ of phases.  Thus the re-tuning was
blocking the bus for a significant amount of time.

-Doug
