From: Sean Paul <sean@poorly.run>
Subject: Re: [PATCH] drm/rockchip: Suspend DP late
Date: Fri, 2 Aug 2019 15:26:29 -0400
Message-ID: <20190802192629.GX104440@art_vandelay>
References: <20190802184616.44822-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190802184616.44822-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, seanpaul@chromium.org, linux-rockchip@lists.infradead.org, mka@chromium.org, Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Aug 02, 2019 at 11:46:16AM -0700, Douglas Anderson wrote:
> In commit fe64ba5c6323 ("drm/rockchip: Resume DP early") we moved
> resume to be early but left suspend at its normal time.  This seems
> like it could be OK, but casues problems if a suspend gets interrupted
> partway through.  The OS only balances matching suspend/resume levels.
> ...so if suspend was called then resume will be called.  If suspend
> late was called then resume early will be called.  ...but if suspend
> was called resume early might not get called.  This leads to an
> unbalance in the clock enables / disables.
> 
> Lets take the simple fix and just move suspend to be late to match.
> This makes the PM core take proper care in keeping things balanced.
> 
> Fixes: fe64ba5c6323 ("drm/rockchip: Resume DP early")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Sean Paul <sean@poorly.run>

This should go in -misc-fixes and due to some... administrative reasons... I
will leave it on the list until Maarten has a chance to ff to -rc4 on Monday.
I'll apply it then so as to not require a backmerge.

Sean

> ---
> 
>  drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 7d7cb57410fc..f38f5e113c6b 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -436,7 +436,7 @@ static int rockchip_dp_resume(struct device *dev)
>  
>  static const struct dev_pm_ops rockchip_dp_pm_ops = {
>  #ifdef CONFIG_PM_SLEEP
> -	.suspend = rockchip_dp_suspend,
> +	.suspend_late = rockchip_dp_suspend,
>  	.resume_early = rockchip_dp_resume,
>  #endif
>  };
> -- 
> 2.22.0.770.g0f2c4a37fd-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
