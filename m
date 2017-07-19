From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [RFC PATCH v4 1/7] PCI: rockchip: split out rockchip_pcie_get_phys
Date: Wed, 19 Jul 2017 13:17:58 +0530
Message-ID: <4e11d727-47cb-9b89-5081-387b550902b4@ti.com>
References: <1500448979-93067-1-git-send-email-shawn.lin@rock-chips.com>
 <1500448979-93067-2-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1500448979-93067-2-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On Wednesday 19 July 2017 12:52 PM, Shawn Lin wrote:
> We plan to introduce per-lanes PHY, so split out new
> function to make it easy in the future. No functional
> change intended.
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Reviewed-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Tested-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Acked-by: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
> ---
> 
> Changes in v4:
> - use err variable to check return value of
>   rockchip_pcie_get_phys
> - add Brian's tag
> 
> Changes in v3: None
> Changes in v2: None
> 
>  drivers/pci/host/pcie-rockchip.c | 22 ++++++++++++++++------
>  1 file changed, 16 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
> index 5acf869..c42feab 100644
> --- a/drivers/pci/host/pcie-rockchip.c
> +++ b/drivers/pci/host/pcie-rockchip.c
> @@ -853,6 +853,19 @@ static void rockchip_pcie_legacy_int_handler(struct irq_desc *desc)
>  	chained_irq_exit(chip, desc);
>  }
>  
> +static int rockchip_pcie_get_phys(struct rockchip_pcie *rockchip)
> +{
> +	struct device *dev = rockchip->dev;
> +
> +	rockchip->phy = devm_phy_get(dev, "pcie-phy");
> +	if (IS_ERR(rockchip->phy)) {
> +		if (PTR_ERR(rockchip->phy) != -EPROBE_DEFER)
> +			dev_err(dev, "missing phy\n");
> +		return PTR_ERR(rockchip->phy);
> +	}
> +
> +	return 0;
> +}
>  
>  /**
>   * rockchip_pcie_parse_dt - Parse Device Tree
> @@ -883,12 +896,9 @@ static int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>  	if (IS_ERR(rockchip->apb_base))
>  		return PTR_ERR(rockchip->apb_base);
>  
> -	rockchip->phy = devm_phy_get(dev, "pcie-phy");
> -	if (IS_ERR(rockchip->phy)) {
> -		if (PTR_ERR(rockchip->phy) != -EPROBE_DEFER)
> -			dev_err(dev, "missing phy\n");
> -		return PTR_ERR(rockchip->phy);
> -	}
> +	err = rockchip_pcie_get_phys(rockchip);
> +	if (err)
> +		return err;
>  
>  	rockchip->lanes = 1;
>  	err = of_property_read_u32(node, "num-lanes", &rockchip->lanes);
> 
