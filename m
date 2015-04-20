From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH v2 2/2] clk: prevent orphan clocks from being used
Date: Mon, 20 Apr 2015 15:32:46 -0700
Message-ID: <55357E8E.6080609@codeaurora.org>
References: <75204537.lSvovFhEiG@diego> <178607342.OcAukPVBgb@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <178607342.OcAukPVBgb@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?windows-1252?Q?Heiko_St=FCbner?= <heiko@sntech.de>, Mike Turquette <mturquette@linaro.org>
Cc: dianders@chromium.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux@arm.linux.org.uk
List-Id: linux-rockchip.vger.kernel.org

On 04/12/15 04:38, Heiko St=FCbner wrote:
> Orphan clocks or children of orphan clocks don't have rate informatio=
n at
> all and can produce strange results if they're allowed to be used and=
 the
> parent becomes available later on.
>
> So using the newly introduced orphan status bit defer
> __of_clk_get_from_provider calls for orphan clocks.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/clk/clk.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index a9fa5ab..b977701 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -2272,6 +2272,17 @@ bool clk_is_match(const struct clk *p, const s=
truct clk *q)
>  }
>  EXPORT_SYMBOL_GPL(clk_is_match);
> =20
> +static bool clk_is_orphan(const struct clk *clk)
> +{
> +	if (!clk)
> +		return false;
> +
> +	if (!clk->core)
> +		return false;

Looks like a useless check. clk->core better be there.

> +
> +	return clk->core->orphan;
> +}
> +
>  /**
>   * __clk_init - initialize the data structures in a struct clk
>   * @dev:	device initializing this clk, placeholder for now
> @@ -3009,6 +3020,11 @@ struct clk *__of_clk_get_from_provider(struct =
of_phandle_args *clkspec,
>  		if (provider->node =3D=3D clkspec->np)
>  			clk =3D provider->get(clkspec, provider->data);
>  		if (!IS_ERR(clk)) {
> +			if (clk_is_orphan(clk)) {
> +				clk =3D ERR_PTR(-EPROBE_DEFER);
> +				break;
> +			}
> +
>  			clk =3D __clk_create_clk(__clk_get_hw(clk), dev_id,
>  					       con_id);
> =20

Otherwise looks good. We really need to test it on lots of platforms th=
ough.

--=20
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
