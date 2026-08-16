Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E58ADC5B572
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 12:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0ZFaV3BxRa9ekDVHGR8GA6q3A1L0oJj+NsXkdNYN24=; b=LZZUPcV0/k3EbC
	jSc2as6taYDLbME4ZfknmSyfGwGH/Zg4zsSVNnAGSAtyVHUQ7og1UPJIEcIkoP1yYCmvyBgWQpmeR
	12UZMAX8WmVlCw5O1jH408O9CDWJW5LdL5JOsRDbtN6+Rr/AAYwfkuRjC9p7hOGJA3xjlI/UhGemA
	E0fpesvIRIAexe3kapu0k0X4t03doLLp+/95hzSGTm898ZkLHbcztlZ18YYnzXq2aY2q6cFc7JbSt
	yUlNVLjq+GdKAT+cyM2hCOwsHwCTgkWEavVdyulDIBE1AqK1ugcz9ewtS4zBV9R8Jq5wNvZlmZo3e
	fpwU+fIQI/gPPTXQUTVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaCe-00000004lF8-3pf2;
	Sun, 16 Aug 2026 12:43:04 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvaCb-00000004lEa-2mch;
	Sun, 16 Aug 2026 12:43:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=eLDYI6fB0d2RCJjuamTPArJ83NXYqhVS5jBkxi4e8nE=; b=i
	cdqjbty2HcUwGqwUSQDQpLv7LKObNqt+0gDTPkLZ2w5OiYFLCYUEVmoJrER/mnCp
	82FzloM1NSyi4UrjsO2gEPC0gXkRSAKmWdA/nfFwg3ALI82nRfU4cWOmoJhlymzD
	iAH2usfbHroliFCCDfz5ci4uGeQSVWKjfwnwbQFuOg=
Received: from andyshrk$163.com ( [61.154.14.86] ) by
 ajax-webmail-wmsvr-40-100 (Coremail) ; Sun, 16 Aug 2026 20:41:30 +0800
 (CST)
X-Originating-IP: [61.154.14.86]
Date: Sun, 16 Aug 2026 20:41:30 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Subject: Re:[PATCH v11 02/21] drm/bridge: synopsys: dw-dp: Fix incorrect
 resource lifetimes in bind callback
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260511(2e539873) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-2-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
 <20260806-synopsys-dw-dp-improvements-v11-2-0d508505f383@collabora.com>
X-NTES-SC: AL_Qu2TBPSTu0gi5iWbZekfmUgWjuw/WsG1v/Ul1YBSP556jCrp6yoHelRJMXX9zsmrEg+xlzSHfCNT0M9dRK11eZMX4h+Bq+VJD5qckXiOYYPbKw==
MIME-Version: 1.0
Message-ID: <78ac4580.18bf.1a00a976aac.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZCgvCgD3fwz6r4FqR8cyAA--.25129W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxholg2qBr-q+aQAA3T
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_054302_090944_639B94AA 
X-CRM114-Status: GOOD (  14.44  )
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Sashiko <sashiko-bot@kernel.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@flipper.net>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hello Sebastian,

At 2026-08-07 01:02:08, "Sebastian Reichel" <sebastian.reichel@collabora.com> wrote:
>Currently the Synopsys DesignWare DP controller driver's bind function
>requests lots of resources using device managed functions. These are
>free'd on driver removal instead of at unbind time. Fix this discrepancy
>by introducing a new probe helper function and moving over the whole
>bind function. This results in a fully functional DRM bridge once probe
>succeeded. The only thing still happening when the component is bound
>is the bridge attachment, which requires the encoder.
>
>The interrupt is kept disabled while the bridge is detached to ensure no
>spurious interrupts can arrive as the interrupt handler triggers a
>worker, which accesses the DRM device.
>
>Fixes: 86eecc3a9c2e ("drm/bridge: synopsys: Add DW DPTX Controller support library")
>Reported-by: Sashiko <sashiko-bot@kernel.org>
>Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

   Acked-by: Andy Yan <andy.yan@rock-chips.com>

