From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Date: Fri, 7 Jun 2019 11:00:02 -0700
Message-ID: <CAD=FV=WGxXvcCuuspAkHY=m+vhQ+R96i4HCBZNCO1-jQ5U9+3Q@mail.gmail.com>
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org> <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
 <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com> <2e9f80af-aa26-5590-9ff0-9889400068d6@intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2e9f80af-aa26-5590-9ff0-9889400068d6@intel.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Adrian Hunter <adrian.hunter@intel.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, Arend van Spriel <arend.vanspriel@broadcom.com>, brcm80211-dev-list.pdl@broadcom.com, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Double Lo <double.lo@cypress.com>, Brian Norris <briannorris@chromium.org>, linux-wireless <linux-wireless@vger.kernel.org>, Naveen Gupta <naveen.gupta@cypress.com>, Madhan Mohan R <madhanmohan.r@cypress.com>, Matthias Kaehlcke <mka@chromium.org>, Wright Feng <wright.feng@cypress.com>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>, netdev <netdev@vger.kernel.org>, brcm80211-dev-list <brcm80211-dev-list@cypress.com>, "David S. Miller" <davem@davemloft.net>, Franky Lin <franky.lin@broadcom.com>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Jun 7, 2019 at 5:29 AM Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> >> @@ -711,8 +720,16 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
> >>                         err_cnt = 0;
> >>                 }
> >>                 /* bail out upon subsequent access errors */
> >> -               if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS))
> >> -                       break;
> >> +               if (err && (err_cnt++ > BRCMF_SDIO_MAX_ACCESS_ERRORS)) {
> >> +                       if (!retune_release)
> >> +                               break;
> >> +                       /*
> >> +                        * Allow one more retry with re-tuning released in case
> >> +                        * it helps.
> >> +                        */
> >> +                       sdio_retune_release(bus->sdiodev->func1);
> >> +                       retune_release = false;
> >
> > I would be tempted to wait before adding this logic until we actually
> > see that it's needed.  Sure, doing one more transfer probably won't
> > really hurt, but until we know that it actually helps it seems like
> > we're just adding extra complexity?
>
> Depends, what is the downside of unnecessarily returning an error from
> brcmf_sdio_kso_control() in that case?

I'm not aware of any downside, but without any example of it being
needed it's just untested code that might or might not fix a problem.
For now I'm going to leave it out of my patch and if someone later
finds it needed or if you're convinced that we really need it we can
add it as a patch atop.

-Doug
