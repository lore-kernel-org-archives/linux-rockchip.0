From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] ASoC: rockchip: Fix a reference count leak.
Date: Thu, 18 Jun 2020 14:32:15 +0200
Message-ID: <3050852.oyibrqGndV@diego>
References: <20200613205158.27296-1-wu000273@umn.edu>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200613205158.27296-1-wu000273@umn.edu>
Sender: linux-kernel-owner@vger.kernel.org
To: wu000273@umn.edu
Cc: kjlu@umn.edu, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 13. Juni 2020, 22:51:58 CEST schrieb wu000273@umn.edu:
> From: Qiushi Wu <wu000273@umn.edu>
> 
> Calling pm_runtime_get_sync increments the counter even in case of
> failure, causing incorrect ref count if pm_runtime_put is not called in
> error handling paths. Call pm_runtime_put if pm_runtime_get_sync fails.
> 
> Fixes: fc05a5b22253 ("ASoC: rockchip: add support for pdm controller")
> Signed-off-by: Qiushi Wu <wu000273@umn.edu>

somewhat unintuitive, but I checked __pm_runtime_resume for it, so
Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  sound/soc/rockchip/rockchip_pdm.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
> index 7cd42fcfcf38..1707414cfa92 100644
> --- a/sound/soc/rockchip/rockchip_pdm.c
> +++ b/sound/soc/rockchip/rockchip_pdm.c
> @@ -590,8 +590,10 @@ static int rockchip_pdm_resume(struct device *dev)
>  	int ret;
>  
>  	ret = pm_runtime_get_sync(dev);
> -	if (ret < 0)
> +	if (ret < 0) {
> +		pm_runtime_put(dev);
>  		return ret;
> +	}
>  
>  	ret = regcache_sync(pdm->regmap);
>  
> 
