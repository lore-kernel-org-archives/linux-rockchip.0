From: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 2/2] clk: rockchip: rk3288: Handle clock tree for rk3288w
Date: Wed, 1 Apr 2020 18:56:55 +0200
Message-ID: <CAMuHMdXvFOKqmZ-MLJV4SAeLN-PDzqPvMvbVpcD=jyip9tbdnA@mail.gmail.com>
References: <20200401153513.423683-1-mylene.josserand@collabora.com> <20200401153513.423683-3-mylene.josserand@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200401153513.423683-3-mylene.josserand@collabora.com>
Sender: linux-clk-owner@vger.kernel.org
To: =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-clk <linux-clk@vger.kernel.org>, Collabora Kernel ML <kernel@collabora.com>, kever.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Mylène,

On Wed, Apr 1, 2020 at 5:35 PM Mylène Josserand
<mylene.josserand@collabora.com> wrote:
> The revision rk3288w has a different clock tree about
> "hclk_vio" clock, according to the BSP kernel code.
>
> This patch handles this difference by detecting which SOC it is
> and creating the div accordingly. Because we are using
> soc_device_match function, we need to delay the registration
> of this clock later than others to have time to get SoC revision.
>
> Otherwise, because of CLK_OF_DECLARE uses, clock tree will be
> created too soon to have time to detect SoC's revision.
>
> Signed-off-by: Mylène Josserand <mylene.josserand@collabora.com>

Thanks for your patch!

> --- a/drivers/clk/rockchip/clk-rk3288.c
> +++ b/drivers/clk/rockchip/clk-rk3288.c
> @@ -914,10 +923,15 @@ static struct syscore_ops rk3288_clk_syscore_ops = {
>         .resume = rk3288_clk_resume,
>  };
>
> +static const struct soc_device_attribute rk3288w[] = {
> +       { .soc_id = "RK32xx", .revision = "RK3288w" },
> +       { /* sentinel */ }
> +};
> +
> +static struct rockchip_clk_provider *ctx;
> +
>  static void __init rk3288_clk_init(struct device_node *np)
>  {
> -       struct rockchip_clk_provider *ctx;
> -
>         rk3288_cru_base = of_iomap(np, 0);
>         if (!rk3288_cru_base) {
>                 pr_err("%s: could not map cru region\n", __func__);
> @@ -955,3 +969,17 @@ static void __init rk3288_clk_init(struct device_node *np)
>         rockchip_clk_of_add_provider(np, ctx);
>  }
>  CLK_OF_DECLARE(rk3288_cru, "rockchip,rk3288-cru", rk3288_clk_init);
> +
> +static int __init rk3288_hclkvio_register(void)
> +{

This function will always be called, even when running a (multi-platform)
kernel on a non-rk3288 platform.  So you need some protection against
that.

> +       /* Check for the rk3288w revision as clock tree is different */
> +       if (soc_device_match(rk3288w))
> +               rockchip_clk_register_branches(ctx, rk3288w_hclkvio_branch,
> +                                              ARRAY_SIZE(rk3288w_hclkvio_branch));
> +       else
> +               rockchip_clk_register_branches(ctx, rk3288_hclkvio_branch,
> +                                              ARRAY_SIZE(rk3288_hclkvio_branch));

Note that soc_device_match() returns a struct soc_device_attribute
pointer.  If you would store the rockchip_clk_branch array pointer and
size in rk3288w[...].data (i.e. a pointer to a struct containing that
info), for both the r83288w and normal rk3288 variants, you could
simplify this to:

    attr = soc_device_match(rk3288w);
    if (attr) {
            struct rk3288_branch_array *p = attr->data;
            rockchip_clk_register_branches(ctx, p->branches, p->len);
    }

That would handle the not-running-on-rk3288 issue as well.

> +
> +       return 0;
> +}
> +subsys_initcall(rk3288_hclkvio_register);

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
