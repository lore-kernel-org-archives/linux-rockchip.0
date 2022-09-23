Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BFD3C6FA8B
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 16:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7P0PaEyMs+eTrwoWBhYbpnrfPhJ+N0XRqaaqxtAVfg=; b=roEjdRY4/smOwe
	dhCC8Q8XdV0s3MUiXph1LZBqy18z7g+Oe6+voXOewTgkelGTK3KTc6JdSu7Vm520uMcfdJzP6wlJI
	DPHq11VdYulRrO2A4a5ueTRfEYu65LLjeSX/PfjcczukkkZKO18VZ0zyvzvIh6eDjzjBcvoYZSgjl
	CitYfkAELIllg6d3MXfwccznnbYEyJUKSS+ujXgmlGUF4r+F9x1BRmscR0BxiYKwd6vVx0/OQrdag
	Kmk1wFtCJkW2PFS8t5FHembMlcQPpF/cFjGzp04iqD9Skn9MUcwmSRQbaNE7AmQ8nSCwRhKoEeHPc
	I9VnWvD2jhvCqx8WN87g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obl7X-004uqD-3l; Fri, 23 Sep 2022 16:01:43 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obl7T-004uoW-JD
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 16:01:41 +0000
Received: by mail-lf1-x12b.google.com with SMTP id a2so987957lfb.6
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Sep 2022 09:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=IGutlThoIgup2ZcrVCSYTjnZ58zKhOYLgIpfe/lbY14=;
        b=ViGw7d+AYEovVLYOLWrfDyvbuHcHnynM4/dFFm9H2sYdFdUUZH2IYWi0lk6ZRAv7+V
         qqu9oN1+uDJyQZ/QKLdZcQDur6C6bKQKqDoQPHaZY3SIynw5TKnkbec4qU7vBV7QNc4a
         wTqrHQ9AmGS+VNoS2rqAbsjXcIxdky+pWOsYWE89Ha8wJu3tHoOHFW7kNpIwIfitsbq5
         PQ3aCpUxJ27tknHKO4bOQdDRw1EfQVr5KZg8VGc+sh07sGNpbO/BQANBtJMIfI2RPQRR
         Pa/9wUgQXpMqCB4h9OC8vWjQvaV3s1R3KfM81E0jtMdD2SoYr3278i0xd6mNYagbajRK
         Gn2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=IGutlThoIgup2ZcrVCSYTjnZ58zKhOYLgIpfe/lbY14=;
        b=od25UwO0z5xJgUIaS/ofT4meQ1P+09dBxiE6bOV9MX2VZd7o3lrCLbDeortwU5UtH4
         xw4FCYG2Kh6/DDg6J1gV/y92UYHUQdw4ixNFgSUoRPm86TYQbQEHkJUh+729qwGk72Fv
         auf2/yi7r5qfJB5mI065w+kZ2HB6K5EIYa0/pz/8s1EZKRGCTU8qW4i+uk8bVD/eafky
         r8UV+NPqmuvC5+WXaniZF5rseJl/ezuLgNC5rODKTFSlCC+rv5HWeaF4woeV5ISOTg+e
         2rl1IDz+jMCacByakr45aiFzooLf/PUKbDXUlW69EtQhLrTW2kF9Xn5YXqFN1uw7NetB
         bztw==
X-Gm-Message-State: ACrzQf3kcb+0/hdmWMlwhHtcLMThol/AEo4+hzYfUbJRAYJU+ohwN2ej
	+VYMZGrRI2uMnigQ5bih31p7h3lIr81XNg==
X-Google-Smtp-Source: AMsMyM51OtB4S0iQMCEtDJvnLBDLQpLk0VzvwXxYMSYzS4UTxBr/ayd4IYAE3zDJ7xPlLzxAE1+JdQ==
X-Received: by 2002:a05:6512:3d02:b0:498:f4d4:e246 with SMTP id d2-20020a0565123d0200b00498f4d4e246mr3854384lfv.115.1663948895307;
        Fri, 23 Sep 2022 09:01:35 -0700 (PDT)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id n24-20020a05651203f800b00494792ea34esm1498611lfq.273.2022.09.23.09.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 09:01:34 -0700 (PDT)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Alibek Omarov <a1ba.omarov@gmail.com>
Subject: [RFC PATCH 1/3] drm/rockchip: lvds: add rk3568 support
Date: Fri, 23 Sep 2022 19:01:13 +0300
Message-Id: <20220923160115.2946615-2-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
References: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_090139_655272_922B261C 
X-CRM114-Status: GOOD (  17.84  )
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

