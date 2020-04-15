From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH][next] drm/rockchip: fix spelling mistake "modifer" ->
 "modifier"
Date: Wed, 15 Apr 2020 13:25:23 +0200
Message-ID: <20200415112523.GA3456981@phenom.ffwll.local>
References: <20200415083420.366279-1-colin.king@canonical.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20200415083420.366279-1-colin.king@canonical.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Colin King <colin.king@canonical.com>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Apr 15, 2020 at 09:34:20AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a DRM_DEBUG_KMS debug message. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Queued for 5.8, thanks for your patch.
-Daniel

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index b87d22eb6ae1..33463b79a37b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -769,7 +769,7 @@ static bool rockchip_mod_supported(struct drm_plane *plane,
>  		return true;
>  
>  	if (!rockchip_afbc(modifier)) {
> -		DRM_DEBUG_KMS("Unsupported format modifer 0x%llx\n", modifier);
> +		DRM_DEBUG_KMS("Unsupported format modifier 0x%llx\n", modifier);
>  
>  		return false;
>  	}
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
