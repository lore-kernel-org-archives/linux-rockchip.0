From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] phy: phy-rockchip-inno-usb2: add phy description for px30
Date: Thu, 31 Oct 2019 13:08:48 +0100
Message-ID: <1974613.gpRaQal8Ma@phil>
References: <20190917082532.25479-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190917082532.25479-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org, mark.rutland@arm.com, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon,

Am Dienstag, 17. September 2019, 10:25:32 CET schrieb Heiko Stuebner:
> The px30 soc from Rockchip shares the same register description as
> the rk3328, so can re-use its definitions.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

could you pick this up as well please?

Thanks
Heiko

> ---
>  Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt | 1 +
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c                    | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> index 00639baae74a..541f5298827c 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
> @@ -2,6 +2,7 @@ ROCKCHIP USB2.0 PHY WITH INNO IP BLOCK
>  
>  Required properties (phy (parent) node):
>   - compatible : should be one of the listed compatibles:
> +	* "rockchip,px30-usb2phy"
>  	* "rockchip,rk3228-usb2phy"
>  	* "rockchip,rk3328-usb2phy"
>  	* "rockchip,rk3366-usb2phy"
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index eae865ff312c..680cc0c8825c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1423,6 +1423,7 @@ static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
>  };
>  
>  static const struct of_device_id rockchip_usb2phy_dt_match[] = {
> +	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
>  	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
>  	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
>  	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
> 
