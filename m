From: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Date: Wed, 12 Jun 2019 12:10:51 +0200
Message-ID: <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org> <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
 <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: "Hunter, Adrian" <adrian.hunter@intel.com>, Kalle Valo <kvalo@codeaurora.org>, Arend van Spriel <arend.vanspriel@broadcom.com>, "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Double Lo <double.lo@cypress.com>, "briannorris@chromium.org" <briannorris@chromium.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>, Naveen Gupta <naveen.gupta@cypress.com>, Madhan Mohan R <madhanmohan.r@cypress.com>, "mka@chromium.org" <mka@chromium.org>, Wright Feng <wright.feng@cypress.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 10 Jun 2019 at 18:50, Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Mon, Jun 10, 2019 at 1:56 AM Hunter, Adrian <adrian.hunter@intel.com> wrote:
> >
> > > --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> > > +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> > > @@ -16,6 +16,7 @@
> > >  #include <linux/mmc/sdio_ids.h>
> > >  #include <linux/mmc/sdio_func.h>
> > >  #include <linux/mmc/card.h>
> > > +#include <linux/mmc/core.h>
> >
> > SDIO function drivers should not really include linux/mmc/core.h
> > (Also don't know why linux/mmc/card.h is included)
>
> OK, so I guess you're requesting an extra level of "sdio_" wrappers
> for all the functions I need to call.  I don't think the wrappers buy
> us a ton other than to abstract things a little bit and make it look
> prettier.  :-)  ...but certainly I can code that up if that's what
> everyone wants.

Are the new code you refer to going to be used for anything else but
SDIO? If not, please put them in the sdio specific headers instead.

BTW, apologize for not looking at this series any earlier, but I will
come to it soon.

>
> Just to make sure, I looked in "drivers/net/wireless/" and I do see
> quite a few instances of "mmc_" functions being used.  That doesn't
> mean all these instances are correct but it does appear to be
> commonplace.  Selected examples:
>
> drivers/net/wireless/ath/ath10k/sdio.c:
>   ret = mmc_hw_reset(ar_sdio->func->card->host);

mmc_hw_reset() is already an exported function, used by the mmc block
layer. So I think this is okay.

>
> drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c:
>   mmc_set_data_timeout(md, func->card);
>   mmc_wait_for_req(func->card->host, mr);

These are not okay, none of these things calls should really be done
from an SDIO func driver.

It tells me that the func driver is a doing workaround for something
that should be managed in a common way.

>
> drivers/net/wireless/marvell/mwifiex/sdio.c:
>   mmc_hw_reset(func->card->host);

Okay.

>
> drivers/net/wireless/rsi/rsi_91x_sdio.c:
>   err = mmc_wait_for_cmd(host, &cmd, 3);

Not okay.

>
>
> ...anyway, I'll give it a few days and if nobody else chimes in then
> I'll assume you indeed want "sdio_" wrappers for things and I'll post
> a v4.  If patch #1 happens to land in the meantime then I won't
> object.  ;-)

Adrian has a very good point. We need to strive to avoid exporting
APIs to here and there and just trust that they will be used wisely.

If the above calls to mmc_wait_for_req|cmd() and
mmc_set_data_timeout() could have been avoided, we would probably have
a more proper solution by now.

Kind regards
Uffe
