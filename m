From: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>
Subject: Re: [PATCH v3 1/2] drm: Introduce DRM_DEV_* log messages
Date: Fri, 12 Aug 2016 21:53:31 +0100
Message-ID: <20160812205330.GJ15011@nuc-i3427.alporthouse.com>
References: <20160812194438.GI15011@nuc-i3427.alporthouse.com>
 <1471033777-9922-1-git-send-email-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1471033777-9922-1-git-send-email-seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, lukas-JFq808J9C/izQB+pC5nmwQ@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Aug 12, 2016 at 04:29:37PM -0400, Sean Paul wrote:
> This patch consolidates all the various log functions/macros into
> one uber function, drm_printk. It also introduces some new DRM_DEV_*
> variants that use dev_printk to print the device name, which helps
> delineate multiple devices of the same type.
> 
> Signed-off-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> 
> Changes in v2:
>         - Use dev_printk for the dev variant (Chris Wilson)
> 
> Changes in v3:
> 	- Rename drm_log to drm_dev_printk (Chris Wilson)
> 	- Break out drm_printk from drm_dev_printk to reduce
> 	  image growth due to passing NULL around (Chris Wilson)
> 
>  drivers/gpu/drm/drm_drv.c |  25 ++++++---
>  include/drm/drmP.h        | 140 +++++++++++++++++++++++++++-------------------
>  2 files changed, 101 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> index 57ce973..e141ead 100644
> --- a/drivers/gpu/drm/drm_drv.c
> +++ b/drivers/gpu/drm/drm_drv.c
> @@ -63,37 +63,46 @@ static struct idr drm_minors_idr;
>  
>  static struct dentry *drm_debugfs_root;
>  
> -void drm_err(const char *format, ...)
> +void drm_dev_printk(const struct device *dev, const char *level,
> +		    unsigned int category, const char *function_name,
> +		    const char *prefix, const char *format, ...)
>  {
>  	struct va_format vaf;
>  	va_list args;
>  
> -	va_start(args, format);
> +	if (category != DRM_UT_NONE && !(drm_debug & category))
> +		return;
>  
> +	va_start(args, format);
>  	vaf.fmt = format;
>  	vaf.va = &args;
>  
> -	printk(KERN_ERR "[" DRM_NAME ":%ps] *ERROR* %pV",
> -	       __builtin_return_address(0), &vaf);
> +	dev_printk(level, dev, "[" DRM_NAME ":%s]%s %pV", function_name, prefix,
> +		   &vaf);

dev_printk does handle NULL dev, that's a relief!

>  
>  	va_end(args);
>  }
> -EXPORT_SYMBOL(drm_err);
> +EXPORT_SYMBOL(drm_dev_printk);
>  
> -void drm_ut_debug_printk(const char *function_name, const char *format, ...)
> +void drm_printk(const char *level, unsigned int category,
> +		const char *function_name, const char *prefix,
> +		const char *format, ...)
>  {
>  	struct va_format vaf;
>  	va_list args;
>  
> +	if (category != DRM_UT_NONE && !(drm_debug & category))
> +		return;
> +
>  	va_start(args, format);
>  	vaf.fmt = format;
>  	vaf.va = &args;
>  
> -	printk(KERN_DEBUG "[" DRM_NAME ":%s] %pV", function_name, &vaf);
> +	printk("%s[" DRM_NAME ":%s]%s %pV", level, function_name, prefix, &vaf);

Ok, I just tried to make a common drm_dev_printk_emit() and made a right
mess. A pair of functions is definitely better.

Reviewed-by: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>
-Chris

-- 
Chris Wilson, Intel Open Source Technology Centre
