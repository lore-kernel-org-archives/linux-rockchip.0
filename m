From: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] soc: rockchip: power-domain: remove PM clocks
Date: Wed, 28 Feb 2018 13:17:39 +0100
Message-ID: <CAMuHMdWLL9CxmxSLsqs1QX0dDHVhp4NrW4Me2EZaZE_bJ330bA@mail.gmail.com>
References: <20180228111113.13639-1-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180228111113.13639-1-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, Caesar Wang <wxt@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Ulf Hansson <ulf.hansson@linaro.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Jeffy,

On Wed, Feb 28, 2018 at 12:11 PM, Jeffy Chen <jeffy.chen@rock-chips.com> wrote:
> Currently we are adding all of the attached devices' clocks as pm clocks
> and enable them when powering on the power domain.
>
> This seems unnecessary, because those clocks are already controlled in
> the devices' drivers with better error handling.
>
> Tested on my chromebook minnie(rk3288) and chromebook kevin(rk3399).
>
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>

Thanks for your patch!

Just wondering: so you prefer to handle the clocks explicitly in all drivers,
instead of delegating this task to Runtime PM?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
