From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v1 1/5] clk: rockchip: rk3288: Add the clock id of eFuse
Date: Tue, 11 Aug 2015 09:22:46 +0200
Message-ID: <15314033.JtZG8yr7WE@diego>
References: <1439273706-28274-1-git-send-email-zhengsq@rock-chips.com> <1439273706-28274-2-git-send-email-zhengsq@rock-chips.com> <1757784.jPpHQAb5oi@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1757784.jPpHQAb5oi@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: Shunqian Zheng <zhengsq@rock-chips.com>
Cc: gregkh@linuxfoundation.org, srinivas.kandagatla@linaro.org, maxime.ripard@free-electrons.com, caesar.wang@rock-chips.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xjq@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 11. August 2015, 09:16:32 schrieb Heiko St=FCbner:
> Am Dienstag, 11. August 2015, 14:15:02 schrieb Shunqian Zheng:
> > From: ZhengShunQian <zhengsq@rock-chips.com>
> >=20
> > The clock id is necessary item, changing it from 0
> > then can be referred in driver and device tree.
> >=20
> > Signed-off-by: ZhengShunQian <zhengsq@rock-chips.com>
>=20
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
>=20
>=20
> Patch is missing the clock maintainers and list
> Mike Turquette <mturquette@baylibre.com>
> Stephen Boyd <sboyd@codeaurora.org>
> linux-clk@vger.kernel.org
>=20
> > ---
> >=20
> >  drivers/clk/rockchip/clk-rk3288.c      | 2 +-
> >  include/dt-bindings/clock/rk3288-cru.h | 1 +
> >  2 files changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/clk/rockchip/clk-rk3288.c
> > b/drivers/clk/rockchip/clk-rk3288.c index 0df5bae..31c4f78 100644
> > --- a/drivers/clk/rockchip/clk-rk3288.c
> > +++ b/drivers/clk/rockchip/clk-rk3288.c
> > @@ -647,7 +647,7 @@ static struct rockchip_clk_branch
> > rk3288_clk_branches[]
> > __initdata =3D { GATE(0, "pclk_efuse_1024", "pclk_cpu", 0,
> > RK3288_CLKGATE_CON(11), 2, GFLAGS),
>=20
> out of curiosity, as I haven't found anything about it yet, do you al=
so know
> what the pclk_efuse_1024 is used for?

ok, found this myself (the 32x32 bit efuse), but it looks like there is=
 also a=20
clock "acc_efuse" - what is this used for?


Heiko

>=20
> > GATE(PCLK_TZPC, "pclk_tzpc",
> > "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 3, GFLAGS), GATE(PCLK_UART2,
> > "pclk_uart2", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 9, GFLAGS), -=09
GATE(0,
> > "pclk_efuse_256", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 10, GFLAGS=
),
> > +	GATE(PCLK_EFUSE256, "pclk_efuse_256", "pclk_cpu", 0,
> > RK3288_CLKGATE_CON(11), 10, GFLAGS), GATE(PCLK_RKPWM, "pclk_rkpwm",
> > "pclk_cpu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(11), 11, GFLAGS),
> >=20
> >  	/* ddrctrl [DDR Controller PHY clock] gates */
> >=20
> > diff --git a/include/dt-bindings/clock/rk3288-cru.h
> > b/include/dt-bindings/clock/rk3288-cru.h index c719aac..ab74d5e 100=
644
> > --- a/include/dt-bindings/clock/rk3288-cru.h
> > +++ b/include/dt-bindings/clock/rk3288-cru.h
> > @@ -164,6 +164,7 @@
> >=20
> >  #define PCLK_DDRUPCTL1		366
> >  #define PCLK_PUBL1		367
> >  #define PCLK_WDT		368
> >=20
> > +#define PCLK_EFUSE256		369
> >=20
> >  /* hclk gates */
> >  #define HCLK_GPS		448
