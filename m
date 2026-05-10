Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7388ACD3427
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 19:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iL4OIvPJKr5Kcp9udqbekGAxxMoUYWRHlgVAqOCyy6E=; b=X9DYWBLy/tSfQh
	1Y8UTP0z0QemJWUdtjZPhbuzsPvazBZb31d3fa8T7Rkwv1ol6OYIjQ12Bm2PDtqSg0jo0ZT72rHJ9
	zAIYPNyMNvHJc5qzIJe4Pj9Sy+s+xcKJr/+Y/mQ3sQPsmPOzaFS5OAgQt4afDOe4zEsjLqyjWu8kC
	hyvZOOIBB+PfiKNYpKWIj9WbQPr6EqiqzGbeMNZ27EqEdWfvkjgmTu2dRO74XDj+RcX1BI/vCf03I
	zicMhIrAe88jY/ZNgFzRv08J50DPipUCqMBozUPPSiVrczHqBQ+BKaRspWalqnf7PZeG1fIzI+XLU
	M71u/M/XXWir+SzBNpkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM9ad-0000000BSnd-0WeU;
	Sun, 10 May 2026 19:13:23 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM9aZ-0000000BSmO-1A2V
	for linux-rockchip@lists.infradead.org;
	Sun, 10 May 2026 19:13:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1778440393;
 bh=8NtVp+XegjZHVec+TG++C7hqL/jdKwHQkADv6jK3v0Y=;
 b=eqwHY94sQZD+tijSFQsvrkX1zVN3uMra2fdXvsQ4XHPGFwMBAlJrYT/RPT6x7ASnTzay/Eo+P
 /WTwU4qhPpLhkgjLSh/MoZscGUkMSSGNHEfj8VxJzlewWNw2I1kbkNqAWfPk6805T9gotkIWUcy
 uBjpMSdNsMdKFwlzAT+c7WKGoc9MY36z2rR3WLAqJ+ztC1EQfJyhtMgzhCvaYJdog+ilbqx/hbM
 E879vxe/xQbtggm1IWudH4rzH8p04+Sly4UFpUGYbhQXo7UzdrujWdUYjmEwM4Ml4Fx1VZshIl+
 TnU/HcRkmHNrF/ToMO2yqC/Cm2nInEPqvoDdlKRcw4jA==
X-Forward-Email-ID: 6a00d88e8983a631c215f734
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <53e09f70-c449-49bb-b2a0-636d5d4bd395@kwiboo.se>
Date: Sun, 10 May 2026 21:12:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] drm/rockchip: dw_hdmi: Apply
 DRM_BRIDGE_ATTACH_NO_CONNECTOR and the bridge-connector
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, hjc@rock-chips.com, heiko@sntech.de,
 andy.yan@rock-chips.com, wens@kernel.org, samuel@sholland.org,
 luca.ceresoli@bootlin.com, Laurent.pinchart@ideasonboard.com,
 jernej.skrabec@gmail.com, victor.liu@nxp.com,
 dmitry.baryshkov@oss.qualcomm.com, shengjiu.wang@nxp.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20260403070032.447102-1-damon.ding@rock-chips.com>
 <20260403070032.447102-4-damon.ding@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260403070032.447102-4-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_121319_480499_A9BB053A 
X-CRM114-Status: GOOD (  20.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Damon,

On 4/3/2026 9:00 AM, Damon Ding wrote:
> Convert this driver to DRM_BRIDGE_ATTACH_NO_CONNECTOR and to the
> drm_bridge_connector framework which is the current DRM bridge best
> practice.

Changing to use the bridge connector at this stage will cause the
Rockchip platform to drop features the dw-hdmi connector currently only
can provide, e.g. a CEC notifier, some connector properties and more.

I am also currently working on a multi series effort to:
- phy: rockchip: inno-hdmi: Change TMDS rate handling to configure() ops [v2]
- drm/rockchip: dw_hdmi: Misc cleanup and propagate bus format [v1]
- drm: bridge: dw_hdmi: Misc enable/disable, CEC and EDID cleanup [v5]
- drm/bridge: dw-hdmi: Improve input/output bus format handling
- drm/bridge: dw-hdmi: Convert to a HDMI bridge and use of bridge connector
- drm/bridge: dw-hdmi: Add and use tmds_char_rate_valid() plat data ops
- drm/meson: hdmi: Misc cleanup and use CEC notifier helpers
- drm/rockchip: dw_hdmi: Enable YCbCr and Deep Color modes
Link to snapshot: https://github.com/Kwiboo/linux-rockchip/commits/next-20260508-rk-hdmi-v3/

Part of that effort include to fully convert the dw-hdmi bridge into a
HDMI bridge, something that is required to fully be able to replace all
features currently provided by the use of the dw-hdmi connector.

In that effort I have also taken a different approach and instead
replace the dw-hdmi connector with the bridge connector directly from
inside the dw-hdmi bridge driver.

Regards,
Jonas

> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/rockchip/Kconfig            |  1 +
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 19 +++++++++++++++----
>  2 files changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index e7f49fe845ea..69b832d0c8c4 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -76,6 +76,7 @@ config ROCKCHIP_DW_DP
>  
>  config ROCKCHIP_DW_HDMI
>  	bool "Rockchip specific extensions for Synopsys DW HDMI"
> +	select DRM_BRIDGE_CONNECTOR
>  	help
>  	  This selects support for Rockchip SoC specific extensions
>  	  for the Synopsys DesignWare HDMI driver. If you want to
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index 21b141b7cb9c..b5cfcb936078 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -13,6 +13,7 @@
>  #include <linux/regulator/consumer.h>
>  
>  #include <drm/bridge/dw_hdmi.h>
> +#include <drm/drm_bridge_connector.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_probe_helper.h>
> @@ -542,6 +543,7 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>  	struct drm_device *drm = data;
>  	struct drm_encoder *encoder;
>  	struct rockchip_hdmi *hdmi;
> +	struct drm_connector *connector;
>  	int ret;
>  
>  	if (!pdev->dev.of_node)
> @@ -608,7 +610,7 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>  
>  	platform_set_drvdata(pdev, hdmi);
>  
> -	hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data, 0);
> +	hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
>  
>  	/*
>  	 * If dw_hdmi_bind() fails we'll never call dw_hdmi_unbind(),
> @@ -616,12 +618,21 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>  	 */
>  	if (IS_ERR(hdmi->hdmi)) {
>  		ret = PTR_ERR(hdmi->hdmi);
> -		goto err_bind;
> +		goto err_cleanup_encoder;
>  	}
>  
> -	return 0;
> +	connector = drm_bridge_connector_init(drm, encoder);
> +	if (IS_ERR(connector)) {
> +		ret = PTR_ERR(connector);
> +		dev_err(hdmi->dev, "Failed to initialize bridge_connector\n");
> +		goto err_unbind_bridge;
> +	}
>  
> -err_bind:
> +	return drm_connector_attach_encoder(connector, encoder);
> +
> +err_unbind_bridge:
> +	dw_hdmi_unbind(hdmi->hdmi);
> +err_cleanup_encoder:
>  	drm_encoder_cleanup(encoder);
>  
>  	return ret;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
