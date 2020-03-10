From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] drm/rockchip: rgb: don't count non-existent devices
 when determining subdrivers
Date: Tue, 10 Mar 2020 10:53:08 +0100
Message-ID: <20200310105308.1c5fadf9@xps13>
References: <20200121224828.4070067-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200121224828.4070067-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

Heiko Stuebner <heiko@sntech.de> wrote on Tue, 21 Jan 2020 23:48:28
+0100:

> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> rockchip_drm_endpoint_is_subdriver() may also return error codes.
> For example if the target-node is in the disabled state, so no
> platform-device is getting created for it.
> 
> In that case current code would count that as external rgb device,
> which in turn would make probing the rockchip-drm device fail.
> 
> So only count the target as rgb device if the function actually
> returns 0.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_rgb.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> index ae730275a34f..79a7e60633e0 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> @@ -98,7 +98,8 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
>  		if (of_property_read_u32(endpoint, "reg", &endpoint_id))
>  			endpoint_id = 0;
>  
> -		if (rockchip_drm_endpoint_is_subdriver(endpoint) > 0)
> +		/* if subdriver (> 0) or error case (< 0), ignore entry */
> +		if (rockchip_drm_endpoint_is_subdriver(endpoint) != 0)
>  			continue;
>  
>  		child_count++;

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Thanks,
Miquèl
