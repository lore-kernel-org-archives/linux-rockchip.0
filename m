From: Archit Taneja <architt@codeaurora.org>
Subject: Re: [PATCH] drm/bridge/synopsis: stop clobbering drvdata
Date: Tue, 28 Nov 2017 11:57:50 +0530
Message-ID: <c0172a34-ebd5-bbd0-c531-c46392ac698f@codeaurora.org>
References: <20171128010538.119114-1-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171128010538.119114-1-briannorris@chromium.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: David Airlie <airlied@linux.ie>, Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Vincent Abriou <vincent.abriou@st.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Sean Paul <seanpaul@chromium.org>, Nickey Yang <nickey.yang@rock-chips.com>, hl@rock-chips.com, linux-rockchip@lists.infradead.org, mka@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 11/28/2017 06:35 AM, Brian Norris wrote:
> Bridge drivers/helpers shouldn't be clobbering the drvdata, since a
> parent driver might need to own this. Instead, let's return our
> 'dw_mipi_dsi' object and have callers pass that back to us for removal.
> 

Reviewed-by: Archit Taneja <architt@codeaurora.org>

> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 36 ++++++++++-----------------
>   drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         | 14 +++++++----
>   include/drm/bridge/dw_mipi_dsi.h              | 17 ++++++++-----
>   3 files changed, 33 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index d9cca4fd66ec..c39c7dce20ed 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -922,8 +922,6 @@ __dw_mipi_dsi_probe(struct platform_device *pdev,
>   	dsi->bridge.of_node = pdev->dev.of_node;
>   #endif
>   
> -	dev_set_drvdata(dev, dsi);
> -
>   	return dsi;
>   }
>   
> @@ -935,23 +933,16 @@ static void __dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
>   /*
>    * Probe/remove API, used from platforms based on the DRM bridge API.
>    */
> -int dw_mipi_dsi_probe(struct platform_device *pdev,
> -		      const struct dw_mipi_dsi_plat_data *plat_data)
> +struct dw_mipi_dsi *
> +dw_mipi_dsi_probe(struct platform_device *pdev,
> +		  const struct dw_mipi_dsi_plat_data *plat_data)
>   {
> -	struct dw_mipi_dsi *dsi;
> -
> -	dsi = __dw_mipi_dsi_probe(pdev, plat_data);
> -	if (IS_ERR(dsi))
> -		return PTR_ERR(dsi);
> -
> -	return 0;
> +	return __dw_mipi_dsi_probe(pdev, plat_data);
>   }
>   EXPORT_SYMBOL_GPL(dw_mipi_dsi_probe);
>   
> -void dw_mipi_dsi_remove(struct platform_device *pdev)
> +void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
>   {
> -	struct dw_mipi_dsi *dsi = platform_get_drvdata(pdev);
> -
>   	mipi_dsi_host_unregister(&dsi->dsi_host);
>   
>   	__dw_mipi_dsi_remove(dsi);
> @@ -961,31 +952,30 @@ EXPORT_SYMBOL_GPL(dw_mipi_dsi_remove);
>   /*
>    * Bind/unbind API, used from platforms based on the component framework.
>    */
> -int dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
> -		     const struct dw_mipi_dsi_plat_data *plat_data)
> +struct dw_mipi_dsi *
> +dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
> +		 const struct dw_mipi_dsi_plat_data *plat_data)
>   {
>   	struct dw_mipi_dsi *dsi;
>   	int ret;
>   
>   	dsi = __dw_mipi_dsi_probe(pdev, plat_data);
>   	if (IS_ERR(dsi))
> -		return PTR_ERR(dsi);
> +		return dsi;
>   
>   	ret = drm_bridge_attach(encoder, &dsi->bridge, NULL);
>   	if (ret) {
> -		dw_mipi_dsi_remove(pdev);
> +		dw_mipi_dsi_remove(dsi);
>   		DRM_ERROR("Failed to initialize bridge with drm\n");
> -		return ret;
> +		return ERR_PTR(ret);
>   	}
>   
> -	return 0;
> +	return dsi;
>   }
>   EXPORT_SYMBOL_GPL(dw_mipi_dsi_bind);
>   
> -void dw_mipi_dsi_unbind(struct device *dev)
> +void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi)
>   {
> -	struct dw_mipi_dsi *dsi = dev_get_drvdata(dev);
> -
>   	__dw_mipi_dsi_remove(dsi);
>   }
>   EXPORT_SYMBOL_GPL(dw_mipi_dsi_unbind);
> diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> index e5b6310240fe..7ed0ef7f6ec2 100644
> --- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> +++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> @@ -66,6 +66,7 @@ enum dsi_color {
>   struct dw_mipi_dsi_stm {
>   	void __iomem *base;
>   	struct clk *pllref_clk;
> +	struct dw_mipi_dsi *dsi;
>   };
>   
>   static inline void dsi_write(struct dw_mipi_dsi_stm *dsi, u32 reg, u32 val)
> @@ -318,21 +319,24 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>   	dw_mipi_dsi_stm_plat_data.base = dsi->base;
>   	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
>   
> -	ret = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
> -	if (ret) {
> +	platform_set_drvdata(pdev, dsi);
> +
> +	dsi->dsi = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
> +	if (IS_ERR(dsi->dsi)) {
>   		DRM_ERROR("Failed to initialize mipi dsi host\n");
>   		clk_disable_unprepare(dsi->pllref_clk);
> +		return PTR_ERR(dsi->dsi);
>   	}
>   
> -	return ret;
> +	return 0;
>   }
>   
>   static int dw_mipi_dsi_stm_remove(struct platform_device *pdev)
>   {
> -	struct dw_mipi_dsi_stm *dsi = dw_mipi_dsi_stm_plat_data.priv_data;
> +	struct dw_mipi_dsi_stm *dsi = platform_get_drvdata(pdev);
>   
>   	clk_disable_unprepare(dsi->pllref_clk);
> -	dw_mipi_dsi_remove(pdev);
> +	dw_mipi_dsi_remove(dsi->dsi);
>   
>   	return 0;
>   }
> diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
> index 9b30fec302c8..d9c6d549f971 100644
> --- a/include/drm/bridge/dw_mipi_dsi.h
> +++ b/include/drm/bridge/dw_mipi_dsi.h
> @@ -10,6 +10,8 @@
>   #ifndef __DW_MIPI_DSI__
>   #define __DW_MIPI_DSI__
>   
> +struct dw_mipi_dsi;
> +
>   struct dw_mipi_dsi_phy_ops {
>   	int (*init)(void *priv_data);
>   	int (*get_lane_mbps)(void *priv_data, struct drm_display_mode *mode,
> @@ -29,11 +31,14 @@ struct dw_mipi_dsi_plat_data {
>   	void *priv_data;
>   };
>   
> -int dw_mipi_dsi_probe(struct platform_device *pdev,
> -		      const struct dw_mipi_dsi_plat_data *plat_data);
> -void dw_mipi_dsi_remove(struct platform_device *pdev);
> -int dw_mipi_dsi_bind(struct platform_device *pdev, struct drm_encoder *encoder,
> -		     const struct dw_mipi_dsi_plat_data *plat_data);
> -void dw_mipi_dsi_unbind(struct device *dev);
> +struct dw_mipi_dsi *dw_mipi_dsi_probe(struct platform_device *pdev,
> +				      const struct dw_mipi_dsi_plat_data
> +				      *plat_data);
> +void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi);
> +struct dw_mipi_dsi *dw_mipi_dsi_bind(struct platform_device *pdev,
> +				     struct drm_encoder *encoder,
> +				     const struct dw_mipi_dsi_plat_data
> +				     *plat_data);
> +void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi);
>   
>   #endif /* __DW_MIPI_DSI__ */
> 

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
