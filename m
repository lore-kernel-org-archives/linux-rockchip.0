From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v2 1/2] phy: rockchip-typec: add pm runtime support
Date: Thu, 8 Sep 2016 10:54:34 +0530
Message-ID: <57D0F612.10702@ti.com>
References: <1473289577-14101-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1473289577-14101-1-git-send-email-zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thursday 08 September 2016 04:36 AM, Chris Zhong wrote:
> Adds pm_runtime support for rockchip Type-C, so that power domain is
> enabled only when there is a transaction going on to help save power.
> 
> Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
> 
> Changes in v2:
> -- add pm_runtime_put_sync in err case
> 
>  drivers/phy/phy-rockchip-typec.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/phy/phy-rockchip-typec.c b/drivers/phy/phy-rockchip-typec.c
> index fb58a27..0b2f528 100644
> --- a/drivers/phy/phy-rockchip-typec.c
> +++ b/drivers/phy/phy-rockchip-typec.c
> @@ -552,6 +552,12 @@ static int tcphy_phy_init(struct rockchip_typec_phy *tcphy, u8 mode)
>  		goto err_clk_core;
>  	}
>  
> +	ret = pm_runtime_get_sync(tcphy->dev);
> +	if (ret < 0) {
> +		dev_err(tcphy->dev, "cannot get pm runtime %d\n", ret);
> +		goto err_clk_ref;
> +	}

phy_core will do get_sync for you if.. <see below>
> +
>  	reset_control_deassert(tcphy->tcphy_rst);
>  
>  	property_enable(tcphy, &cfg->typec_conn_dir, tcphy->flip);
> @@ -600,8 +606,10 @@ static int tcphy_phy_init(struct rockchip_typec_phy *tcphy, u8 mode)
>  	return 0;
>  
>  err_wait_pma:
> +	pm_runtime_put_sync(tcphy->dev);
>  	reset_control_assert(tcphy->uphy_rst);
>  	reset_control_assert(tcphy->tcphy_rst);
> +err_clk_ref:
>  	clk_disable_unprepare(tcphy->clk_ref);
>  err_clk_core:
>  	clk_disable_unprepare(tcphy->clk_core);
> @@ -610,6 +618,7 @@ err_clk_core:
>  
>  static void tcphy_phy_deinit(struct rockchip_typec_phy *tcphy)
>  {
> +	pm_runtime_put_sync(tcphy->dev);
>  	reset_control_assert(tcphy->tcphy_rst);
>  	reset_control_assert(tcphy->uphy_rst);
>  	reset_control_assert(tcphy->pipe_rst);
> @@ -987,6 +996,15 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
>  		return PTR_ERR(phy_provider);
>  	}
>  
> +	pm_runtime_enable(dev);

... pm_runtime_enable is invoked before phy_create.

Thanks
Kishon
