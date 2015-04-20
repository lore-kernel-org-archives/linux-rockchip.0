From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH v2 1/2] clk: track the orphan status of clocks and their
 children
Date: Mon, 20 Apr 2015 15:29:44 -0700
Message-ID: <55357DD8.6060200@codeaurora.org>
References: <75204537.lSvovFhEiG@diego> <2713774.ah3QzH8epf@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2713774.ah3QzH8epf@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?windows-1252?Q?Heiko_St=FCbner?= <heiko@sntech.de>, Mike Turquette <mturquette@linaro.org>
Cc: dianders@chromium.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux@arm.linux.org.uk
List-Id: linux-rockchip.vger.kernel.org

On 04/12/15 04:37, Heiko St=FCbner wrote:
> While children of orphan clocks are not carried in the orphan-list it=
self,
> they're nevertheless orphans in their own right as they also don't ha=
ve an
> input-rate available. To ease tracking if a clock is an orphan or has=
 an
> orphan in its parent path introduce an orphan field into struct clk a=
nd
> update it and the fields in child-clocks when a clock gets added or r=
emoved
> from the orphan-list.
>
> Suggested-by: Stephen Boyd <sboyd@codeaurora.org>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Just nitpicks. Otherwise it looks good to me.

> ---
>  drivers/clk/clk.c | 33 ++++++++++++++++++++++++++++++---
>  1 file changed, 30 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index f85c8e2..a9fa5ab 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -62,6 +62,7 @@ struct clk_core {
>  	struct clk_core		*new_parent;
>  	struct clk_core		*new_child;
>  	unsigned long		flags;
> +	bool			orphan;
>  	unsigned int		enable_count;
>  	unsigned int		prepare_count;
>  	unsigned long		accuracy;
> @@ -1433,18 +1434,40 @@ static int clk_fetch_parent_index(struct clk_=
core *clk,
>  	return -EINVAL;
>  }
> =20
> +/*
> + * Update the orphan status of @clk and all its children.
> + */
> +static void clk_update_orphan_status(struct clk_core *clk, int is_or=
phan)

Please s/clk/core/ here because it's a new function (yeah we've been
slow and haven't updated the whole file to do this consistently). Also
use bool for is_orphan.

> +{
> +	struct clk_core *child;
> +
> +	clk->orphan =3D is_orphan;
> +
> +	hlist_for_each_entry(child, &clk->children, child_node)
> +		clk_update_orphan_status(child, is_orphan);
> +}
> +
>  static void clk_reparent(struct clk_core *clk, struct clk_core *new_=
parent)
>  {
> +	bool was_orphan =3D clk->orphan;
> +
>  	hlist_del(&clk->child_node);
> =20
>  	if (new_parent) {
> +		bool becomes_orphan =3D new_parent->orphan;
> +
>  		/* avoid duplicate POST_RATE_CHANGE notifications */
>  		if (new_parent->new_child =3D=3D clk)
>  			new_parent->new_child =3D NULL;
> =20
>  		hlist_add_head(&clk->child_node, &new_parent->children);
> +
> +		if (was_orphan !=3D becomes_orphan)
> +			clk_update_orphan_status(clk, becomes_orphan);
>  	} else {
>  		hlist_add_head(&clk->child_node, &clk_orphan_list);
> +		if (!was_orphan)
> +			clk_update_orphan_status(clk, 1);

Please use true here.

>  	}
> =20
>  	clk->parent =3D new_parent;
> @@ -2348,13 +2371,17 @@ static int __clk_init(struct device *dev, str=
uct clk *clk_user)
>  	 * clocks and re-parent any that are children of the clock currentl=
y
>  	 * being clk_init'd.
>  	 */
> -	if (clk->parent)
> +	if (clk->parent) {
>  		hlist_add_head(&clk->child_node,
>  				&clk->parent->children);
> -	else if (clk->flags & CLK_IS_ROOT)
> +		clk->orphan =3D clk->parent->orphan;
> +	} else if (clk->flags & CLK_IS_ROOT) {
>  		hlist_add_head(&clk->child_node, &clk_root_list);
> -	else
> +		clk->orphan =3D 0;
> +	} else {
>  		hlist_add_head(&clk->child_node, &clk_orphan_list);
> +		clk->orphan =3D 1;

Please use true/false here.

--=20
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
