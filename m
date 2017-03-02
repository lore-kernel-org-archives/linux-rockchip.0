From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v4 23/23] drm/rockchip: dw-mipi-dsi: add reset control
Date: Thu, 2 Mar 2017 13:59:26 -0800
Message-ID: <20170302215925.GA49518@google.com>
References: <20170224125506.21533-1-john@metanate.com>
 <20170224125506.21533-24-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20170224125506.21533-24-john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Oh, one more thing:

On Fri, Feb 24, 2017 at 12:55:06PM +0000, John Keeping wrote:

> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> index 0c4bae711e84..30da75667334 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> @@ -13,6 +13,7 @@
>  #include <linux/module.h>
>  #include <linux/of_device.h>
>  #include <linux/regmap.h>
> +#include <linux/reset.h>
>  #include <linux/mfd/syscon.h>
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_crtc.h>
> @@ -1144,6 +1145,7 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
>  			of_match_device(dw_mipi_dsi_dt_ids, dev);
>  	const struct dw_mipi_dsi_plat_data *pdata = of_id->data;
>  	struct platform_device *pdev = to_platform_device(dev);
> +	struct reset_control *apb_rst;
>  	struct drm_device *drm = data;
>  	struct dw_mipi_dsi *dsi;
>  	struct resource *res;
> @@ -1182,6 +1184,35 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
>  		return ret;
>  	}
>  
> +	/*
> +	 * Note that the reset was not defined in the initial device tree, so
> +	 * we have to be prepared for it not being found.
> +	 */
> +	apb_rst = devm_reset_control_get(dev, "apb");
> +	if (IS_ERR(apb_rst)) {
> +		ret = PTR_ERR(apb_rst);
> +		if (ret == -ENOENT) {
> +			apb_rst = NULL;
> +		} else {
> +			dev_err(dev, "Unable to get reset control: %d\n", ret);

Might want to check for -EPROBE_DEFER before printing an error?

Brian

> +			return ret;
> +		}
> +	}
> +
> +	if (apb_rst) {
> +		ret = clk_prepare_enable(dsi->pclk);
> +		if (ret) {
> +			dev_err(dev, "%s: Failed to enable pclk\n", __func__);
> +			return ret;
> +		}
> +
> +		reset_control_assert(apb_rst);
> +		usleep_range(10, 20);
> +		reset_control_deassert(apb_rst);
> +
> +		clk_disable_unprepare(dsi->pclk);
> +	}
> +
>  	ret = clk_prepare_enable(dsi->pllref_clk);
>  	if (ret) {
>  		dev_err(dev, "%s: Failed to enable pllref_clk\n", __func__);
