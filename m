From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for BRCM 4354
Date: Tue, 04 Jun 2019 18:48:57 +0200
Message-ID: <16b2364c8c0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
References: <20190517225420.176893-2-dianders@chromium.org>
 <20190528121833.7D3A460A00@smtp.codeaurora.org>
 <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
 <16aff33f3e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <16aff358a20.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <40587a64-490b-8b1e-8a11-1e1aebdab2f3@cypress.com>
 <CAD=FV=Wr4WsO7Xmei5GB4X91L_sDN331B1_oH+CPZOeFUkxyMg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=Wr4WsO7Xmei5GB4X91L_sDN331B1_oH+CPZOeFUkxyMg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>, Wright Feng <Wright.Feng@cypress.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, Madhan Mohan R <MadhanMohan.R@cypress.com>, Ulf Hansson <ulf.hansson@linaro.org>, LKML <linux-kernel@vger.kernel.org>, Hante Meuleman <hante.meuleman@broadcom.com>, "David S. Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>, Chi-Hsien Lin <Chi-Hsien.Lin@cypress.com>, Brian Norris <briannorris@chromium.org>, linux-wireless <linux-wireless@vger.kernel.org>, YueHaibing <yuehaibing@huawei.com>, Adrian Hunter <adrian.hunter@intel.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, brcm80211-dev-list.pdl@broadcom.com, Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <Naveen.Gupta@cypress.com>, brcm80211-dev-list <brcm80211-dev-list@cypress.com>, Double Lo <Double.Lo@cypress.>
List-Id: linux-rockchip.vger.kernel.org

On June 4, 2019 6:01:26 PM Doug Anderson <dianders@chromium.org> wrote:

> Hi,
>
> On Mon, Jun 3, 2019 at 8:20 PM Wright Feng <Wright.Feng@cypress.com> wrote:
>>
>> On 2019/5/29 上午 12:11, Arend Van Spriel wrote:
>> > On May 28, 2019 6:09:21 PM Arend Van Spriel
>> > <arend.vanspriel@broadcom.com> wrote:
>> >
>> >> On May 28, 2019 5:52:10 PM Doug Anderson <dianders@chromium.org> wrote:
>> >>
>> >>> Hi,
>> >>>
>> >>> On Tue, May 28, 2019 at 5:18 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>> >>>>
>> >>>> Douglas Anderson <dianders@chromium.org> wrote:
>> >>>>
>> >>>> > In commit 29f6589140a1 ("brcmfmac: disable command decode in
>> >>>> > sdio_aos") we disabled something called "command decode in sdio_aos"
>> >>>> > for a whole bunch of Broadcom SDIO WiFi parts.
>> >>>> >
>> >>>> > After that patch landed I find that my kernel log on
>> >>>> > rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
>> >>>> >   brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep
>> >>>> state -110
>> >>>> >
>> >>>> > This seems to happen every time the Broadcom WiFi transitions out of
>> >>>> > sleep mode.  Reverting the part of the commit that affects the
>> >>>> WiFi on
>> >>>> > my boards fixes the problem for me, so that's what this patch does.
>> >>>> >
>> >>>> > Note that, in general, the justification in the original commit
>> >>>> seemed
>> >>>> > a little weak.  It looked like someone was testing on a SD card
>> >>>> > controller that would sometimes die if there were CRC errors on the
>> >>>> > bus.  This used to happen back in early days of dw_mmc (the
>> >>>> controller
>> >>>> > on my boards), but we fixed it.  Disabling a feature on all boards
>> >>>> > just because one SD card controller is broken seems bad.  ...so
>> >>>> > instead of just this patch possibly the right thing to do is to fully
>> >>>> > revert the original commit.
>> >>>> >
>> Since the commit 29f6589140a1 ("brcmfmac: disable command decode in
>> sdio_aos") causes the regression on other SD card controller, it is
>> better to revert it as you mentioned.
>> Actually, without the commit, we hit MMC timeout(-110) and hanged
>> instead of CRC error in our test.
>
> Any chance I can convince you to provide some official tags like
> Reviewed-by or Tested-by on the revert?
>
>> Would you please share the analysis of
>> dw_mmc issue which you fixed? We'd like to compare whether we got the
>> same issue.
>
> I'm not sure there's any single magic commit I can point to.  When I
> started working on dw_mmc it was terrible at handling error cases and
> would often crash / hang / stop all future communication upon certain
> classes or efforts.  There were dozens of problems we've had to fix
> over the years.  These problems showed up when we started supporting
> HS200 / UHS since the tuning phase really stress the error handling of
> the host controller.
>
> I searched and by the time we were supporting Broadcom SDIO cards the
> error handling was already pretty good.  ...but if we hadn't already
> made the error handling more robust for UHS tuning then we would have
> definitely hit these types of problems.  The only problem I remember
> having to solve in dw_mmc that was unique to Broadcom was commit
> 0bdbd0e88cf6 ("mmc: dw_mmc: Don't start commands while busy").  Any
> chance that could be what you're hitting?

That is indeed an issue I recall resulting in -110 errors.

> What host controller are you having problems with?

Knowing that will be a good start.

Regards,
Arend
