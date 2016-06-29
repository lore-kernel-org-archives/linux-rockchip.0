From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v2] phy: rockchip-usb: should be a child device of the GRF
Date: Wed, 29 Jun 2016 19:21:02 +0530
Message-ID: <5773D246.40902@ti.com>
References: <1467151978-28403-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1467151978-28403-1-git-send-email-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On Wednesday 29 June 2016 03:42 AM, Heiko Stuebner wrote:
> The usb-phy is fully enclosed in the general register files (GRF).
> Therefore as seen from the device-tree it shouldn't be a separate
> platform-device but instead a sub-device of the GRF - using the
> simply-mfd mechanism.
> 
> As the usb-phy is part of the kernel for some releases now, we keep
> the old (and now deprecated) binding for compatibility purposes.
> 
> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> ---
> changes in v2:
> - fix two checkpatch warning
> - separate devicetree patches (one applied the
>   second needs to wait for one release round)

applied, thanks.

-Kishon

> 
>  .../devicetree/bindings/phy/rockchip-usb-phy.txt   | 27 ++++++++++++++--------
>  drivers/phy/phy-rockchip-usb.c                     | 14 ++++++++---
>  2 files changed, 28 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> index 68498d5..cc6be96 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> +++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> @@ -5,11 +5,13 @@ Required properties:
>       "rockchip,rk3066a-usb-phy"
>       "rockchip,rk3188-usb-phy"
>       "rockchip,rk3288-usb-phy"
> - - rockchip,grf : phandle to the syscon managing the "general
> -   register files"
>   - #address-cells: should be 1
>   - #size-cells: should be 0
>  
> +Deprecated properties:
> + - rockchip,grf : phandle to the syscon managing the "general
> +   register files" - phy should be a child of the GRF instead
> +
>  Sub-nodes:
>  Each PHY should be represented as a sub-node.
>  
> @@ -28,14 +30,19 @@ Optional Properties:
>  
>  Example:
>  
> -usbphy: phy {
> -	compatible = "rockchip,rk3288-usb-phy";
> -	rockchip,grf = <&grf>;
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> +grf: syscon@ff770000 {
> +	compatible = "rockchip,rk3288-grf", "syscon", "simple-mfd";
> +
> +...
> +
> +	usbphy: phy {
> +		compatible = "rockchip,rk3288-usb-phy";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
>  
> -	usbphy0: usb-phy0 {
> -		#phy-cells = <0>;
> -		reg = <0x320>;
> +		usbphy0: usb-phy0 {
> +			#phy-cells = <0>;
> +			reg = <0x320>;
> +		};
>  	};
>  };
> diff --git a/drivers/phy/phy-rockchip-usb.c b/drivers/phy/phy-rockchip-usb.c
> index f62d899..23f33db 100644
> --- a/drivers/phy/phy-rockchip-usb.c
> +++ b/drivers/phy/phy-rockchip-usb.c
> @@ -397,8 +397,13 @@ static int rockchip_usb_phy_probe(struct platform_device *pdev)
>  	phy_base->pdata = match->data;
>  
>  	phy_base->dev = dev;
> -	phy_base->reg_base = syscon_regmap_lookup_by_phandle(dev->of_node,
> -							     "rockchip,grf");
> +	phy_base->reg_base = ERR_PTR(-ENODEV);
> +	if (dev->parent && dev->parent->of_node)
> +		phy_base->reg_base = syscon_node_to_regmap(
> +						dev->parent->of_node);
> +	if (IS_ERR(phy_base->reg_base))
> +		phy_base->reg_base = syscon_regmap_lookup_by_phandle(
> +						dev->of_node, "rockchip,grf");
>  	if (IS_ERR(phy_base->reg_base)) {
>  		dev_err(&pdev->dev, "Missing rockchip,grf property\n");
>  		return PTR_ERR(phy_base->reg_base);
> @@ -463,7 +467,11 @@ static int __init rockchip_init_usb_uart(void)
>  		return -ENOTSUPP;
>  	}
>  
> -	grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
> +	grf = ERR_PTR(-ENODEV);
> +	if (np->parent)
> +		grf = syscon_node_to_regmap(np->parent);
> +	if (IS_ERR(grf))
> +		grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
>  	if (IS_ERR(grf)) {
>  		pr_err("%s: Missing rockchip,grf property, %lu\n",
>  		       __func__, PTR_ERR(grf));
> 
