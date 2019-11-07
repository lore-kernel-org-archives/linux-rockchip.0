From: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] drm/rockchip: use DRM_DEV_ERROR for log output
Date: Thu, 07 Nov 2019 01:54:22 -0800
Message-ID: <4c74db2614cefe23f888d0643c2d7c356086745a.camel@perches.com>
References: <20191107092945.15513-1-wambui.karugax@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191107092945.15513-1-wambui.karugax@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Wambui Karuga <wambui.karugax@gmail.com>, hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 2019-11-07 at 12:29 +0300, Wambui Karuga wrote:
> Replace the use of the dev_err macro with the DRM_DEV_ERROR
> DRM helper macro.

The commit message should show the reason _why_ you are doing
this instead of just stating that you are doing this.

It's not that dev_err is uncommon in drivers/gpu/drm.

$ git grep -w dev_err drivers/gpu/drm | wc -l
1950
$ git grep -w DRM_DEV_ERROR drivers/gpu/drm | wc -l
756

> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
[]
> @@ -916,7 +916,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  	}
>  
>  	if (!dsi->cdata) {
> -		dev_err(dev, "no dsi-config for %s node\n", np->name);
> +		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
>  		return -EINVAL;
>  	}
