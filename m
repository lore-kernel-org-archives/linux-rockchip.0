From: Roger Quadros <rogerq-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH] usb: host: xhci: plat: check hcc_params after add hcd
Date: Fri, 13 Jan 2017 13:02:01 +0200
Message-ID: <cb57648a-857f-8bf1-f885-e6c6717e5776@ti.com>
References: <1484277533-30273-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1484277533-30273-1-git-send-email-william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, groeck-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 13/01/17 05:18, William Wu wrote:
> From: William wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> The commit 4ac53087d6d4 ("usb: xhci: plat: Create both
> HCDs before adding them") move add hcd to the end of
> probe, this cause hcc_params uninitiated, because xHCI
> driver sets hcc_params in xhci_gen_setup() called from
> usb_add_hcd().
> 
> This patch checks the Maximum Primary Stream Array Size
> in the hcc_params register after add hcd.
> 
> Signed-off-by: William wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
>  drivers/usb/host/xhci-plat.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
> index ddfab30..52ce697 100644
> --- a/drivers/usb/host/xhci-plat.c
> +++ b/drivers/usb/host/xhci-plat.c
> @@ -232,9 +232,6 @@ static int xhci_plat_probe(struct platform_device *pdev)
>  	if (device_property_read_bool(&pdev->dev, "usb3-lpm-capable"))
>  		xhci->quirks |= XHCI_LPM_SUPPORT;
>  
> -	if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
> -		xhci->shared_hcd->can_do_streams = 1;
> -
>  	hcd->usb_phy = devm_usb_get_phy_by_phandle(&pdev->dev, "usb-phy", 0);
>  	if (IS_ERR(hcd->usb_phy)) {
>  		ret = PTR_ERR(hcd->usb_phy);
> @@ -255,6 +252,9 @@ static int xhci_plat_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto dealloc_usb2_hcd;
>  
> +	if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
> +		xhci->shared_hcd->can_do_streams = 1;
> +

xhci->hcc_params is initialized after the first usb_add_hcd().
Should this bit come before the usb_add_hcd(xhci->shared_hcd,..)?

You will also need to copy to v4.2+ <stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>. Thanks.

>  	return 0;
>  
>  
> 

cheers,
-roger
