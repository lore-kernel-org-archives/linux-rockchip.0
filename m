From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH 3/3] drm/rockchip: vop: Add more RGB output interface type
Date: Tue, 19 Sep 2017 16:03:06 -0700
Message-ID: <20170919230306.rcctwo5qnfjw26az@art_vandelay>
References: <1505360594-196508-1-git-send-email-hjc@rock-chips.com>
 <1505360608-377-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1505360608-377-1-git-send-email-hjc@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>
Cc: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Sep 14, 2017 at 11:43:28AM +0800, Sandy Huang wrote:
> This patch add serial RGB output interface for rockchip vop, the
> more info about serial RGB output interface described at the
> following file:
> 
> Documentation/devicetree/bindings/display/rockchip/rockchip-rgb.txt
> 
> Signed-off-by: Sandy Huang <hjc@rock-chips.com>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index 56bbd2e..59a01c3 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -209,6 +209,8 @@ struct vop_data {
>  #define ROCKCHIP_OUT_MODE_P888	0
>  #define ROCKCHIP_OUT_MODE_P666	1
>  #define ROCKCHIP_OUT_MODE_P565	2
> +#define ROCKCHIP_OUT_MODE_S888	8
> +#define ROCKCHIP_OUT_MODE_S888_DUMMY	12
>  /* for use special outface */
>  #define ROCKCHIP_OUT_MODE_AAAA	15
>  
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Sean Paul, Software Engineer, Google / Chromium OS
