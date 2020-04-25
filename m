From: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v5 1/3] iio: adc: rockchip_saradc: move all of probe to
 devm-functions
Date: Sat, 25 Apr 2020 20:28:42 +0100
Message-ID: <20200425202842.41a2c7e2@archlinux>
References: <20200419100207.58108-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200419100207.58108-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: knaack.h-Mmb7MZpHnFY@public.gmane.org, lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org, pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Sun, 19 Apr 2020 12:02:05 +0200
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:

> From: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> 
> Parts of the saradc probe rely on devm functions and later parts do not.
> This makes it more difficult to for example enable triggers via their
> devm-functions and would need more undo-work in remove.
> 
> So to make life easier for the driver, move the rest of probe calls
> also to their devm-equivalents.
> 
> This includes moving the clk- and regulator-disabling to a devm_action
> so that they gets disabled both during remove and in the error case
> in probe, after the action is registered.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> ---
> changes in v5:
> - none
> changes in v4:
> - new patch as suggested by Jonathan
> 
>  drivers/iio/adc/rockchip_saradc.c | 37 ++++++++++++++++---------------
>  1 file changed, 19 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 582ba047c4a6..270eb7e83823 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -193,6 +193,15 @@ static void rockchip_saradc_reset_controller(struct reset_control *reset)
>  	reset_control_deassert(reset);
>  }
>  
> +static void rockchip_saradc_disable(void *data)
> +{
> +	struct rockchip_saradc *info = data;
> +
> +	clk_disable_unprepare(info->clk);
> +	clk_disable_unprepare(info->pclk);
> +	regulator_disable(info->vref);

You should do these independently.  If you use
a separate devm_add_action_or_reset you can drop the error handling
in probe because that will all be cleaned up automatically as well.

Right now you have a nasty hybrid of managed and unmanaged needing
manual cleanup in some paths.

It will take a few more lines of code, but it will be a lot easier
to review / maintain.

Jonathan


> +}
> +
>  static int rockchip_saradc_probe(struct platform_device *pdev)
>  {
>  	struct rockchip_saradc *info = NULL;
> @@ -304,6 +313,14 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  		goto err_pclk;
>  	}
>  
> +	ret = devm_add_action_or_reset(&pdev->dev,
> +				       rockchip_saradc_disable, info);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to register devm action, %d\n",
> +			ret);
> +		return ret;
> +	}
> +
>  	platform_set_drvdata(pdev, indio_dev);
>  
>  	indio_dev->name = dev_name(&pdev->dev);
> @@ -315,14 +332,12 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  	indio_dev->channels = info->data->channels;
>  	indio_dev->num_channels = info->data->num_channels;
>  
> -	ret = iio_device_register(indio_dev);
> +	ret = devm_iio_device_register(&pdev->dev, indio_dev);
>  	if (ret)
> -		goto err_clk;
> +		return ret;
>  
>  	return 0;
>  
> -err_clk:
> -	clk_disable_unprepare(info->clk);
>  err_pclk:
>  	clk_disable_unprepare(info->pclk);

>  err_reg_voltage:
> @@ -330,19 +345,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  	return ret;
>  }
>  
> -static int rockchip_saradc_remove(struct platform_device *pdev)
> -{
> -	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
> -	struct rockchip_saradc *info = iio_priv(indio_dev);
> -
> -	iio_device_unregister(indio_dev);
> -	clk_disable_unprepare(info->clk);
> -	clk_disable_unprepare(info->pclk);
> -	regulator_disable(info->vref);
> -
> -	return 0;
> -}
> -
>  #ifdef CONFIG_PM_SLEEP
>  static int rockchip_saradc_suspend(struct device *dev)
>  {
> @@ -383,7 +385,6 @@ static SIMPLE_DEV_PM_OPS(rockchip_saradc_pm_ops,
>  
>  static struct platform_driver rockchip_saradc_driver = {
>  	.probe		= rockchip_saradc_probe,
> -	.remove		= rockchip_saradc_remove,
>  	.driver		= {
>  		.name	= "rockchip-saradc",
>  		.of_match_table = rockchip_saradc_match,
