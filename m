From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 1/2] clk: rockchip: rk3288: Handle clock tree for rk3288w
Date: Tue, 30 Jun 2020 00:41:03 +0530
Message-ID: <CAMty3ZDx-_-VHEwjbV05GBb-hQbPpo21aZbCrQ+GTaoT_gxAMg@mail.gmail.com>
References: <20200602080644.11333-1-mylene.josserand@collabora.com> <20200602080644.11333-2-mylene.josserand@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200602080644.11333-2-mylene.josserand@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@collabora.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, devicetree <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, kernel@collabora.com, linux-clk <linux-clk@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jun 2, 2020 at 1:37 PM Myl=C3=A8ne Josserand
<mylene.josserand@collabora.com> wrote:
>
> The revision rk3288w has a different clock tree about "hclk_vio"
> clock, according to the BSP kernel code.
>
> This patch handles this difference by detecting which device-tree
> we are using. If it is a "rockchip,rk3288-cru", let's register
> the clock tree as it was before. If the device-tree node is
> "rockchip,rk3288w-cru", we will apply the difference with this
> version of this SoC.
>
> Noticed that this new device-tree compatible must be handled in
> bootloader such as u-boot.
>
> Signed-off-by: Myl=C3=A8ne Josserand <mylene.josserand@collabora.com>
> ---
>  drivers/clk/rockchip/clk-rk3288.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk=
-rk3288.c
> index cc2a177bbdbf..204976e2d0cb 100644
> --- a/drivers/clk/rockchip/clk-rk3288.c
> +++ b/drivers/clk/rockchip/clk-rk3288.c
> @@ -425,8 +425,6 @@ static struct rockchip_clk_branch rk3288_clk_branches=
[] __initdata =3D {
>         COMPOSITE(0, "aclk_vio0", mux_pll_src_cpll_gpll_usb480m_p, CLK_IG=
NORE_UNUSED,
>                         RK3288_CLKSEL_CON(31), 6, 2, MFLAGS, 0, 5, DFLAGS=
,
>                         RK3288_CLKGATE_CON(3), 0, GFLAGS),
> -       DIV(0, "hclk_vio", "aclk_vio0", 0,
> -                       RK3288_CLKSEL_CON(28), 8, 5, DFLAGS),
>         COMPOSITE(0, "aclk_vio1", mux_pll_src_cpll_gpll_usb480m_p, CLK_IG=
NORE_UNUSED,
>                         RK3288_CLKSEL_CON(31), 14, 2, MFLAGS, 8, 5, DFLAG=
S,
>                         RK3288_CLKGATE_CON(3), 2, GFLAGS),
> @@ -819,6 +817,16 @@ static struct rockchip_clk_branch rk3288_clk_branche=
s[] __initdata =3D {
>         INVERTER(0, "pclk_isp", "pclk_isp_in", RK3288_CLKSEL_CON(29), 3, =
IFLAGS),
>  };
>
> +static struct rockchip_clk_branch rk3288w_hclkvio_branch[] __initdata =
=3D {
> +       DIV(0, "hclk_vio", "aclk_vio1", 0,
> +                       RK3288_CLKSEL_CON(28), 8, 5, DFLAGS),
> +};
> +
> +static struct rockchip_clk_branch rk3288_hclkvio_branch[] __initdata =3D=
 {
> +       DIV(0, "hclk_vio", "aclk_vio0", 0,
> +                       RK3288_CLKSEL_CON(28), 8, 5, DFLAGS),
> +};
> +
>  static const char *const rk3288_critical_clocks[] __initconst =3D {
>         "aclk_cpu",
>         "aclk_peri",
> @@ -936,6 +944,14 @@ static void __init rk3288_clk_init(struct device_nod=
e *np)
>                                    RK3288_GRF_SOC_STATUS1);
>         rockchip_clk_register_branches(ctx, rk3288_clk_branches,
>                                   ARRAY_SIZE(rk3288_clk_branches));
> +
> +       if (of_device_is_compatible(np, "rockchip,rk3288w-cru"))
> +               rockchip_clk_register_branches(ctx, rk3288w_hclkvio_branc=
h,
> +                                              ARRAY_SIZE(rk3288w_hclkvio=
_branch));
> +       else
> +               rockchip_clk_register_branches(ctx, rk3288_hclkvio_branch=
,
> +                                              ARRAY_SIZE(rk3288_hclkvio_=
branch));
> +

Sorry for the late query on this. I am a bit unclear about this
compatible change, does Linux expect to replace rockchip,rk3288-cru
with rockchip,rk3288w-cru in bootloader if the chip is RK3288w? or
append the existing cru compatible node with rockchip,rk3288w-cru?
because replace new cru node make clock never probe since the
CLK_OF_DECLARE checking rockchip,rk3288-cru

Jagan.
