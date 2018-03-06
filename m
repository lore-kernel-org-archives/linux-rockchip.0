From: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v4 15/38] drm/bridge: analogix_dp: Ensure edp is
 disabled when shutting down the panel
Date: Tue, 06 Mar 2018 08:35:28 +0100
Message-ID: <3b9537bb-0471-775e-d43b-1f1ccd46b94c@samsung.com>
References: <20180305222324.5872-1-enric.balletbo@collabora.com>
        <CGME20180305222414epcas5p4bdc22ede027606945c97d3429c3bd10c@epcas5p4.samsung.com>
        <20180305222324.5872-16-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <20180305222324.5872-16-enric.balletbo@collabora.com>
Content-language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>, architt@codeaurora.org, inki.dae@samsung.com, thierry.reding@gmail.com, hjc@rock-chips.com, seanpaul@chromium.org, airlied@linux.ie, tfiga@chromium.org, heiko@sntech.de
Cc: hshi@chromium.org, wzz@rock-chips.com, hl@rock-chips.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, orjan.eide@arm.com, =?UTF-8?Q?St=c3=a9phane_Marchesin?= <marcheu@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Hi All,

This is the patch, which introduces the issue I've pointed here:

https://lists.freedesktop.org/archives/dri-devel/2018-March/167794.html

On 2018-03-05 23:23, Enric Balletbo i Serra wrote:
> From: Lin Huang <hl@rock-chips.com>
>
> When panel is shut down, we should make sure edp can be disabled to avoid
> undefined behavior.
>
> Cc: Stéphane Marchesin <marcheu@chromium.org>
> Signed-off-by: Lin Huang <hl@rock-chips.com>
> Signed-off-by: zain wang <wzz@rock-chips.com>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
> Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
>
>   drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 11 +++++++++++
>   1 file changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 92fb9a072cb6..9b7d530ad24c 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1160,6 +1160,12 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
>   
>   	pm_runtime_get_sync(dp->dev);
>   
> +	ret = clk_prepare_enable(dp->clock);
> +	if (ret < 0) {
> +		DRM_ERROR("Failed to prepare_enable the clock clk [%d]\n", ret);
> +		goto out_dp_clk_pre;
> +	}
> +
>   	if (dp->plat_data->power_on)
>   		dp->plat_data->power_on(dp->plat_data);
>   
> @@ -1191,6 +1197,8 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
>   	phy_power_off(dp->phy);
>   	if (dp->plat_data->power_off)
>   		dp->plat_data->power_off(dp->plat_data);
> +	clk_disable_unprepare(dp->clock);
> +out_dp_clk_pre:
>   	pm_runtime_put_sync(dp->dev);
>   
>   	return ret;
> @@ -1234,10 +1242,13 @@ static void analogix_dp_bridge_disable(struct drm_bridge *bridge)
>   
>   	disable_irq(dp->irq);
>   	phy_power_off(dp->phy);
> +	analogix_dp_set_analog_power_down(dp, POWER_ALL, 1);

In case of Exynos DP, external PHY is used to power the DP block, so no
register access should be performed after phy_power_off(). Please move
analogix_dp_set_analog_power_down() before phy_power_off().

>   
>   	if (dp->plat_data->power_off)
>   		dp->plat_data->power_off(dp->plat_data);
>   
> +	clk_disable_unprepare(dp->clock);
> +
>   	pm_runtime_put_sync(dp->dev);
>   
>   	ret = analogix_dp_prepare_panel(dp, false, true);

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland
