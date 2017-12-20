From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] pinctrl: rockchip: enable clock when reading pin
 direction register
Date: Wed, 20 Dec 2017 09:01:04 +0100
Message-ID: <CACRpkdYifc=MHH+eGz6Di-g6brFwpw5FD5njGSH-Fut=AQwQzw@mail.gmail.com>
References: <20171212174343.192017-1-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20171212174343.192017-1-briannorris@chromium.org>
Sender: linux-gpio-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Doug Anderson <dianders@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Dec 12, 2017 at 6:43 PM, Brian Norris <briannorris@chromium.org> wrote:

> We generally leave the GPIO clock disabled, unless an interrupt is
> requested or we're accessing IO registers. We forgot to do this for the
> ->get_direction() callback, which means we can sometimes [1] get
> incorrect results [2] from, e.g., /sys/kernel/debug/gpio.
>
> Enable the clock, so we get the right results!
>
> [1] Sometimes, because many systems have 1 or mor interrupt requested on
> each GPIO bank, so they always leave their clock on.
>
> [2] Incorrect, meaning the register returns 0, and so we interpret that
> as "input".
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Patch applied with Heiko's review tag.

Yours,
Linus Walleij
