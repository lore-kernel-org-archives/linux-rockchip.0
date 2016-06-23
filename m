From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] pinctrl: rockchip: make rockchip_irq_gc_mask_set_bit static
Date: Thu, 23 Jun 2016 10:49:22 +0200
Message-ID: <CACRpkdZuGXGcZsGVu2bA28_CgUAjmoyC1m46jHxHmQNbcHO94w@mail.gmail.com>
References: <1466530701-26685-1-git-send-email-ben.dooks@codethink.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <1466530701-26685-1-git-send-email-ben.dooks@codethink.co.uk>
Sender: linux-gpio-owner@vger.kernel.org
To: Ben Dooks <ben.dooks@codethink.co.uk>
Cc: linux-kernel@lists.codethink.co.uk, Heiko Stuebner <heiko@sntech.de>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jun 21, 2016 at 7:38 PM, Ben Dooks <ben.dooks@codethink.co.uk> wrote:

> The rockchip_irq_gc_mask_set_bit() function is not exported our used
> outside of ppinctrl-rockchip.c so fix the following sparse error by
> making it static:
>
> drivers/pinctrl/pinctrl-rockchip.c:2010:6: warning: symbol 'rockchip_irq_gc_mask_set_bit' was not declared. Should it be static?
>
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

Patch applied as obviously correct.

Yours,
Linus Walleij
