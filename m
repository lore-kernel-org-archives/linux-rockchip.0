Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C5A4C021B8
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Mar 2025 18:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHWfTdaLpsyYhIeHpcG+kTZu2GEZDkJCXrii5kC3u90=; b=kFG7I3X6jO/3Wp
	4Ij1B/OSuhKDQMvShMdEClaXyrVgYpT5kR8BbUMUYNDuzAvB9Dos31bTcn/Bhto+7ZiCz6PTnmyxj
	RYRxKXclZJnukWoSVb4bHbDq2i85EibT6Og+vC/4GSo3wZZQFI1+1NhA43cQgocwTNfWxc7UDR6wP
	IhWO2gmttcwPzrgYBhNlpWwHKPA2u1LP93zWHHvTI2PQKHxiEhG8+g3va12uiWi+rJU64WjB9jVWb
	a8uGPLqrS7szfRjK+e3gfSbsGjy1rx0UhZgW+vQI9FMPtFmicrNIJrjWcONjuLikZZB5HXRamRY56
	9qjdIPIa+FxzHG9AwJzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toRSU-0000000ElDO-28ql;
	Sat, 01 Mar 2025 18:21:06 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toRQu-0000000El2d-41Yp
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Mar 2025 18:19:30 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-30bab0ad5a8so3573801fa.3
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Mar 2025 10:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740853167; x=1741457967; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xHVrOp0plJEvKk4wQeeIG01mmBNV7pQdYoH12vmT7VE=;
        b=RFnmw0kWGbZoQqtPblsJ/7/c+Ekdt+/USsqno5uqU4ChJ8Xp4FQoPg29OyTjpbhWy5
         /wuR6CRXfeYcj0vWI3JEXCoZMiUriQsv5e3p7QME8GWjfGKJ/f2jJ/kBW9ugEpR7lU93
         diidVqKecdXJV/my6SNqcfrw8jghPiZhOqR5VPEixJeYfVnCNc1lEsW7WDu0gM/XKFP8
         59ICR86LrSHienSw1pekdbh7emZL+TuWEQtcuTyuvkYArRBLarZyx//ju65ku0gSM03y
         25SO+LqPKIpUiGY8+/SrXUH7DIV54D2uphwjg4e2PDP1EwWwPJ9Dc0+fuYnNXGTvPnA5
         3yaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740853167; x=1741457967;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHVrOp0plJEvKk4wQeeIG01mmBNV7pQdYoH12vmT7VE=;
        b=esHSdo9DHf3E8LXTdDcvCc8RqORY9k4h4kjuTbLjzaSKzWKUV8f2MwvySwB65l+CKJ
         PucxN2z7sr9PcPaswEsVh4oeii9ivygxN7LuMAZCx6GYEkut8cObjagRVnGLLaA3Xu2R
         QWisNNpLoNHtXdDhb8Iahc5DxGOOb1IcO2L+h7OEedq5uJHSroivL4LF/5HP4G+DriZO
         iBcvku668ZHA7l1x9obMW+7ojlRJ1Wmr9fpoTpXJkHcI06ucHVmE3g3clmPHxA9C0NHA
         vS3Qn9XEYYSLITcec/+GQ6P0SRGnFSXXkyONPYm1Gp46cMErdPzVqr4PAujBSxQpQ73E
         YY0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVSdHMl0hBtZW/m/M52djnsUZ0PxhjLXexV1wkt7AC254BA3DImRjQ+/oAJnjSGGFtX+0uXNAm8QENQu5gs0Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0x5H0Bk2W5hy1uLzUT9TvWKZlQKO4LtcizavVhWUKtUjJJDA/
	IDrAZPrVWtSZ8qf/wkf7bcGSkit86JwlQDNVNLirio6QwASyH5kfG4BKM8ZHAEE=
