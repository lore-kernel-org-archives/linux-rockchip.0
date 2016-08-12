From: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>
Subject: Re: [PATCH 1/2] drm: Introduce DRM_DEV_* log messages
Date: Fri, 12 Aug 2016 18:13:44 +0100
Message-ID: <20160812171344.GF15011@nuc-i3427.alporthouse.com>
References: <1471021254-2563-1-git-send-email-seanpaul@chromium.org>
 <1471021254-2563-2-git-send-email-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1471021254-2563-2-git-send-email-seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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

On Fri, Aug 12, 2016 at 01:00:53PM -0400, Sean Paul wrote:
> This patch consolodates all the various log functions/macros into
> one uber function, drm_log. It also introduces some new DRM_DEV_*
> variants that print the device name to delineate multiple devices
> of the same type.

> +void drm_log(const struct device *dev, const char *level, unsigned int category,
> +	     const char *function_name, const char *prefix,
> +	     const char *format, ...)
>  {
> +	if (dev)
> +		printk("%s%s [" DRM_NAME ":%s]%s %pV", level,
> +		       dev_name(dev), function_name, prefix, &vaf);
> +	else
> +		printk("%s[" DRM_NAME ":%s]%s %pV", level, function_name,
> +		       prefix, &vaf);

My hope was that we would migrate towards dev_printk so that our log
messages would have better conformity, especially between our messages
and those printed by subsystems on our behalf (using our struct device).
-Chris

-- 
Chris Wilson, Intel Open Source Technology Centre
