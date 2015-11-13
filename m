From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH 4/8] phy: rockchip-usb: expose the phy-internal PLLs
Date: Fri, 13 Nov 2015 14:18:55 +0530
Message-ID: <5645A3F7.9070708@ti.com>
References: <1446673454-9529-1-git-send-email-heiko@sntech.de>
 <1446673454-9529-5-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1446673454-9529-5-git-send-email-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org
Cc: arnd-r2nGTMty4D4@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thursday 05 November 2015 03:14 AM, Heiko Stuebner wrote:
> The USB phys on Rockchip SoCs contain their own internal PLLs to create
> the 480MHz needed. Additionally this PLL output is also fed back into the
> core clock-controller as possible source for clocks like the GPU or others.
> 
> Until now this was modelled incorrectly with a "virtual" factor clock in
> the clock controller. The one big caveat is that if we turn off the usb phy
> via the siddq signal, all analog components get turned off, including the
> PLLs. It is therefore possible that a source clock gets disabled without
> the clock driver ever knowing, possibly making the system hang.
> 
> Therefore register the phy-plls as real clocks that the clock driver can
> then reference again normally, making the clock hirarchy finally reflect
> the actual hardware.
> 
> The phy-ops get converted to simply turning that new clock on and off
> which in turn controls the siddq signal of the phy.
> 
> Through this the driver gains handling for platform-specific data, to
> handle the phy->clock name association.
> 
> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> ---
>  .../devicetree/bindings/phy/rockchip-usb-phy.txt   |   6 +-
>  drivers/phy/phy-rockchip-usb.c                     | 177 ++++++++++++++++++---
>  2 files changed, 160 insertions(+), 23 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> index 826454a..68498d5 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> +++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> @@ -1,7 +1,10 @@
>  ROCKCHIP USB2 PHY
>  
>  Required properties:
> - - compatible: rockchip,rk3288-usb-phy
> + - compatible: matching the soc type, one of
> +     "rockchip,rk3066a-usb-phy"
> +     "rockchip,rk3188-usb-phy"
> +     "rockchip,rk3288-usb-phy"

Looks like this adds driver support for new SoC? Maybe create a separate patch
for that?
>   - rockchip,grf : phandle to the syscon managing the "general
>     register files"
>   - #address-cells: should be 1
> @@ -21,6 +24,7 @@ required properties:
>  Optional Properties:
>  - clocks : phandle + clock specifier for the phy clocks
>  - clock-names: string, clock name, must be "phyclk"
> +- #clock-cells: for users of the phy-pll, should be 0
>  
>  Example:
>  
> diff --git a/drivers/phy/phy-rockchip-usb.c b/drivers/phy/phy-rockchip-usb.c
> index f10e130..509497b 100644
> --- a/drivers/phy/phy-rockchip-usb.c
> +++ b/drivers/phy/phy-rockchip-usb.c
> @@ -15,12 +15,14 @@
>   */
>  
>  #include <linux/clk.h>
> +#include <linux/clk-provider.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
> +#include <linux/of_platform.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/regulator/consumer.h>
> @@ -36,18 +38,35 @@
>  #define SIDDQ_ON		BIT(13)
>  #define SIDDQ_OFF		(0 << 13)
>  
> +struct rockchip_usb_phys {
> +	int reg;
> +	const char *pll_name;
> +};
> +
> +struct rockchip_usb_phy_pdata {
> +	struct rockchip_usb_phys *phys;
> +};
> +
>  struct rockchip_usb_phy_base {
>  	struct device *dev;
>  	struct regmap *reg_base;
> +	const struct rockchip_usb_phy_pdata *pdata;
>  };
>  
>  struct rockchip_usb_phy {
>  	struct rockchip_usb_phy_base *base;
> +	struct device_node *np;
>  	unsigned int	reg_offset;
>  	struct clk	*clk;
> +	struct clk      *clk480m;
> +	struct clk_hw	clk480m_hw;
>  	struct phy	*phy;
>  };
>  
> +/*
> + * Set siddq to 1 to power down usb phy analog blocks,
> + * set to 0 to enable.
> + */

Not related to $patch.
>  static int rockchip_usb_phy_power(struct rockchip_usb_phy *phy,
>  					   bool siddq)
>  {
> @@ -55,17 +74,57 @@ static int rockchip_usb_phy_power(struct rockchip_usb_phy *phy,
>  			    SIDDQ_WRITE_ENA | (siddq ? SIDDQ_ON : SIDDQ_OFF));
>  }

Thanks
Kishon
