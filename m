From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: fix frac settings of GPLL clock for rk3328
Date: Mon, 24 Dec 2018 10:18:22 +0100
Message-ID: <1898630.x4fnsSTjcx@phil>
References: <20181222164249.25620-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181222164249.25620-1-katsuhiro@katsuster.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 22. Dezember 2018, 17:42:49 CET schrieb Katsuhiro Suzuki:
> This patch fixes settings of GPLL frequency in fractional mode for
> rk3328. In this mode, FOUTVCO is calcurated by following formula:
>   FOUTVCO = FREF * FBDIV / REFDIV + ((FREF * FRAC / REFDIV) >> 24)
> 
> The problem is in FREF * FRAC >> 24 term. This result always lacks
> one from target value is specified by rate member. For example first
> itme of rk3328_pll_frac_rate originally has
>   - rate  : 1016064000
>   - refdiv: 3
>   - fbdiv : 127
>   - frac  : 134217
>   - FREF * FBDIV / REFDIV        = 1016000000
>   - (FREF * FRAC / REFDIV) >> 24 = 63999
> Thus calculated rate is 1016063999. It seems wrong.
> 
> If frac has 134218 (it is increased 1 from original value), second
> term is 64000. All other items have same situation. So this patch
> adds 1 to frac member in all items of rk3328_pll_frac_rate.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

applied for 4.22 with Elaine's Acked-by

Thanks
Heiko
