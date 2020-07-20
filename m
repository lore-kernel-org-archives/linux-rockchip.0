From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 01/13] pinctrl: rockchip: add nr_pins to rockchip_pin_ctrl
Date: Mon, 20 Jul 2020 15:46:34 +0200
Message-ID: <CACRpkdYyZ3GHYo0vB-1UpW+EtiTXgeRuOhOuB0XxUNXN11N9-w@mail.gmail.com>
References: <20200717014908.13914-1-jay.xu@rock-chips.com> <20200717014908.13914-2-jay.xu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200717014908.13914-2-jay.xu@rock-chips.com>
Sender: linux-gpio-owner@vger.kernel.org
To: Jianqun Xu <jay.xu@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Kever Yang <kever.yang@rock-chips.com>, David Wu <david.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jul 17, 2020 at 3:49 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Add nr_pins to rockchip_pin_ctrl by hand, instead of calculating during
> driver probe. This patch is prepare work for making rockchip_pin_ctrl to
> be const type.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

I'm letting Heiko review this series, to me it looks all right.

Yours,
Linus Walleij
