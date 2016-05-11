From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] pinctrl: rockchip: fix pull setting error for rk3399
Date: Tue, 10 May 2016 21:00:57 -0700
Message-ID: <CAD=FV=UXFj9Pq64Ksf8fWtCTffujuZjh8JR4OEmR7=vMTycP1Q@mail.gmail.com>
References: <1462937968-4952-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <1462937968-4952-1-git-send-email-wxt@rock-chips.com>
Sender: linux-gpio-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@google.com>, Stephen Barber <smbarber@google.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Tao Huang <huangtao@rock-chips.com>, Eddie Cai <eddie.cai@rock-chips.com>, David Wu <david.wu@rock-chips.com>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Caesar,

On Tue, May 10, 2016 at 8:39 PM, Caesar Wang <wxt@rock-chips.com> wrote:
> From: David Wu <david.wu@rock-chips.com>
>
> This patch fixes the pinctrl pull bias setting, since the pull up/down
> setting is the contrary for gpio0(just the gpio0a and gpio0b) and
> gpio2(just the gpio2c and gpio2d).
>
> From the TRM said, the gpio0a pull polarity setting:
> gpio0a_p
> GPIO0A PE/PS programmation section, every
> GPIO bit corresponding to 2bits[PS:PE]
> 2'b00: Z(Normal operation);
> 2'b11: weak 1(pull-up);
> 2'b01: weak 0(pull-down);
> 2'b10: Z(Normal operation);
>
> Then, the other gpios setting as the following:
> gpio1a_p (e.g.: gpio1, gpio2a, gpio2b, gpio3...)
> GPIO1A PU/PD programmation section, every
> GPIO bit corresponding to 2bits
> 2'b00: Z(Normal operation);
> 2'b01: weak 1(pull-up);
> 2'b10: weak 0(pull-down);
> 2'b11: Z(Normal operation);
>
> For example,(rk3399evb board)
> sdmmc_cd --->gpio0_a7
> localhost / # io -r -4 0xff320040
> ff320040: 00004d5f
> In general,the value should be 0x0000cd5f since the pin has been set
> in the dts.
>
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-gpio@vger.kernel.org
> ---
>
> Changes in v2:
> - As Doug commnets on https://patchwork.kernel.org/patch/9056961/
> - update the commit for gpio2.
> - change the print error messgae.
>
>  drivers/pinctrl/pinctrl-rockchip.c | 179 ++++++++++++++++++++++++++-----------
>  1 file changed, 127 insertions(+), 52 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
