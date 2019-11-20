From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH] drm/rockchip: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 17:36:44 +0100
Message-ID: <20191120163644.GN30416@phenom.ffwll.local>
References: <20191120133348.6640-1-krzk@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191120133348.6640-1-krzk@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Nov 20, 2019 at 09:33:48PM +0800, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Queued for 5.6 in drm-misc, thanks for your patch.
-Daniel
> ---
>  drivers/gpu/drm/rockchip/Kconfig | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index 6f4222f8beeb..1670a5cae3c7 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -28,17 +28,17 @@ config ROCKCHIP_ANALOGIX_DP
>  	  on RK3288 or RK3399 based SoC, you should select this option.
>  
>  config ROCKCHIP_CDN_DP
> -        bool "Rockchip cdn DP"
> +	bool "Rockchip cdn DP"
>  	depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
> -        help
> +	help
>  	  This selects support for Rockchip SoC specific extensions
>  	  for the cdn DP driver. If you want to enable Dp on
>  	  RK3399 based SoC, you should select this
>  	  option.
>  
>  config ROCKCHIP_DW_HDMI
> -        bool "Rockchip specific extensions for Synopsys DW HDMI"
> -        help
> +	bool "Rockchip specific extensions for Synopsys DW HDMI"
> +	help
>  	  This selects support for Rockchip SoC specific extensions
>  	  for the Synopsys DesignWare HDMI driver. If you want to
>  	  enable HDMI on RK3288 or RK3399 based SoC, you should select
> -- 
> 2.17.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
