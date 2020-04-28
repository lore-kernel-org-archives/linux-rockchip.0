From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] drm/rockchip: cdn-dp-core: Make
 cdn_dp_core_suspend/resume __maybe_unused
Date: Tue, 28 Apr 2020 23:54:34 +0200
Message-ID: <8ad960b2-0c32-5043-7170-71b46fc150c3@collabora.com>
References: <20200428213138.3171708-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200428213138.3171708-1-arnd@arndb.de>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Arnd Bergmann <arnd@arndb.de>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: Sam Ravnborg <sam@ravnborg.org>, Thierry Reding <treding@nvidia.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd,

On 28/4/20 23:31, Arnd Bergmann wrote:
> With the new static annotation, the compiler warns when the functions
> are actually unused:
> 

Right, thank you for the patch.

> drivers/gpu/drm/rockchip/cdn-dp-core.c:1123:12: error: 'cdn_dp_resume' defined but not used [-Werror=unused-function]
>  1123 | static int cdn_dp_resume(struct device *dev)
>       |            ^~~~~~~~~~~~~
> 
> Mark them __maybe_unused to suppress that warning as well.
> 
> Fixes: 7c49abb4c2f8 ("drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume static")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

> ---
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> index c634b95b50f7..1cde98c6b0e6 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -1106,7 +1106,7 @@ static const struct component_ops cdn_dp_component_ops = {
>  	.unbind = cdn_dp_unbind,
>  };
>  
> -static int cdn_dp_suspend(struct device *dev)
> +static __maybe_unused int cdn_dp_suspend(struct device *dev)
>  {
>  	struct cdn_dp_device *dp = dev_get_drvdata(dev);
>  	int ret = 0;
> @@ -1120,7 +1120,7 @@ static int cdn_dp_suspend(struct device *dev)
>  	return ret;
>  }
>  
> -static int cdn_dp_resume(struct device *dev)
> +static __maybe_unused int cdn_dp_resume(struct device *dev)
>  {
>  	struct cdn_dp_device *dp = dev_get_drvdata(dev);
>  
> 
