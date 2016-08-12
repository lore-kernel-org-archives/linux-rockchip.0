From: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>
Subject: Re: [PATCH v2 1/2] drm: Introduce DRM_DEV_* log messages
Date: Fri, 12 Aug 2016 19:39:38 +0100
Message-ID: <20160812183938.GH15011@nuc-i3427.alporthouse.com>
References: <CAOw6vbJ+CO8uV34jzejycnAvWj7VCZ0hgDPMU4RFRp6xrCcMPg@mail.gmail.com>
 <1471023000-3820-1-git-send-email-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1471023000-3820-1-git-send-email-seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Aug 12, 2016 at 01:30:00PM -0400, Sean Paul wrote:
> This patch consolidates all the various log functions/macros into
> one uber function, drm_log. It also introduces some new DRM_DEV_*
> variants that print the device name to delineate multiple devices
> of the same type.
> 
> Signed-off-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> 
> Changes in v2:
> 	- Use dev_printk for the dev variant (Chris Wilson)
> 
> 
>  drivers/gpu/drm/drm_drv.c |  31 +++++------
>  include/drm/drmP.h        | 133 ++++++++++++++++++++++++----------------------
>  2 files changed, 82 insertions(+), 82 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> index 57ce973..edd3291 100644
> --- a/drivers/gpu/drm/drm_drv.c
> +++ b/drivers/gpu/drm/drm_drv.c
> @@ -63,37 +63,30 @@ static struct idr drm_minors_idr;
>  
>  static struct dentry *drm_debugfs_root;
>  
> -void drm_err(const char *format, ...)
> +void drm_log(const struct device *dev, const char *level, unsigned int category,

I would have called this drm_printk() to match the function it wraps.

> +	     const char *function_name, const char *prefix,
> +	     const char *format, ...)
>  {
>  	struct va_format vaf;
>  	va_list args;
>  
> -	va_start(args, format);
> -
> -	vaf.fmt = format;
> -	vaf.va = &args;
> -
> -	printk(KERN_ERR "[" DRM_NAME ":%ps] *ERROR* %pV",
> -	       __builtin_return_address(0), &vaf);
> -
> -	va_end(args);
> -}
> -EXPORT_SYMBOL(drm_err);
> -
> -void drm_ut_debug_printk(const char *function_name, const char *format, ...)
> -{
> -	struct va_format vaf;
> -	va_list args;
> +	if (category != DRM_UT_NONE && !(drm_debug & category))
> +		return;
>  
>  	va_start(args, format);
>  	vaf.fmt = format;
>  	vaf.va = &args;
>  
> -	printk(KERN_DEBUG "[" DRM_NAME ":%s] %pV", function_name, &vaf);
> +	if (dev)
> +		dev_printk(level, dev, "[" DRM_NAME ":%s]%s %pV", function_name,
> +			   prefix, &vaf);
> +	else
> +		printk("%s[" DRM_NAME ":%s]%s %pV", level, function_name,
> +		       prefix, &vaf);

lgtm.

> -#define DRM_ERROR(fmt, ...)				\
> -	drm_err(fmt, ##__VA_ARGS__)
> +#define DRM_DEV_ERROR(dev, fmt, ...)					\
> +	drm_log(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*", fmt,	\
> +		##__VA_ARGS__)
> +#define DRM_ERROR(fmt, ...) DRM_DEV_ERROR(NULL, fmt, ##__VA_ARGS__)

And these look like a reasonable solution given the constraints.

Out of curiosity, how much did the kernel build grow by adding a NULL
parameter everywhere?

Reviewed-by: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>
-Chris

-- 
Chris Wilson, Intel Open Source Technology Centre
