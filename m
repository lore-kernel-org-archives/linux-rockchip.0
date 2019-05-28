From: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on rk3288-veyron-jaq
Date: Tue, 28 May 2019 10:41:48 +0200
Message-ID: <CAMuHMdW9Rz=ZQ=wWg=vGJAzzM85+UnN1otKfJzVvbkTkPQ2g2g@mail.gmail.com>
References: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com> <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
 <CAMuHMdUF1Csi1ZMccOj=kurijMLcA6G+TP_spsE+fnMvZR71Vw@mail.gmail.com> <de92e3bd-70e8-fcba-3c88-c04170704e7b@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <de92e3bd-70e8-fcba-3c88-c04170704e7b@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Linux PM list <linux-pm@vger.kernel.org>, Kevin Hilman <khilman@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>, Elaine Zhang <zhangqing@rock-chips.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mark Brown <broonie@kernel.org>, Matt Hart <matthew.hart@linaro.org>, mgalka@collabora.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Zhang Rui <rui.zhang@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Guillaume,

On Tue, May 28, 2019 at 10:36 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
> On 28/05/2019 08:45, Geert Uytterhoeven wrote:
> > On Tue, May 28, 2019 at 9:13 AM Guillaume Tucker
> > <guillaume.tucker@collabora.com> wrote:
> >> This commit has now been reverted in mainline.  Would it be OK
> >> for you to rebase your for-next branch on v5.2-rc2 or cherry-pick
> >> the revert to avoid recurring bisections?
> >>
> >> Ideally this should have been fixed or reverted in mainline
> >> before v5.2-rc1 was released, or even earlier when this was first
> >> found in -next on 13th May.  Unfortunately it was overlooked and
> >> then spread to other branches like yours.
> >
> > I'm afraid it's gonna spread to even more for-next branches, as most
> > subsystem maintainers base their for-next branch on the previous rc1
> > release.  Typically maintainers do not rebase their for-next branches,
> > and do not cherry-pick fixes, unless they are critical for their
> > subsystem.  So you can expect this to show up in e.g. the m68k for-next
> > branch soon...
>
> That is what I feared, thanks for confirming.
>
> > Can't you mark this as a known issue, to prevent spending cycles on the
> > same bisection, and sending out more bisection reports for the same
> > issue?
>
> Not really, so I've disabled bisections in the linux-gpio tree
> and a few other maintainers' trees for now.  I'll see if we can
> come up with a more systematic way of suppressing bisections in
> similar cases (i.e. the issue has been fixed in mainline later
> than the base commit for the branch being tested).

Having a systematic way would be good, else you will have to disable
most other maintainers' trees soon, severely limiting test coverage,
or fall back to linux-next testing only, as linux-next will always include\
latest mainline.

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
