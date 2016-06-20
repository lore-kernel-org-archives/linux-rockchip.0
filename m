From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH 1/4] phy: rockchip-emmc: give DLL some extra time to be
 ready
Date: Mon, 20 Jun 2016 18:41:26 +0530
Message-ID: <5767EB7E.3040606@ti.com>
References: <1463092986-61777-1-git-send-email-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1463092986-61777-1-git-send-email-briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Brian Norris <computersforpeace-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On Friday 13 May 2016 04:13 AM, Brian Norris wrote:
> From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> According to the databook, 10.2us is the max time for dll to be ready to
> work. However in testing, some chips need 20us for dll to be ready. This
> patch adds some extra margin for dllrdy to be ready, fixing our
> -ETIMEDOUT issues.
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

Acked-by: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
> ---
>  drivers/phy/phy-rockchip-emmc.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/phy-rockchip-emmc.c b/drivers/phy/phy-rockchip-emmc.c
> index 6ebcf3e41c46..48cbe691a889 100644
> --- a/drivers/phy/phy-rockchip-emmc.c
> +++ b/drivers/phy/phy-rockchip-emmc.c
> @@ -119,10 +119,11 @@ static int rockchip_emmc_phy_power(struct rockchip_emmc_phy *rk_phy,
>  				   PHYCTRL_ENDLL_MASK,
>  				   PHYCTRL_ENDLL_SHIFT));
>  	/*
> -	 * After enable analog DLL circuits, we need extra 10.2us
> -	 * for dll to be ready for work.
> +	 * After enable analog DLL circuits, we need an extra 10.2us
> +	 * for dll to be ready for work. But according to testing, we
> +	 * find some chips need more than 25us.
>  	 */
> -	udelay(11);
> +	udelay(30);
>  	regmap_read(rk_phy->reg_base,
>  		    rk_phy->reg_offset + GRF_EMMCPHY_STATUS,
>  		    &dllrdy);
> 
