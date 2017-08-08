From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 1/3] drm/bridge: make drm_connector_funcs structures const
Date: Tue, 08 Aug 2017 15:03:49 +0300
Message-ID: <5410432.rqMauYSQNE@avalon>
References: <1502191712-11231-1-git-send-email-bhumirks@gmail.com> <1502191712-11231-2-git-send-email-bhumirks@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1502191712-11231-2-git-send-email-bhumirks@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: julia.lawall@lip6.fr, architt@codeaurora.org, a.hajda@samsung.com, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, mark.yao@rock-chips.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, maxime.ripard@free-electrons.com, wens@csie.org
List-Id: linux-rockchip.vger.kernel.org

Hi Bhumika,

Thank you for the patch.

On Tuesday 08 Aug 2017 16:58:30 Bhumika Goyal wrote:
> Make these const as they are only passed to the function
> drm_connector_init and the corresponding argument is of type const.
> Done using Coccinelle
> 
> @match disable optional_qualifier@
> identifier s;
> @@
> static struct drm_connector_funcs s = {...};
> 
> @ref@
> position p;
> identifier match.s;
> @@
> s@p
> 
> @good1@
> identifier match.s;
> expression e1,e2;
> position ref.p;
> @@
> drm_connector_init(e1,e2,&s@p,...)
> 
> @bad depends on  !good1@
> position ref.p;
> identifier match.s;
> @@
> s@p
> 
> @depends on forall !bad disable optional_qualifier@
> identifier match.s;
> @@
> static
> + const
> struct drm_connector_funcs s;
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>

I can't judge the semantic patch, but the C code change looks good to me.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/gpu/drm/bridge/adv7511/adv7511_drv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
> b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c index ff9792d..ee16635
> 100644
> --- a/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
> +++ b/drivers/gpu/drm/bridge/adv7511/adv7511_drv.c
> @@ -785,7 +785,7 @@ static int adv7511_connector_get_modes(struct
> drm_connector *connector) return adv7511_detect(adv, connector);
>  }
> 
> -static struct drm_connector_funcs adv7511_connector_funcs = {
> +static const struct drm_connector_funcs adv7511_connector_funcs = {
>  	.dpms = drm_atomic_helper_connector_dpms,
>  	.fill_modes = drm_helper_probe_single_connector_modes,
>  	.detect = adv7511_connector_detect,

-- 
Regards,

Laurent Pinchart
