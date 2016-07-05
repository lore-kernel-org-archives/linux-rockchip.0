From: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [RFC PATCH 2/3] clk: adjust clocks to their requested rate after
 parent changes
Date: Tue, 05 Jul 2016 15:27:30 +0800
Message-ID: <577B6162.3020609@rock-chips.com>
References: <1462206982-10444-1-git-send-email-heiko@sntech.de>
 <1462206982-10444-3-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1462206982-10444-3-git-send-email-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 05/03/2016 12:36 AM, Heiko Stuebner wrote:
> Given a hirarchy of clk1 -> [div] -> clk2, when the rate of clk1 gets
> changed, clk2 changes as well as the divider stays the same. There may
> be cases where a user of clk2 needs it at a specific rate, so clk2
> needs to be readjusted for the changed rate of clk1.
>
> So if a rate was requested for the clock, and its rate changed during
> the underlying rate-change, with this change the clock framework now
> tries to readjust the rate back to/near the requested one.
>
> The whole process is protected by a new clock-flag to not force this
> behaviour change onto every clock defined in the ccf.
>
> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> ---
>   drivers/clk/clk.c            | 13 +++++++++++--
>   include/linux/clk-provider.h |  1 +
>   2 files changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 65e0aad..22be369 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -1410,6 +1410,9 @@ static struct clk_core *clk_propagate_rate_change(struct clk_core *core,
>   	return fail_clk;
>   }
>
> +static int clk_core_set_rate_nolock(struct clk_core *core,
> +				    unsigned long req_rate);
> +
>   /*
>    * walk down a subtree and set the new rates notifying the rate
>    * change on the way
> @@ -1494,6 +1497,12 @@ static void clk_change_rate(struct clk_core *core)
>   	/* handle the new child who might not be in core->children yet */
>   	if (core->new_child)
>   		clk_change_rate(core->new_child);
> +
> +	/* handle a changed clock that needs to readjust its rate */
> +	if (core->flags & CLK_KEEP_REQ_RATE && core->req_rate
> +					    && core->new_rate != old_rate
> +					    && core->new_rate != core->req_rate)
> +		clk_core_set_rate_nolock(core, core->req_rate);
>   }

I tests found a problem, about set the freq order.
e.p:
[VPLL]
     |
     ------ [div] ----- dclk_vop
If I change VPLL freq 148.5M to 594M, dclk_vop freq will changed as:
148.5M->24M->594M->1485.5M.
But we not hope the dclk_vop have a high freq,it will make the system 
crash or make vop not work well.

So if the VPLL is improve the freq, we need to set dclk_vop div first, 
and than set VPLL freq.
If VPLL is reduce the freq, we need to set vpll first,and set dclk_vop div.

This is just a example,for all change parent freq, we need follow this 
operation.
Do you have a better idea for this problem?

>
>   static int clk_core_set_rate_nolock(struct clk_core *core,
> @@ -1529,11 +1538,11 @@ static int clk_core_set_rate_nolock(struct clk_core *core,
>   		return -EBUSY;
>   	}
>
> +	core->req_rate = req_rate;
> +
>   	/* change the rates */
>   	clk_change_rate(top);
>
> -	core->req_rate = req_rate;
> -
>   	return ret;
>   }
>
> diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
> index 0c72204..06f189e 100644
> --- a/include/linux/clk-provider.h
> +++ b/include/linux/clk-provider.h
> @@ -33,6 +33,7 @@
>   #define CLK_RECALC_NEW_RATES	BIT(9) /* recalc rates after notifications */
>   #define CLK_SET_RATE_UNGATE	BIT(10) /* clock needs to run to set rate */
>   #define CLK_IS_CRITICAL		BIT(11) /* do not gate, ever */
> +#define CLK_KEEP_REQ_RATE	BIT(12) /* keep reqrate on parent rate change */
>
>   struct clk;
>   struct clk_hw;
>
