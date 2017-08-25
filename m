From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] pinctrl: rockchip: Add rv1108 recalculated iomux support
Date: Fri, 25 Aug 2017 11:23:17 +0200
Message-ID: <23515351.KtMKrjq6Hm@phil>
References: <1503475207-30288-1-git-send-email-david.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <1503475207-30288-1-git-send-email-david.wu@rock-chips.com>
Sender: linux-gpio-owner@vger.kernel.org
To: David Wu <david.wu@rock-chips.com>
Cc: linus.walleij@linaro.org, huangtao@rock-chips.com, andy.yan@rock-chips.com, linux-rockchip@lists.infradead.org, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 23. August 2017, 16:00:07 CEST schrieb David Wu:
> The pins from GPIO1A0 to GPIO1B1 are special, need to recalculate
> iomux. And the register offset is larger than the u8 range, so changed
> to u32.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>

While I'm still struggling trying to understand why some chip-designer
would move these iomux settings into the general SOC_CON registers,
this matches the documentation for the rv1108, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>


Heiko