One of the ports of RK3568 can be configured as LVDS, re-using the DSI PHY

Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 144 +++++++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_lvds.h |  10 ++
 2 files changed, 147 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 5a284332ec49..5976067fb501 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -429,6 +429,90 @@ static void px30_lvds_encoder_disable(struct drm_encoder *encoder)
 	drm_panel_unprepare(lvds->panel);
 }
 
+static int rk3568_lvds_poweron(struct rockchip_lvds *lvds)
+{
+	int ret;
+
+	ret = clk_enable(lvds->pclk);
+	if (ret < 0) {
+		DRM_DEV_ERROR(lvds->dev, "failed to enable lvds pclk %d\n", ret);
+		return ret;
+	}
+
+	ret = pm_runtime_get_sync(lvds->dev);
+	if (ret < 0) {
+		DRM_DEV_ERROR(lvds->dev, "failed to get pm runtime: %d\n", ret);
+		clk_disable(lvds->pclk);
+		return ret;
+	}
+
+	/* Enable LVDS mode */
+	return regmap_update_bits(lvds->grf, RK3568_GRF_VO_CON2,
+				  RK3568_LVDS0_MODE_EN(1),
+				  RK3568_LVDS0_MODE_EN(1));
+}
+
+static void rk3568_lvds_poweroff(struct rockchip_lvds *lvds)
+{
+	regmap_update_bits(lvds->grf, RK3568_GRF_VO_CON2,
+			   RK3568_LVDS0_MODE_EN(1) | RK3568_LVDS0_P2S_EN(1),
+			   RK3568_LVDS0_MODE_EN(0) | RK3568_LVDS0_P2S_EN(0));
+
+	pm_runtime_put(lvds->dev);
+	clk_disable(lvds->pclk);
+}
+
+static int rk3568_lvds_grf_config(struct drm_encoder *encoder,
+				struct drm_display_mode *mode)
+{
+	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
+
+	if (lvds->output != DISPLAY_OUTPUT_LVDS) {
+		DRM_DEV_ERROR(lvds->dev, "Unsupported display output %d\n",
+			      lvds->output);
+		return -EINVAL;
+	}
+
+	/* Set format */
+	return regmap_update_bits(lvds->grf, RK3568_GRF_VO_CON0,
+				  RK3568_LVDS0_SELECT(3),
+				  RK3568_LVDS0_SELECT(lvds->format));
+}
+
+static void rk3568_lvds_encoder_enable(struct drm_encoder *encoder)
+{
+	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
+	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
+	int ret;
+
+	drm_panel_prepare(lvds->panel);
+
+	ret = rk3568_lvds_poweron(lvds);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to power on LVDS: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
+	ret = rk3568_lvds_grf_config(encoder, mode);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to configure LVDS: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
+	drm_panel_enable(lvds->panel);
+}
+
+static void rk3568_lvds_encoder_disable(struct drm_encoder *encoder)
+{
+	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
+
+	drm_panel_disable(lvds->panel);
+	rk3568_lvds_poweroff(lvds);
+	drm_panel_unprepare(lvds->panel);
+}
+
 static const
 struct drm_encoder_helper_funcs rk3288_lvds_encoder_helper_funcs = {
 	.enable = rk3288_lvds_encoder_enable,
@@ -443,6 +527,13 @@ struct drm_encoder_helper_funcs px30_lvds_encoder_helper_funcs = {
 	.atomic_check = rockchip_lvds_encoder_atomic_check,
 };
 
+static const
+struct drm_encoder_helper_funcs rk3568_lvds_encoder_helper_funcs = {
+	.enable = rk3568_lvds_encoder_enable,
+	.disable = rk3568_lvds_encoder_disable,
+	.atomic_check = rockchip_lvds_encoder_atomic_check,
+};
+
 static int rk3288_lvds_probe(struct platform_device *pdev,
 			     struct rockchip_lvds *lvds)
 {
@@ -487,6 +578,26 @@ static int rk3288_lvds_probe(struct platform_device *pdev,
 	return 0;
 }
 
+static int rockchip_lvds_phy_probe(struct platform_device *pdev,
+				   struct rockchip_lvds *lvds)
+{
+	int ret;
+
+	lvds->dphy = devm_phy_get(&pdev->dev, "dphy");
+	if (IS_ERR(lvds->dphy))
+		return PTR_ERR(lvds->dphy);
+
+	ret = phy_init(lvds->dphy);
+	if (ret)
+		return ret;
+
+	ret = phy_set_mode(lvds->dphy, PHY_MODE_LVDS);
+	if (ret)
+		return ret;
+
+	return phy_power_on(lvds->dphy);
+}
+
 static int px30_lvds_probe(struct platform_device *pdev,
 			   struct rockchip_lvds *lvds)
 {
@@ -499,20 +610,28 @@ static int px30_lvds_probe(struct platform_device *pdev,
 	if (ret)
 		return ret;
 
-	/* PHY */
-	lvds->dphy = devm_phy_get(&pdev->dev, "dphy");
-	if (IS_ERR(lvds->dphy))
-		return PTR_ERR(lvds->dphy);
+	return rockchip_lvds_phy_probe(pdev, lvds);
+}
 
-	ret = phy_init(lvds->dphy);
+static int rk3568_lvds_probe(struct platform_device *pdev,
+			     struct rockchip_lvds *lvds)
+{
+	int ret;
+
+	ret = regmap_update_bits(lvds->grf, RK3568_GRF_VO_CON0,
+				  RK3568_LVDS0_MSBSEL(1),
+				  RK3568_LVDS0_MSBSEL(1));
 	if (ret)
 		return ret;
 
-	ret = phy_set_mode(lvds->dphy, PHY_MODE_LVDS);
+	ret = regmap_update_bits(lvds->grf, RK3568_GRF_VO_CON2,
+				 RK3568_LVDS0_P2S_EN(1),
+				 RK3568_LVDS0_P2S_EN(1));
+
 	if (ret)
 		return ret;
 
-	return phy_power_on(lvds->dphy);
+	return rockchip_lvds_phy_probe(pdev, lvds);
 }
 
 static const struct rockchip_lvds_soc_data rk3288_lvds_data = {
@@ -525,6 +644,11 @@ static const struct rockchip_lvds_soc_data px30_lvds_data = {
 	.helper_funcs = &px30_lvds_encoder_helper_funcs,
 };
 
+static const struct rockchip_lvds_soc_data rk3568_lvds_data = {
+	.probe = rk3568_lvds_probe,
+	.helper_funcs = &rk3568_lvds_encoder_helper_funcs,
+};
+
 static const struct of_device_id rockchip_lvds_dt_ids[] = {
 	{
 		.compatible = "rockchip,rk3288-lvds",
@@ -534,6 +658,10 @@ static const struct of_device_id rockchip_lvds_dt_ids[] = {
 		.compatible = "rockchip,px30-lvds",
 		.data = &px30_lvds_data
 	},
+	{
+		.compatible = "rockchip,rk3568-lvds",
+		.data = &rk3568_lvds_data
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, rockchip_lvds_dt_ids);
@@ -608,6 +736,8 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 	encoder = &lvds->encoder.encoder;
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
 							     dev->of_node);
+	rockchip_drm_encoder_set_crtc_endpoint_id(&lvds->encoder,
+						  dev->of_node, 0, 0);
 
 	ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_LVDS);
 	if (ret < 0) {
diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.h b/drivers/gpu/drm/rockchip/rockchip_lvds.h
index 4ce967d23813..57decb33f779 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.h
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.h
@@ -120,4 +120,14 @@
 #define   PX30_LVDS_P2S_EN(val)			HIWORD_UPDATE(val,  6,  6)
 #define   PX30_LVDS_VOP_SEL(val)		HIWORD_UPDATE(val,  1,  1)
 
+#define RK3568_GRF_VO_CON0			0x0360
+#define   RK3568_LVDS0_SELECT(val)		HIWORD_UPDATE(val,  5,  4)
+#define   RK3568_LVDS0_MSBSEL(val)		HIWORD_UPDATE(val,  3,  3)
+
+#define RK3568_GRF_VO_CON2			0x0368
+#define   RK3568_LVDS0_DCLK_INV_SEL(val)	HIWORD_UPDATE(val,  9,  9)
+#define   RK3568_LVDS0_DCLK_DIV2_SEL(val)	HIWORD_UPDATE(val,  8,  8)
+#define   RK3568_LVDS0_MODE_EN(val)		HIWORD_UPDATE(val,  1,  1)
+#define   RK3568_LVDS0_P2S_EN(val)		HIWORD_UPDATE(val,  0,  0)
+
 #endif /* _ROCKCHIP_LVDS_ */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
