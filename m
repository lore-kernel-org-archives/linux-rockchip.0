From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on rk3288-veyron-jaq
Date: Tue, 28 May 2019 10:45:13 +0200
Message-ID: <CACRpkdb-Dv614V7STLRMpiLkmb_7NVyKnh2oUi=7Rx366tmZ-A@mail.gmail.com>
References: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com> <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
 <CAMuHMdUF1Csi1ZMccOj=kurijMLcA6G+TP_spsE+fnMvZR71Vw@mail.gmail.com> <de92e3bd-70e8-fcba-3c88-c04170704e7b@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <de92e3bd-70e8-fcba-3c88-c04170704e7b@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Elaine Zhang <zhangqing@rock-chips.com>, Eduardo Valentin <edubezval@gmail.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Linux PM list <linux-pm@vger.kernel.org>, Kevin Hilman <khilman@baylibre.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mark Brown <broonie@kernel.org>, Matt Hart <matthew.hart@linaro.org>, mgalka@collabora.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Zhang Rui <rui.zhang@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, May 28, 2019 at 10:36 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:

> > Can't you mark this as a known issue, to prevent spending cycles on the
> > same bisection, and sending out more bisection reports for the same
> > issue?
>
> Not really, so I've disabled bisections in the linux-gpio tree
> and a few other maintainers' trees for now.  I'll see if we can
> come up with a more systematic way of suppressing bisections in
> similar cases (i.e. the issue has been fixed in mainline later
> than the base commit for the branch being tested).

I think this is what the zeroday autobuilder does because
they never seem to show this problem. Thanks for looking
into it!

Yours,
Linus Walleij
