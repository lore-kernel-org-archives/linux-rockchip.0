From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 3/3] clk: rockchip: Correct the behaviour of restoring
 cached phase
Date: Fri, 23 Mar 2018 09:19:28 +0100
Message-ID: <2617278.f7F6Nr675k@phil>
References: <1521599960-34381-1-git-send-email-shawn.lin@rock-chips.com>
 <1521599960-34381-3-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1521599960-34381-3-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 21. M=E4rz 2018, 03:39:20 CET schrieb Shawn Lin:
> We can't restore every phase, for instance the invalid phase and
> the phase for coming rate which is out of the scope of boards'
> ability. And this patch also corrects the error path to return
> invalid pointer to clk if clk_notifier_register failed introduced
> by the same offending commit.
> =

> Fixes: 60cf09e45fbc ("clk: rockchip: Restore the clock phase after the ra=
te was changed")
> Reported-by: wlq <wlq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Tested-by: wlq <wlq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

I've split off the part below [fix for error handling] into a separate
patch and applied both patches for 4.17


Thanks
Heiko

> @@ -211,8 +223,10 @@ struct clk *rockchip_clk_register_mmc(const char *na=
me,
>  	mmc_clock->shift =3D shift;
>  =

>  	clk =3D clk_register(NULL, &mmc_clock->hw);
> -	if (IS_ERR(clk))
> +	if (IS_ERR(clk)) {
> +		ret =3D PTR_ERR(clk);
>  		goto err_register;
> +	}
>  =

>  	mmc_clock->clk_rate_change_nb.notifier_call =3D
>  				&rockchip_mmc_clk_rate_notify;
> @@ -225,5 +239,5 @@ struct clk *rockchip_clk_register_mmc(const char *nam=
e,
>  	clk_unregister(clk);
>  err_register:
>  	kfree(mmc_clock);
> -	return clk;
> +	return ERR_PTR(ret);
>  }
> =
