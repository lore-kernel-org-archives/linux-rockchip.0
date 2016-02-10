From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v5] pinctrl: rockchip: add support for the rk3399
Date: Wed, 10 Feb 2016 16:42:04 +0100
Message-ID: <CACRpkdYsYse-EYQ2YJFbRRMVrfp-0k-CctvCZtGtzNgJNyo1Bg@mail.gmail.com>
References: <1454295501-32165-1-git-send-email-david.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <1454295501-32165-1-git-send-email-david.wu@rock-chips.com>
Sender: linux-gpio-owner@vger.kernel.org
To: David Wu <david.wu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Tao Huang <huangtao@rock-chips.com>, Chris Zhong <zyw@rock-chips.com>, Eddie Cai <cf@rock-chips.com>, Jianqun Xu <xjq@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Feb 1, 2016 at 3:58 AM, David Wu <david.wu@rock-chips.com> wrote:

> The pinctrl of rk3399 is much different from other's,
> especially the 3bits of drive strength.
>
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---
> Changes in v5:
> - merge the binding-doc-addition in one patch (Linus Heiko)
> - fix the comment of bit15 drive setting (Heiko)

Patch applied.

Yours,
Linus Walleij
