From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [RFC PATCH 2/2] phy: phy-rockchip-inno-usb2: remove support for
 rockchip, rk3366-usb2phy
Date: Thu, 19 Mar 2020 13:07:26 +0000
Message-ID: <233769c3-a44a-0ebd-7a2c-6fab17fb56f2@arm.com>
References: <20200318192901.5023-1-jbx6244@gmail.com>
 <20200318192901.5023-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200318192901.5023-2-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, kishon-l0cyMroinI0@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

On 2020-03-18 7:29 pm, Johan Jonker wrote:
> 'phy-rockchip-inno-usb2.txt' is updated to yaml, whereby
> the compatible string 'rockchip,rk3366-usb2phy' was removed,
> because it's not in use by a dts file, so remove support
> in the code as well.

Here's a DT using it:

https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm64/boot/dts/rockchip/rk3366.dtsi#L820

Please note that although DT bindings happen to be primarily maintained 
in the upstream kernel tree at the moment, it is mostly as a consequence 
of Linux being the source of most active development. Bindings should 
not be considered to be "owned" by upstream Linux since there are many 
other consumers, both downstream, and in completely different projects 
like the BSDs. As far as I'm aware there is still a long-term plan to 
eventually flip the switch and move maintenance to a standalone repo:

https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git

Things like PCI Device IDs and ACPI HIDs aren't even documented as 
formally as DT bindings, so by the reasoning here we could arguably 
delete the majority of drivers from the kernel...

Robin.

> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 20 --------------------
>   1 file changed, 20 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 680cc0c88..dcdb5589b 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1299,25 +1299,6 @@ static const struct rockchip_usb2phy_cfg rk3328_phy_cfgs[] = {
>   	{ /* sentinel */ }
>   };
>   
> -static const struct rockchip_usb2phy_cfg rk3366_phy_cfgs[] = {
> -	{
> -		.reg = 0x700,
> -		.num_ports	= 2,
> -		.clkout_ctl	= { 0x0724, 15, 15, 1, 0 },
> -		.port_cfgs	= {
> -			[USB2PHY_PORT_HOST] = {
> -				.phy_sus	= { 0x0728, 15, 0, 0, 0x1d1 },
> -				.ls_det_en	= { 0x0680, 4, 4, 0, 1 },
> -				.ls_det_st	= { 0x0690, 4, 4, 0, 1 },
> -				.ls_det_clr	= { 0x06a0, 4, 4, 0, 1 },
> -				.utmi_ls	= { 0x049c, 14, 13, 0, 1 },
> -				.utmi_hstdet	= { 0x049c, 12, 12, 0, 1 }
> -			}
> -		},
> -	},
> -	{ /* sentinel */ }
> -};
> -
>   static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
>   	{
>   		.reg		= 0xe450,
> @@ -1426,7 +1407,6 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
>   	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
>   	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
>   	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
> -	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
>   	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
>   	{ .compatible = "rockchip,rv1108-usb2phy", .data = &rv1108_phy_cfgs },
>   	{}
> 
