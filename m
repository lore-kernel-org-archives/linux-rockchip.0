From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH RFT v1 1/3] drm/panfrost: enable devfreq based the
 "operating-points-v2" property
Date: Wed, 8 Jan 2020 11:18:53 +0000
Message-ID: <a85f2063-f412-9762-58d1-47fdffb24af9@arm.com>
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
 <20200107230626.885451-2-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200107230626.885451-2-martin.blumenstingl@googlemail.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io, steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, daniel@ffwll.ch, airlied@linux.ie, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 07/01/2020 11:06 pm, Martin Blumenstingl wrote:
> Decouple the check to see whether we want to enable devfreq for the GPU
> from dev_pm_opp_set_regulators(). This is preparation work for adding
> back support for regulator control (which means we need to call
> dev_pm_opp_set_regulators() before dev_pm_opp_of_add_table(), which
> means having a check for "is devfreq enabled" that is not tied to
> dev_pm_opp_of_add_table() makes things easier).

Hmm, what about cases like the SCMI DVFS protocol where the OPPs are 
dynamically discovered rather than statically defined in DT?

Robin.

> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>   drivers/gpu/drm/panfrost/panfrost_devfreq.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> index 413987038fbf..1471588763ce 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> @@ -5,6 +5,7 @@
>   #include <linux/platform_device.h>
>   #include <linux/pm_opp.h>
>   #include <linux/clk.h>
> +#include <linux/property.h>
>   #include <linux/regulator/consumer.h>
>   
>   #include "panfrost_device.h"
> @@ -79,10 +80,12 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
>   	struct devfreq *devfreq;
>   	struct thermal_cooling_device *cooling;
>   
> -	ret = dev_pm_opp_of_add_table(dev);
> -	if (ret == -ENODEV) /* Optional, continue without devfreq */
> +	if (!device_property_present(dev, "operating-points-v2"))
> +		/* Optional, continue without devfreq */
>   		return 0;
> -	else if (ret)
> +
> +	ret = dev_pm_opp_of_add_table(dev);
> +	if (ret)
>   		return ret;
>   
>   	panfrost_devfreq_reset(pfdev);
> 
