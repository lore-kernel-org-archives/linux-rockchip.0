From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v2] MAINTAINERS: change maintainer for Rockchip drm
 drivers
Date: Wed, 29 Nov 2017 09:27:10 -0500
Message-ID: <20171129142709.c6aj6tgmkhjiaeec@art_vandelay>
References: <19897082.KH862Wxx3L@diego>
 <20171129142459.32351-1-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20171129142459.32351-1-seanpaul@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: dri-devel@lists.freedesktop.org
Cc: Doug Anderson <dianders@chromium.org>, Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Mark Yao <mark.yao@rock-chips.com>, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Nov 29, 2017 at 09:24:42AM -0500, Sean Paul wrote:
> From: Mark Yao <mark.yao@rock-chips.com>
> 
> For personal reasons, Mark Yao will leave rockchip,
> can not continue maintain drm/rockchip, Sandy Huang
> and Heiko Stübner will take over drm/rockchip.
> 
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: Heiko Stübner <heiko@sntech.de>
> 
> Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> Acked-by: Heiko Stuebner <heiko@sntech.de>
> [seanpaul added Heiko]
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Link: https://patchwork.freedesktop.org/patch/msgid/1510568131-28838-1-git-send-email-mark.yao@rock-chips.com

Applied to drm-misc-next (with the correct Link)

Sean

> ---
> 
> Changed in v2:
> - Added Heiko as co-maintainer
> 
> 
>  MAINTAINERS | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d4b63c7ffb0e..4f0756a4ff1a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4625,7 +4625,8 @@ F:	Documentation/devicetree/bindings/display/bridge/renesas,dw-hdmi.txt
>  F:	Documentation/devicetree/bindings/display/renesas,du.txt
>  
>  DRM DRIVERS FOR ROCKCHIP
> -M:	Mark Yao <mark.yao@rock-chips.com>
> +M:	Sandy Huang <hjc@rock-chips.com>
> +M:	Heiko Stübner <heiko@sntech.de>
>  L:	dri-devel@lists.freedesktop.org
>  S:	Maintained
>  F:	drivers/gpu/drm/rockchip/
> -- 
> 2.15.0.417.g466bffb3ac-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
