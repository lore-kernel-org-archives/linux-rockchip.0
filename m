From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: analogix_dp: add supports for regulators in
 edp IP
Date: Fri, 28 Oct 2016 17:11:59 +0800
Message-ID: <6d050f06-996f-5ecc-20f9-587299ee34c7@rock-chips.com>
References: <1477163933-13140-1-git-send-email-ayaka@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1477163933-13140-1-git-send-email-ayaka@soulik.info>
Sender: linux-kernel-owner@vger.kernel.org
To: Randy Li <ayaka@soulik.info>, dri-devel@lists.freedesktop.org
Cc: shawn.lin@rock-chips.com, heiko@sntech.de, airlied@linux.ie, randy.li@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On 2016/10/23 3:18, Randy Li wrote:
> I found if eDP_AVDD_1V0 and eDP_AVDD_1V8 are not been power at
> RK3288, once trying to enable the pclk clock, the kernel would dead.
> This patch would try to enable them first. The eDP_AVDD_1V8 more
> likely to be applied to eDP phy, but I have no time to confirmed
> it yet.

Comfirm it or at least someone should be able to answer your
question, Mark?

Have you considered to add some details about vcc-supply and vccio-
supply for your analogix_dp-rockchip.txt ?

 From your commit msg, these two properties are more likely to be
required but the code itself tell me them should be optional(from the
point of backward compatibility, it should also be optinoal).

>
> Signed-off-by: Randy Li <ayaka@soulik.info>
> ---
>  drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 8548e82..6bf0441 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -17,6 +17,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_graph.h>
>  #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
>  #include <linux/clk.h>
>
> @@ -70,6 +71,7 @@ struct rockchip_dp_device {
>  	struct clk               *grfclk;
>  	struct regmap            *grf;
>  	struct reset_control     *rst;
> +	struct regulator_bulk_data supplies[2];
>
>  	struct work_struct	 psr_work;
>  	spinlock_t		 psr_lock;
> @@ -146,6 +148,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>
>  	cancel_work_sync(&dp->psr_work);
>
> +	ret = regulator_bulk_enable(ARRAY_SIZE(dp->supplies),
> +			dp->supplies);
> +	if (ret) {
> +		dev_err(dp->dev, "failed to enable vdd supply %d\n", ret);
> +		return ret;
> +	}
> +
>  	ret = clk_prepare_enable(dp->pclk);
>  	if (ret < 0) {
>  		dev_err(dp->dev, "failed to enable pclk %d\n", ret);
> @@ -168,6 +177,9 @@ static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
>
>  	clk_disable_unprepare(dp->pclk);
>
> +	regulator_bulk_disable(ARRAY_SIZE(dp->supplies),
> +			dp->supplies);
> +
>  	return 0;
>  }
>
> @@ -323,6 +335,19 @@ static int rockchip_dp_init(struct rockchip_dp_device *dp)
>  		return PTR_ERR(dp->rst);
>  	}
>
> +	dp->supplies[0].supply = "vcc";
> +	dp->supplies[1].supply = "vccio";
> +	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(dp->supplies),
> +			dp->supplies);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to get regulators: %d\n", ret);
> +	}
> +	ret = regulator_bulk_enable(ARRAY_SIZE(dp->supplies),
> +			dp->supplies);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to enable regulators: %d\n", ret);
> +	}
> +
>  	ret = clk_prepare_enable(dp->pclk);
>  	if (ret < 0) {
>  		dev_err(dp->dev, "failed to enable pclk %d\n", ret);
>


-- 
Best Regards
Shawn Lin
