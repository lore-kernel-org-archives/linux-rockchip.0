From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v4 1/4] pinctrl: rockchip: remove unnecessary locking
Date: Tue, 28 Mar 2017 11:16:49 +0200
Message-ID: <CACRpkdZHKWSzFXLqEmBkyANvExxperRT3kd5E5nKGbG10x8+dw@mail.gmail.com>
References: <20170323105931.10455-1-john@metanate.com> <20170323105931.10455-2-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20170323105931.10455-2-john@metanate.com>
Sender: linux-gpio-owner@vger.kernel.org
To: John Keeping <john@metanate.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Julia Cartwright <julia@ni.com>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Mar 23, 2017 at 11:59 AM, John Keeping <john@metanate.com> wrote:

> regmap_update_bits does its own locking and everything else accessed
> here is a local variable so there is no need to lock around it.
>
> Signed-off-by: John Keeping <john@metanate.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> ---
> v3: unchanged
> v2.1:
> - Remove RK2928 locking in rockchip_set_pull()
> v2:
> - Also remove locking in rockchip_set_schmitt()

Patch applied.

Yours,
Linus Walleij
