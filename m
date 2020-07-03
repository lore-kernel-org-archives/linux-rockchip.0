From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v6 1/3] iio: adc: rockchip_saradc: move all of probe to devm-functions
Date: Fri, 03 Jul 2020 09:48:42 +0200
Message-ID: <3183602.Ou33jPcMzM@phil>
References: <20200623233011.2319035-1-heiko@sntech.de> <20200627130329.66d7102f@archlinux>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200627130329.66d7102f@archlinux>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: knaack.h-Mmb7MZpHnFY@public.gmane.org, lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org, pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 27. Juni 2020, 14:03:29 CEST schrieb Jonathan Cameron:
> On Wed, 24 Jun 2020 01:30:09 +0200
> Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> 
> > From: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> > 
> > Parts of the saradc probe rely on devm functions and later parts do not.
> > This makes it more difficult to for example enable triggers via their
> > devm-functions and would need more undo-work in remove.
> > 
> > So to make life easier for the driver, move the rest of probe calls
> > also to their devm-equivalents.
> > 
> > This includes moving the clk- and regulator-disabling to a devm_action
> > so that they gets disabled both during remove and in the error case
> > in probe, after the action is registered.
> > 
> > Signed-off-by: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> Looks good to me. Applied to the togreg branch of iio.git with one small
> tweak. See inline.
> 
> One other thing whilst we are here. Why do we need the build dependence
> on ARM?

I guess originally it was there simply, because Rockchip only makes
ARM-SoCs so as not to pollute the config with too many unusable
options and it had the COMPILE_TEST for the test-builds.

But if one driver more doesn't really matter, it can of course also just
go away.

> I just scrapped it and the driver builds fine on x86 so would
> be good to get the additional build coverage if we can.

So I guess you'd like a patch removing that part, right?
Because I guess the "I just scrapped it" meant locally, as I can't find
a commit of that sort in the testing branch ;-)


Heiko


> > ---
> > changes in v6:
> > - move devm actions into separate functions as suggested by Jonathan
> > changes in v5:
> > - none
> > changes in v4:
> > - new patch as suggested by Jonathan
> > 
> >  drivers/iio/adc/rockchip_saradc.c | 72 ++++++++++++++++++++-----------
> >  1 file changed, 46 insertions(+), 26 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> > index 582ba047c4a6..1a7990d60f9f 100644
> > --- a/drivers/iio/adc/rockchip_saradc.c
> > +++ b/drivers/iio/adc/rockchip_saradc.c
> > @@ -193,6 +193,27 @@ static void rockchip_saradc_reset_controller(struct reset_control *reset)
> >  	reset_control_deassert(reset);
> >  }
> >  
> > +static void rockchip_saradc_clk_disable(void *data)
> > +{
> > +	struct rockchip_saradc *info = data;
> > +
> > +	clk_disable_unprepare(info->clk);
> > +}
> > +
> > +static void rockchip_saradc_pclk_disable(void *data)
> > +{
> > +	struct rockchip_saradc *info = data;
> > +
> > +	clk_disable_unprepare(info->pclk);
> > +}
> > +
> > +static void rockchip_saradc_regulator_disable(void *data)
> > +{
> > +	struct rockchip_saradc *info = data;
> > +
> > +	regulator_disable(info->vref);
> > +}
> > +
> >  static int rockchip_saradc_probe(struct platform_device *pdev)
> >  {
> >  	struct rockchip_saradc *info = NULL;
> > @@ -291,17 +312,38 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
> >  		dev_err(&pdev->dev, "failed to enable vref regulator\n");
> >  		return ret;
> >  	}
> > +	ret = devm_add_action_or_reset(&pdev->dev,
> > +				       rockchip_saradc_regulator_disable, info);
> > +	if (ret) {
> > +		dev_err(&pdev->dev, "failed to register devm action, %d\n",
> > +			ret);
> > +		return ret;
> > +	}
> >  
> >  	ret = clk_prepare_enable(info->pclk);
> >  	if (ret < 0) {
> >  		dev_err(&pdev->dev, "failed to enable pclk\n");
> > -		goto err_reg_voltage;
> > +		return ret;
> > +	}
> > +	ret = devm_add_action_or_reset(&pdev->dev,
> > +				       rockchip_saradc_pclk_disable, info);
> > +	if (ret) {
> > +		dev_err(&pdev->dev, "failed to register devm action, %d\n",
> > +			ret);
> > +		return ret;
> >  	}
> >  
> >  	ret = clk_prepare_enable(info->clk);
> >  	if (ret < 0) {
> >  		dev_err(&pdev->dev, "failed to enable converter clock\n");
> > -		goto err_pclk;
> > +		return ret;
> > +	}
> > +	ret = devm_add_action_or_reset(&pdev->dev,
> > +				       rockchip_saradc_clk_disable, info);
> > +	if (ret) {
> > +		dev_err(&pdev->dev, "failed to register devm action, %d\n",
> > +			ret);
> > +		return ret;
> >  	}
> >  
> >  	platform_set_drvdata(pdev, indio_dev);
> > @@ -315,30 +357,9 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
> >  	indio_dev->channels = info->data->channels;
> >  	indio_dev->num_channels = info->data->num_channels;
> >  
> > -	ret = iio_device_register(indio_dev);
> > +	ret = devm_iio_device_register(&pdev->dev, indio_dev);
> >  	if (ret)
> > -		goto err_clk;
> > -
> > -	return 0;
> > -
> > -err_clk:
> > -	clk_disable_unprepare(info->clk);
> > -err_pclk:
> > -	clk_disable_unprepare(info->pclk);
> > -err_reg_voltage:
> > -	regulator_disable(info->vref);
> > -	return ret;
> > -}
> > -
> > -static int rockchip_saradc_remove(struct platform_device *pdev)
> > -{
> > -	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
> > -	struct rockchip_saradc *info = iio_priv(indio_dev);
> > -
> > -	iio_device_unregister(indio_dev);
> > -	clk_disable_unprepare(info->clk);
> > -	clk_disable_unprepare(info->pclk);
> > -	regulator_disable(info->vref);
> > +		return ret;
> Small tweak rather hidden by how diff presents this but
> might as well just
> 
> return devm_iio_device_register
> 
> >  
> >  	return 0;
> >  }
> > @@ -383,7 +404,6 @@ static SIMPLE_DEV_PM_OPS(rockchip_saradc_pm_ops,
> >  
> >  static struct platform_driver rockchip_saradc_driver = {
> >  	.probe		= rockchip_saradc_probe,
> > -	.remove		= rockchip_saradc_remove,
> >  	.driver		= {
> >  		.name	= "rockchip-saradc",
> >  		.of_match_table = rockchip_saradc_match,
> 
> 