X-Gm-Gg: ASbGncsLnC3y9V3LXNu3pA7+pBaaVLrZxTA5yjL8ZHqp7dSIt0+/ZrKSaQE6s6+jRMr
	sgBaHYO913EA1NJtUVfBJ1w6A6evvhEzpBCmHnkrG3R31lrwb437j+ksho0odiw86V4dS4ztFuv
	fNU3YK3etC004jLISSHS99CdSbj+dqVTC6/64ZvfLnIszU97Bq2bjVioTPhMYfDPu8X1Lg4Z7J7
	5+DBM68PPu/ArhMOBGZaxBh+fiN1OJfJz/oeDuiiAO6rkbC32rURaUWFzfzLvEy2PvJlClyFde7
	J/01ew9rXAHN6Sy4TRkKr35erDVma3CSNshZPbpgnSoMbzATJ79nJ8iqOsshbDk/8VVbdMS0xEe
	kwtEH5e5JX4rcIHCP9Es6VsA6
X-Google-Smtp-Source: AGHT+IFFcVTRvC9YdwZNm8nJgfhwKBjqdfFQxBpzhAJErNH+sMCCiPsq/QOE2ScPNRbYkr86zG7NVg==
X-Received: by 2002:a2e:be21:0:b0:300:317c:9b75 with SMTP id 38308e7fff4ca-30b93215452mr26847451fa.12.1740853166988;
        Sat, 01 Mar 2025 10:19:26 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30b86878855sm8497581fa.95.2025.03.01.10.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 10:19:26 -0800 (PST)
Date: Sat, 1 Mar 2025 20:19:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 3/6] drm/rockchip: Add RK3588 DPTX output support
Message-ID: <63xbqyzdlv7jssbmvoeicz4gech3di6nr3tsyvhbhxrmvthh3f@tlf73esqcwgt>
References: <20250223113036.74252-1-andyshrk@163.com>
 <20250223113036.74252-4-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250223113036.74252-4-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_101929_004884_1BA34887 
X-CRM114-Status: GOOD (  27.26  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, devicetree@vger.kernel.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com, dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Feb 23, 2025 at 07:30:26PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add driver extension for Synopsys DesignWare DPTX IP used
> on Rockchip RK3588 SoC.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  drivers/gpu/drm/rockchip/Kconfig            |   7 +
>  drivers/gpu/drm/rockchip/Makefile           |   1 +
>  drivers/gpu/drm/rockchip/dw_dp-rockchip.c   | 162 ++++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c |   1 +
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h |   1 +
>  5 files changed, 172 insertions(+)
>  create mode 100644 drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> 
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index 26c4410b2407..c8638baf9641 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -8,6 +8,7 @@ config DRM_ROCKCHIP
>  	select DRM_PANEL
>  	select VIDEOMODE_HELPERS
>  	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
> +	select DRM_DW_DP if ROCKCHIP_DW_DP
>  	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
>  	select DRM_DW_HDMI_QP if ROCKCHIP_DW_HDMI_QP
>  	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
> @@ -58,6 +59,12 @@ config ROCKCHIP_CDN_DP
>  	  RK3399 based SoC, you should select this
>  	  option.
>  
> +config ROCKCHIP_DW_DP
> +	bool "Rockchip specific extensions for Synopsys DW DP"
> +	help
> +	  Choose this option for Synopsys DesignWare Cores DisplayPort
> +	  transmit controller support on Rockchip SoC.
> +
>  config ROCKCHIP_DW_HDMI
>  	bool "Rockchip specific extensions for Synopsys DW HDMI"
>  	help
> diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
> index 2b867cebbc12..097f062399c7 100644
> --- a/drivers/gpu/drm/rockchip/Makefile
> +++ b/drivers/gpu/drm/rockchip/Makefile
> @@ -14,6 +14,7 @@ rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI) += dw_hdmi-rockchip.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI_QP) += dw_hdmi_qp-rockchip.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_DW_MIPI_DSI) += dw-mipi-dsi-rockchip.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_DW_MIPI_DSI2) += dw-mipi-dsi2-rockchip.o
> +rockchipdrm-$(CONFIG_ROCKCHIP_DW_DP) += dw_dp-rockchip.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_INNO_HDMI) += inno_hdmi.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_LVDS) += rockchip_lvds.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_RGB) += rockchip_rgb.o
> diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> new file mode 100644
> index 000000000000..b41a41eb74d7
> --- /dev/null
> +++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> @@ -0,0 +1,162 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
> + *
> + * Author: Zhang Yubing <yubing.zhang@rock-chips.com>
> + * Author: Andy Yan <andy.yan@rock-chips.com>
> + */
> +
> +#include <linux/component.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <drm/bridge/dw_dp.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_bridge_connector.h>
> +#include <drm/drm_of.h>
> +#include <drm/drm_print.h>
> +#include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
> +
> +#include <uapi/linux/media-bus-format.h>
> +#include <uapi/linux/videodev2.h>

