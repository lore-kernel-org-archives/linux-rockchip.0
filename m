From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/3] usb: dwc2: add generic PHY framework support for dwc2
 usb controler platform driver.
Date: Fri, 31 Jul 2015 11:19:16 +0200
Message-ID: <1455456.LApy1OZgP6@diego>
References: <1438325342-24926-1-git-send-email-lyz@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1438325342-24926-1-git-send-email-lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: rockchip-discuss-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: lintao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

slightly puzzled where this should go to - all 3 patches where added to the 
mainline tree back in december 2014.


Heiko

Am Freitag, 31. Juli 2015, 14:49:00 schrieb Yunzhi Li:
> Get PHY parameters from devicetree and power off usb PHY during
> system suspend.
> 
> Signed-off-by: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Acked-by: Paul Zimmerman <paulz-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
> 
> Series-changes:3
> - Fix coding style: both branches of the if() which only one
>   branch of the conditional statement is a single statement
>   should have braces.
> - No need to test dwc2->phy for NULL before calling generic phy
>   APIs.
> ---
>  drivers/usb/dwc2/gadget.c   | 33 ++++++++++++---------------------
>  drivers/usb/dwc2/platform.c | 36 ++++++++++++++++++++++++++++++++++--
>  2 files changed, 46 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
> index 200168e..2601c61 100644
> --- a/drivers/usb/dwc2/gadget.c
> +++ b/drivers/usb/dwc2/gadget.c
> @@ -3410,8 +3410,6 @@ int dwc2_gadget_init(struct dwc2_hsotg *hsotg, int
> irq) {
>  	struct device *dev = hsotg->dev;
>  	struct s3c_hsotg_plat *plat = dev->platform_data;
> -	struct phy *phy;
> -	struct usb_phy *uphy;
>  	struct s3c_hsotg_ep *eps;
>  	int epnum;
>  	int ret;
> @@ -3421,30 +3419,23 @@ int dwc2_gadget_init(struct dwc2_hsotg *hsotg, int
> irq) hsotg->phyif = GUSBCFG_PHYIF16;
> 
>  	/*
> -	 * Attempt to find a generic PHY, then look for an old style
> -	 * USB PHY, finally fall back to pdata
> +	 * If platform probe couldn't find a generic PHY or an old style
> +	 * USB PHY, fall back to pdata
>  	 */
> -	phy = devm_phy_get(dev, "usb2-phy");
> -	if (IS_ERR(phy)) {
> -		uphy = devm_usb_get_phy(dev, USB_PHY_TYPE_USB2);
> -		if (IS_ERR(uphy)) {
> -			/* Fallback for pdata */
> -			plat = dev_get_platdata(dev);
> -			if (!plat) {
> -				dev_err(dev,
> -				"no platform data or transceiver defined\n");
> -				return -EPROBE_DEFER;
> -			}
> -			hsotg->plat = plat;
> -		} else
> -			hsotg->uphy = uphy;
> -	} else {
> -		hsotg->phy = phy;
> +	if (IS_ERR_OR_NULL(hsotg->phy) && IS_ERR_OR_NULL(hsotg->uphy)) {
> +		plat = dev_get_platdata(dev);
> +		if (!plat) {
> +			dev_err(dev,
> +			"no platform data or transceiver defined\n");
> +			return -EPROBE_DEFER;
> +		}
> +		hsotg->plat = plat;
> +	} else if (hsotg->phy) {
>  		/*
>  		 * If using the generic PHY framework, check if the PHY bus
>  		 * width is 8-bit and set the phyif appropriately.
>  		 */
> -		if (phy_get_bus_width(phy) == 8)
> +		if (phy_get_bus_width(hsotg->phy) == 8)
>  			hsotg->phyif = GUSBCFG_PHYIF8;
>  	}
> 
> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
> index 6a795aa..ae095f0 100644
> --- a/drivers/usb/dwc2/platform.c
> +++ b/drivers/usb/dwc2/platform.c
> @@ -155,6 +155,8 @@ static int dwc2_driver_probe(struct platform_device
> *dev) struct dwc2_core_params defparams;
>  	struct dwc2_hsotg *hsotg;
>  	struct resource *res;
> +	struct phy *phy;
> +	struct usb_phy *uphy;
>  	int retval;
>  	int irq;
> 
> @@ -212,6 +214,24 @@ static int dwc2_driver_probe(struct platform_device
> *dev)
> 
>  	hsotg->dr_mode = of_usb_get_dr_mode(dev->dev.of_node);
> 
> +	/*
> +	 * Attempt to find a generic PHY, then look for an old style
> +	 * USB PHY
> +	 */
> +	phy = devm_phy_get(&dev->dev, "usb2-phy");
> +	if (IS_ERR(phy)) {
> +		hsotg->phy = NULL;
> +		uphy = devm_usb_get_phy(&dev->dev, USB_PHY_TYPE_USB2);
> +		if (IS_ERR(uphy))
> +			hsotg->uphy = NULL;
> +		else
> +			hsotg->uphy = uphy;
> +	} else {
> +		hsotg->phy = phy;
> +		phy_power_on(hsotg->phy);
> +		phy_init(hsotg->phy);
> +	}
> +
>  	spin_lock_init(&hsotg->lock);
>  	mutex_init(&hsotg->init_mutex);
>  	retval = dwc2_gadget_init(hsotg, irq);
> @@ -231,8 +251,15 @@ static int __maybe_unused dwc2_suspend(struct device
> *dev) struct dwc2_hsotg *dwc2 = dev_get_drvdata(dev);
>  	int ret = 0;
> 
> -	if (dwc2_is_device_mode(dwc2))
> +	if (dwc2_is_device_mode(dwc2)) {
>  		ret = s3c_hsotg_suspend(dwc2);
> +	} else {
> +		if (dwc2->lx_state == DWC2_L0)
> +			return 0;
> +		phy_exit(dwc2->phy);
> +		phy_power_off(dwc2->phy);
> +
> +	}
>  	return ret;
>  }
> 
> @@ -241,8 +268,13 @@ static int __maybe_unused dwc2_resume(struct device
> *dev) struct dwc2_hsotg *dwc2 = dev_get_drvdata(dev);
>  	int ret = 0;
> 
> -	if (dwc2_is_device_mode(dwc2))
> +	if (dwc2_is_device_mode(dwc2)) {
>  		ret = s3c_hsotg_resume(dwc2);
> +	} else {
> +		phy_power_on(dwc2->phy);
> +		phy_init(dwc2->phy);
> +
> +	}
>  	return ret;
>  }
