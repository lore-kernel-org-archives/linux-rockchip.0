From: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] clk: rockchip: add critical clock for rk3368
Date: Mon, 14 Sep 2015 15:19:21 +0100
Message-ID: <20150914141920.GF7002@leverpostej>
References: <5267432.TORlj1Iv40@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5267432.TORlj1Iv40@diego>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@codeaurora.org" <sboyd@codeaurora.org>, "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Sun, Sep 13, 2015 at 12:20:36PM +0100, Heiko St=C3=BCbner wrote:
> Again a result of the gpio-clock-liberation the rk3368 needs the
> pclk_pd_pmu marked as critical, to boot successfully.
>=20
> Reported-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

=46WIW: Tested-by: Mark Rutland <mark.rutland@arm.com>

I'm surprised that we don't describe these as critical in the DT, given
that this isn't really an internal property of the clock controller, bu=
t
rather what happens to be attached to it. That ship appears to have
sailed, however.

Thanks,
Mark.

> ---
> should go on top of clk-fixes. Sorry only finding these piece
> by piece :-) .
>=20
>  drivers/clk/rockchip/clk-rk3368.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip=
/clk-rk3368.c
> index 9c5d61e..7e6b783 100644
> --- a/drivers/clk/rockchip/clk-rk3368.c
> +++ b/drivers/clk/rockchip/clk-rk3368.c
> @@ -818,6 +818,10 @@ static struct rockchip_clk_branch rk3368_clk_bra=
nches[] __initdata =3D {
>  	GATE(0, "sclk_timer00", "xin24m", CLK_IGNORE_UNUSED, RK3368_CLKGATE=
_CON(24), 0, GFLAGS),
>  };
> =20
> +static const char *const rk3368_critical_clocks[] __initconst =3D {
> +	"pclk_pd_pmu",
> +};
> +
>  static void __init rk3368_clk_init(struct device_node *np)
>  {
>  	void __iomem *reg_base;
> @@ -862,6 +866,8 @@ static void __init rk3368_clk_init(struct device_=
node *np)
>  				   RK3368_GRF_SOC_STATUS0);
>  	rockchip_clk_register_branches(rk3368_clk_branches,
>  				  ARRAY_SIZE(rk3368_clk_branches));
> +	rockchip_clk_protect_critical(rk3368_critical_clocks,
> +				      ARRAY_SIZE(rk3368_critical_clocks));
> =20
>  	rockchip_clk_register_armclk(ARMCLKB, "armclkb",
>  			mux_armclkb_p, ARRAY_SIZE(mux_armclkb_p),
> --=20
> 2.5.1
>=20
>=20