I'd say, include those two headers directly. Rockchip / Synopsys are the
only drivers including these uapi headers directly.

> +
> +#include "rockchip_drm_drv.h"
> +#include "rockchip_drm_vop.h"
> +
> +struct rockchip_dw_dp {
> +	struct dw_dp *base;
> +	struct device *dev;
> +	struct rockchip_encoder encoder;
> +};
> +
> +static inline struct rockchip_dw_dp *encoder_to_dp(struct drm_encoder *encoder)
> +{
> +	struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
> +
> +	return container_of(rkencoder, struct rockchip_dw_dp, encoder);
> +}
> +
> +static int dw_dp_encoder_atomic_check(struct drm_encoder *encoder,
> +				      struct drm_crtc_state *crtc_state,
> +				      struct drm_connector_state *conn_state)
> +{
> +	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
> +	struct drm_atomic_state *state = conn_state->state;
> +	struct drm_display_info *di = &conn_state->connector->display_info;
> +	struct drm_bridge *bridge  = drm_bridge_chain_get_first_bridge(encoder);
> +	struct drm_bridge_state *bridge_state = drm_atomic_get_new_bridge_state(state, bridge);
> +	u32 bus_format = bridge_state->input_bus_cfg.format;
> +
> +	switch (bus_format) {
> +	case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
> +	case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
> +		s->output_mode = ROCKCHIP_OUT_MODE_YUV420;
> +		break;
> +	case MEDIA_BUS_FMT_YUYV10_1X20:
> +	case MEDIA_BUS_FMT_YUYV8_1X16:
> +		s->output_mode = ROCKCHIP_OUT_MODE_S888_DUMMY;
> +		break;
> +	case MEDIA_BUS_FMT_RGB101010_1X30:
> +	case MEDIA_BUS_FMT_RGB888_1X24:
> +	case MEDIA_BUS_FMT_RGB666_1X24_CPADHI:
> +	case MEDIA_BUS_FMT_YUV10_1X30:
> +	case MEDIA_BUS_FMT_YUV8_1X24:
> +	default:
> +		s->output_mode = ROCKCHIP_OUT_MODE_AAAA;
> +		break;
> +	}
> +
> +	s->output_type = DRM_MODE_CONNECTOR_DisplayPort;
> +	s->bus_format = bus_format;
> +	s->bus_flags = di->bus_flags;
> +	s->color_space = V4L2_COLORSPACE_DEFAULT;
> +
> +	return 0;
> +}
> +
> +static const struct drm_encoder_helper_funcs dw_dp_encoder_helper_funcs = {
> +	.atomic_check		= dw_dp_encoder_atomic_check,
> +};
> +
> +static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct dw_dp_plat_data plat_data;
> +	struct drm_device *drm_dev = data;
> +	struct rockchip_dw_dp *dp;
> +	struct drm_encoder *encoder;
> +	struct drm_connector *connector;
> +	int ret;
> +
> +	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
> +	if (!dp)
> +		return -ENOMEM;
> +
> +	dp->dev = dev;
> +	plat_data.max_link_rate = 810000;
> +	encoder = &dp->encoder.encoder;
> +	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev, dev->of_node);
> +	rockchip_drm_encoder_set_crtc_endpoint_id(&dp->encoder, dev->of_node, 0, 0);
> +
> +	drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_TMDS);

