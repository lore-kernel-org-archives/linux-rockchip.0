From: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 3/6] rockchip: power-domain: add support for sub-power domains
Date: Wed, 2 Mar 2016 16:05:15 -0800
Message-ID: <CAOi56cX-79UvCLEY5ddvWFoW=qRVmF-wcCt_0stATK_KNWU8vA@mail.gmail.com>
References: <1455764838-12928-1-git-send-email-zhangqing@rock-chips.com>
	<1455764838-12928-4-git-send-email-zhangqing@rock-chips.com>
	<1828664.WUMlfLyMuz@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1828664.WUMlfLyMuz@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, wxt@rock-chips.com, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, lkml <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Feb 18, 2016 at 4:20 PM, Heiko Stuebner <heiko@sntech.de> wrote:

> In general the code looks like you're going to group the domains
> hirarchically, like
>
>        power: power-controller {
>                compatible = "rockchip,rk3399-power-controller";
>
>                pd_cci {
>                        reg = <RK3399_PD_CCI>;
>                        clocks = ...;
>
>                         pd_cci0 {
>                                 reg = <RK3399_PD_CCI0>;
>                                 clocks = ...;
>                         };
>                };
>        };
>
> This isn't documented in the dt-binding and also isn't really improving
> reading these declarations. Instead as I said before, I think I'd like more
> get inspiration from how Exynos is doing that already

Heiko and I had a chat offline about this, and I mentioned that the
Exynos way is not the preferred way.  The nesting that is being done
here (and in v4) is the better way, and is fully supported by the
genpd code.

Kevin
