From: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH RFT v1 2/3] drm/panfrost: call
 dev_pm_opp_of_remove_table() in all error-paths
Date: Thu, 9 Jan 2020 11:31:50 +0000
Message-ID: <394ef595-198a-3cd1-968e-2182098da92a@arm.com>
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
 <20200107230626.885451-3-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200107230626.885451-3-martin.blumenstingl@googlemail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io, tomeu.vizoso@collabora.com, robh@kernel.org
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org, robin.murphy@arm.com
List-Id: linux-rockchip.vger.kernel.org

On 07/01/2020 23:06, Martin Blumenstingl wrote:
> If devfreq_recommended_opp() fails we need to undo
> dev_pm_opp_of_add_table() by calling dev_pm_opp_of_remove_table() (just
> like we do it in the other error-path below).
> 
> Fixes: f3ba91228e8e91 ("drm/panfrost: Add initial panfrost driver")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Reviewed-by: Steven Price <steven.price@arm.com>

> ---
>  drivers/gpu/drm/panfrost/panfrost_devfreq.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> index 1471588763ce..170f6c8c9651 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> @@ -93,8 +93,10 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
>  	cur_freq = clk_get_rate(pfdev->clock);
>  
>  	opp = devfreq_recommended_opp(dev, &cur_freq, 0);
> -	if (IS_ERR(opp))
> +	if (IS_ERR(opp)) {
> +		dev_pm_opp_of_remove_table(dev);
>  		return PTR_ERR(opp);
> +	}
>  
>  	panfrost_devfreq_profile.initial_freq = cur_freq;
>  	dev_pm_opp_put(opp);
> 
