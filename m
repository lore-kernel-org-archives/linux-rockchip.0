From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] pinctrl: rockchip: add support for the rk3368
Date: Wed, 17 Jun 2015 10:21:40 +0200
Message-ID: <CACRpkdYm0XL1w_5VnaaXjnt7gR=RtO0w=Q4kVdsJNH6o+12fOA@mail.gmail.com>
References: <2322857.kblfsanYOB@diego>
	<6672678.KPGUcFJOAs@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <6672678.KPGUcFJOAs@diego>
Sender: linux-gpio-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jun 12, 2015 at 11:51 PM, Heiko St=C3=BCbner <heiko@sntech.de> =
wrote:

> The rk3368 is the first ARM64 soc from Rockchip, but seems to share m=
ost
> peripherals with the ARM32 soc, including the pinctrl functionality.
> The only notable difference is - as with every Rockchip soc - that th=
e
> offsets in the General Register Files moved around and a split of the=
 pmu
> section of the rk3288 into pmu and pmugrf (pmu general register files=
)
> sections. The pinctrl driver of course only needs the pmugrf register=
s
> for controlling the pin settings.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Patch applied.

Yours,
Linus Walleij
--
To unsubscribe from this list: send the line "unsubscribe linux-gpio" i=
n
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