drmm_encoder_init() ? This will allow you to get rid of
drm_encoder_cleanup() calls.

> +	drm_encoder_helper_add(encoder, &dw_dp_encoder_helper_funcs);
> +
> +	dp->base = dw_dp_bind(dev, encoder, &plat_data);
> +	if (IS_ERR(dp->base)) {
> +		ret = PTR_ERR(dp->base);
> +		drm_encoder_cleanup(encoder);
> +		return ret;
> +	}
> +
> +	connector = drm_bridge_connector_init(drm_dev, encoder);
> +	if (IS_ERR(connector)) {
> +		ret = PTR_ERR(connector);
> +		dev_err(dev, "Failed to init bridge connector: %d\n", ret);
> +		return ret;
> +	}
> +
> +	drm_connector_attach_encoder(connector, encoder);
> +
> +	return 0;
> +}
> +
> +static void dw_dp_rockchip_unbind(struct device *dev, struct device *master, void *data)
> +{
> +	struct rockchip_dw_dp *dp = dev_get_drvdata(dev);
> +
> +	drm_encoder_cleanup(&dp->encoder.encoder);
> +}
> +
> +static const struct component_ops dw_dp_rockchip_component_ops = {
> +	.bind = dw_dp_rockchip_bind,
> +	.unbind = dw_dp_rockchip_unbind,
> +};
> +
> +static int dw_dp_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +
> +	return component_add(dev, &dw_dp_rockchip_component_ops);
> +}
> +
> +static void dw_dp_remove(struct platform_device *pdev)
> +{
> +	struct rockchip_dw_dp *dp = platform_get_drvdata(pdev);
> +
> +	component_del(dp->dev, &dw_dp_rockchip_component_ops);
> +}
> +
> +static const struct of_device_id dw_dp_of_match[] = {
> +	{ .compatible = "rockchip,rk3588-dp", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, dw_dp_of_match);
> +
> +struct platform_driver dw_dp_driver = {
> +	.probe	= dw_dp_probe,
> +	.remove = dw_dp_remove,
> +	.driver = {
> +		.name = "dw-dp",
> +		.of_match_table = dw_dp_of_match,
> +	},
> +};
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index 9cf311b5dec1..2b245491c71d 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -529,6 +529,7 @@ static int __init rockchip_drm_init(void)
>  	ADD_ROCKCHIP_SUB_DRIVER(rockchip_dp_driver,
>  				CONFIG_ROCKCHIP_ANALOGIX_DP);
>  	ADD_ROCKCHIP_SUB_DRIVER(cdn_dp_driver, CONFIG_ROCKCHIP_CDN_DP);
> +	ADD_ROCKCHIP_SUB_DRIVER(dw_dp_driver, CONFIG_ROCKCHIP_DW_DP);
>  	ADD_ROCKCHIP_SUB_DRIVER(dw_hdmi_rockchip_pltfm_driver,
>  				CONFIG_ROCKCHIP_DW_HDMI);
>  	ADD_ROCKCHIP_SUB_DRIVER(dw_hdmi_qp_rockchip_pltfm_driver,
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> index c183e82a42a5..2e86ad00979c 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> @@ -87,6 +87,7 @@ int rockchip_drm_encoder_set_crtc_endpoint_id(struct rockchip_encoder *rencoder,
>  					      struct device_node *np, int port, int reg);
>  int rockchip_drm_endpoint_is_subdriver(struct device_node *ep);
>  extern struct platform_driver cdn_dp_driver;
> +extern struct platform_driver dw_dp_driver;
>  extern struct platform_driver dw_hdmi_rockchip_pltfm_driver;
>  extern struct platform_driver dw_hdmi_qp_rockchip_pltfm_driver;
>  extern struct platform_driver dw_mipi_dsi_rockchip_driver;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