>---
> drivers/gpu/drm/bridge/synopsys/dw-dp.c   | 73 ++++++++++++++++---------------
> drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 53 ++++++++++++----------
> include/drm/bridge/dw_dp.h                |  5 ++-
> 3 files changed, 72 insertions(+), 59 deletions(-)
>
>diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>index 60feb3d1e14b..d7945f7fe9f0 100644
>--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
>@@ -1827,16 +1827,22 @@ static int dw_dp_bridge_attach(struct drm_bridge *bridge,
> 	dp->aux.transfer = dw_dp_aux_transfer;
> 
> 	ret = drm_dp_aux_register(&dp->aux);
>-	if (ret)
>+	if (ret) {
> 		dev_err(dev, "Aux register failed: %d\n", ret);
>+		return ret;
>+	}
> 
>-	return ret;
>+	enable_irq(dp->irq);
>+
>+	return 0;
> }
> 
> static void dw_dp_bridge_detach(struct drm_bridge *bridge)
> {
> 	struct dw_dp *dp = bridge_to_dp(bridge);
> 
>+	disable_irq(dp->irq);
>+	cancel_work_sync(&dp->hpd_work);
> 	drm_dp_aux_unregister(&dp->aux);
> }
> 
>@@ -1982,6 +1988,18 @@ static const struct regmap_config dw_dp_regmap_config = {
> 	.rd_table = &dw_dp_readable_table,
> };
> 
>+int dw_dp_bind(struct dw_dp *dp, struct drm_encoder *encoder)
>+{
>+	return drm_bridge_attach(encoder, &dp->bridge, NULL, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
>+}
>+EXPORT_SYMBOL_GPL(dw_dp_bind);
>+
>+void dw_dp_unbind(struct dw_dp *dp)
>+{
>+	/* nothing to do as bridge is detached automatically */
>+}
>+EXPORT_SYMBOL_GPL(dw_dp_unbind);
>+
> static void dw_dp_phy_exit(void *data)
> {
> 	struct dw_dp *dp = data;
>@@ -1989,13 +2007,12 @@ static void dw_dp_phy_exit(void *data)
> 	phy_exit(dp->phy);
> }
> 
>-struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
>-			 const struct dw_dp_plat_data *plat_data)
>+struct dw_dp *dw_dp_probe(struct platform_device *pdev, const struct dw_dp_plat_data *plat_data)
> {
>-	struct platform_device *pdev = to_platform_device(dev);
>-	struct dw_dp *dp;
>+	struct device *dev = &pdev->dev;
> 	struct drm_bridge *bridge;
> 	void __iomem *res;
>+	struct dw_dp *dp;
> 	int ret;
> 
> 	dp = devm_drm_bridge_alloc(dev, struct dw_dp, bridge, &dw_dp_bridge_funcs);
>@@ -2004,9 +2021,8 @@ struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
> 
> 	dp->dev = dev;
> 	dp->pixel_mode = plat_data->pixel_mode;
>-
> 	dp->plat_data.max_link_rate = plat_data->max_link_rate;
>-	bridge = &dp->bridge;
>+
> 	mutex_init(&dp->irq_lock);
> 	INIT_WORK(&dp->hpd_work, dw_dp_hpd_work);
> 	init_completion(&dp->complete);
>@@ -2063,18 +2079,14 @@ struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
> 		return ERR_CAST(dp->rstc);
> 	}
> 
>-	bridge->of_node = dev->of_node;
>-	bridge->ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_HPD;
>-	bridge->type = DRM_MODE_CONNECTOR_DisplayPort;
>-	bridge->ycbcr_420_allowed = true;
>-
>-	ret = devm_drm_bridge_add(dev, bridge);
>-	if (ret)
>-		return ERR_PTR(ret);
>+	dp->irq = platform_get_irq(pdev, 0);
>+	if (dp->irq < 0)
>+		return ERR_PTR(dp->irq);
> 
>-	ret = drm_bridge_attach(encoder, bridge, NULL, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
>+	ret = devm_request_threaded_irq(dev, dp->irq, NULL, dw_dp_irq,
>+					IRQF_ONESHOT | IRQF_NO_AUTOEN, dev_name(dev), dp);
> 	if (ret) {
>-		dev_err_probe(dev, ret, "Failed to attach bridge\n");
>+		dev_err_probe(dev, ret, "failed to request irq\n");
> 		return ERR_PTR(ret);
> 	}
> 
>@@ -2090,28 +2102,19 @@ struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
> 	if (ret)
> 		return ERR_PTR(ret);
> 
>-	dp->irq = platform_get_irq(pdev, 0);
>-	if (dp->irq < 0) {
>-		ret = dp->irq;
>-		return ERR_PTR(ret);
>-	}
>+	bridge = &dp->bridge;
>+	bridge->of_node = dev->of_node;
>+	bridge->ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_HPD;
>+	bridge->type = DRM_MODE_CONNECTOR_DisplayPort;
>+	bridge->ycbcr_420_allowed = true;
> 
>-	ret = devm_request_threaded_irq(dev, dp->irq, NULL, dw_dp_irq,
>-					IRQF_ONESHOT, dev_name(dev), dp);
>-	if (ret) {
>-		dev_err_probe(dev, ret, "failed to request irq\n");
>+	ret = devm_drm_bridge_add(dev, bridge);
>+	if (ret)
> 		return ERR_PTR(ret);
>-	}
> 
> 	return dp;
> }
>-EXPORT_SYMBOL_GPL(dw_dp_bind);
>-
>-void dw_dp_unbind(struct dw_dp *dp)
>-{
>-	/* nothing to do */
>-}
>-EXPORT_SYMBOL_GPL(dw_dp_unbind);
>+EXPORT_SYMBOL_GPL(dw_dp_probe);
> 
> MODULE_AUTHOR("Andy Yan <andyshrk@163.com>");
> MODULE_DESCRIPTION("DW DP Core Library");
>diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
>index b23efb153c9e..38e8fe75718e 100644
>--- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
>+++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
>@@ -26,7 +26,7 @@
> struct rockchip_dw_dp {
> 	struct dw_dp *base;
> 	struct device *dev;
>-	struct rockchip_encoder encoder;
>+	struct rockchip_encoder *encoder;
> };
> 
> static int dw_dp_encoder_atomic_check(struct drm_encoder *encoder,
>@@ -73,37 +73,28 @@ static const struct drm_encoder_helper_funcs dw_dp_encoder_helper_funcs = {
> 
> static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *data)
> {
>-	struct platform_device *pdev = to_platform_device(dev);
>-	const struct dw_dp_plat_data *plat_data;
>+	struct rockchip_dw_dp *dp = dev_get_drvdata(dev);
> 	struct drm_device *drm_dev = data;
>-	struct rockchip_dw_dp *dp;
> 	struct drm_encoder *encoder;
> 	struct drm_connector *connector;
> 	int ret;
> 
>-	dp = drmm_kzalloc(drm_dev, sizeof(*dp), GFP_KERNEL);
>-	if (!dp)
>+	dp->encoder = drmm_kzalloc(drm_dev, sizeof(*dp->encoder), GFP_KERNEL);
>+	if (!dp->encoder)
> 		return -ENOMEM;
> 
>-	dp->dev = dev;
>-	platform_set_drvdata(pdev, dp);
>-
>-	plat_data = of_device_get_match_data(dev);
>-	if (!plat_data)
>-		return -ENODEV;
>-
>-	encoder = &dp->encoder.encoder;
>+	encoder = &dp->encoder->encoder;
> 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev, dev->of_node);
>-	rockchip_drm_encoder_set_crtc_endpoint_id(&dp->encoder, dev->of_node, 0, 0);
>+	rockchip_drm_encoder_set_crtc_endpoint_id(dp->encoder, dev->of_node, 0, 0);
> 
> 	ret = drmm_encoder_init(drm_dev, encoder, NULL, DRM_MODE_ENCODER_TMDS, NULL);
> 	if (ret)
> 		return ret;
> 	drm_encoder_helper_add(encoder, &dw_dp_encoder_helper_funcs);
> 
>-	dp->base = dw_dp_bind(dev, encoder, plat_data);
>-	if (IS_ERR(dp->base))
>-		return PTR_ERR(dp->base);
>+	ret = dw_dp_bind(dp->base, encoder);
>+	if (ret)
>+		return dev_err_probe(dev, ret, "failed to bind DW-DP bridge\n");
> 
> 	connector = drm_bridge_connector_init(drm_dev, encoder);
> 	if (IS_ERR(connector)) {
>@@ -128,12 +119,30 @@ static const struct component_ops dw_dp_rockchip_component_ops = {
> 	.unbind = dw_dp_rockchip_unbind,
> };
> 
>-static int dw_dp_probe(struct platform_device *pdev)
>+static int dw_dp_rockchip_probe(struct platform_device *pdev)
> {
>+	const struct dw_dp_plat_data *plat_data;
>+	struct device *dev = &pdev->dev;
>+	struct rockchip_dw_dp *dp;
>+
>+	plat_data = of_device_get_match_data(dev);
>+	if (!plat_data)
>+		return -ENODEV;
>+
>+	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
>+	if (!dp)
>+		return -ENOMEM;
>+	platform_set_drvdata(pdev, dp);
>+	dp->dev = dev;
>+
>+	dp->base = dw_dp_probe(pdev, plat_data);
>+	if (IS_ERR(dp->base))
>+		return PTR_ERR(dp->base);
>+
> 	return component_add(&pdev->dev, &dw_dp_rockchip_component_ops);
> }
> 
>-static void dw_dp_remove(struct platform_device *pdev)
>+static void dw_dp_rockchip_remove(struct platform_device *pdev)
> {
> 	component_del(&pdev->dev, &dw_dp_rockchip_component_ops);
> }
>@@ -161,8 +170,8 @@ static const struct of_device_id dw_dp_of_match[] = {
> MODULE_DEVICE_TABLE(of, dw_dp_of_match);
> 
> struct platform_driver dw_dp_driver = {
>-	.probe	= dw_dp_probe,
>-	.remove = dw_dp_remove,
>+	.probe	= dw_dp_rockchip_probe,
>+	.remove = dw_dp_rockchip_remove,
> 	.driver = {
> 		.name = "dw-dp",
> 		.of_match_table = dw_dp_of_match,
>diff --git a/include/drm/bridge/dw_dp.h b/include/drm/bridge/dw_dp.h
>index 22105c3e8e4d..a82412a9e769 100644
>--- a/include/drm/bridge/dw_dp.h
>+++ b/include/drm/bridge/dw_dp.h
>@@ -22,7 +22,8 @@ struct dw_dp_plat_data {
> 	u8 pixel_mode;
> };
> 
>-struct dw_dp *dw_dp_bind(struct device *dev, struct drm_encoder *encoder,
>-			 const struct dw_dp_plat_data *plat_data);
>+int dw_dp_bind(struct dw_dp *dp, struct drm_encoder *encoder);
> void dw_dp_unbind(struct dw_dp *dp);
>+
>+struct dw_dp *dw_dp_probe(struct platform_device *pdev, const struct dw_dp_plat_data *plat_data);
> #endif /* __DW_DP__ */
>
>-- 
>2.53.0
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
