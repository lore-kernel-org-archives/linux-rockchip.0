From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH][next] drm/rockchip: lvds: ensure ret is assigned before
 checking for an error
Date: Mon, 3 Aug 2020 08:46:45 +0200
Message-ID: <20200803084645.442b5178@xps13>
References: <20200714190003.744069-1-colin.king@canonical.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-janitors-owner@vger.kernel.org>
In-Reply-To: <20200714190003.744069-1-colin.king@canonical.com>
Sender: kernel-janitors-owner@vger.kernel.org
To: Colin King <colin.king@canonical.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello,

Colin King <colin.king@canonical.com> wrote on Tue, 14 Jul 2020
20:00:03 +0100:

> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently there are two places where the return status in ret is being
> checked for an error however the assignment of ret has been omitted
> making the checks redundant.  Fix this by adding in the missing assignments
> of ret.
> 
> Addresses-Coverity: ("Logically dead code")
> Fixes: cca1705c3d89 ("drm/rockchip: lvds: Add PX30 support")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_lvds.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> index 63f967902c2d..b45c618b9793 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> @@ -499,11 +499,11 @@ static int px30_lvds_probe(struct platform_device *pdev,
>  	if (IS_ERR(lvds->dphy))
>  		return PTR_ERR(lvds->dphy);
>  
> -	phy_init(lvds->dphy);
> +	ret = phy_init(lvds->dphy);
>  	if (ret)
>  		return ret;
>  
> -	phy_set_mode(lvds->dphy, PHY_MODE_LVDS);
> +	ret = phy_set_mode(lvds->dphy, PHY_MODE_LVDS);
>  	if (ret)
>  		return ret;
>  

I thought I (or Heiko) already sent a patch for that but apparently
not...

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Thanks,
Miquèl
