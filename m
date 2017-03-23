From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3 0/4] pinctrl: rockchip: PREEMPT_RT_FULL fixes
Date: Thu, 23 Mar 2017 10:20:06 +0100
Message-ID: <CACRpkdbcnuPGQGuNG-0ZdARbKdJRMrXGZsoeG4NPVFTMg5p6sw@mail.gmail.com>
References: <20170317182430.27400-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20170317182430.27400-1-john@metanate.com>
Sender: linux-gpio-owner@vger.kernel.org
To: John Keeping <john@metanate.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Julia Cartwright <julia@ni.com>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Mar 17, 2017 at 7:24 PM, John Keeping <john@metanate.com> wrote:

> The aim of the series is to make the Rockchip pinctrl irq_chip
> implementation safe for use with RT_FULL which requires that raw
> spinlocks are used to avoid sleeping in hardirq context.
>
> This is the same as version 2 [1] with the 2.1 version of patch 1
> included, but I'm rolling it up as a new version so it's simpler to
> apply.

This v3 does not apply either so please rebase and resend.

Yours,
Linus Walleij
