Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32398C004D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 18:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJfkghBMkG8bdNb7jCEsQFcntgMgMHdUFA8JeZmPDrs=; b=h4w/qhBin+tbKo
	qhZ6ExhmoUUbkAJ2TTDlH6gQZRrLuGQbKuCAECGEn+T0JGFHFfpWmTdZ4xOoB8IFslWaUqm44WFvG
	bxqbTylR01vkisTmMEAfMNbE+YhsZ3EZr/4ZUAlSig12JFbvjnZUfT+RkzryFoUhIcMj5o+fRzVuT
	X9pCQlFupda8MFZzOLMxPJ6xCb4RJtZQJ1fOSeSAkmI3tE1KHfRBOBfa0Z3/Ld8wy7hqU9Snu85RO
	OelXS7gzxkcYAme/FrrQuQIDjmr48GxgXX121YkmvQsVDLz0xeBJxmEOEqWDLAVg4uTns3JalGEaI
	SF3GVI7yKs/RJrJU41Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIZzE-006eQu-Ad; Thu, 19 Jan 2023 18:50:08 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIZyX-006e9U-AM; Thu, 19 Jan 2023 18:49:28 +0000
Received: by mail-lf1-x12b.google.com with SMTP id x40so4519919lfu.12;
        Thu, 19 Jan 2023 10:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KjYSoLcwf7EqtitvVcOTllqc2UQ4a0rkK6OglvdaZqI=;
        b=XakzkJo1d7N4N7DkKi9mHmh1lucNCw3Ur4cZb3/FtRcHSG6kK0fg0VmQOrJjpSHFbv
         gDAhsVrSB2wFhL/Cj3BWGcCRfK14n75kTvu9o0WuA1p27Oy/w3S6l9tL0T43D7CJhT6i
         lmclIQ9IsbKkFAN2ITAdZzY0PPUfj2rlMGatAY4F6ZCgiSgnvEuwOUwVcI9zhTp0rJvt
         QBVqK+Inm1tiZiPBixukk1vATXLjsC+OBU4UHo5XcNQf3OC7VGNkTHAghBYjjIrDWQxx
         /jGLUhDmQ21wZDDTuA02kDGvpzPBhoSVcttWo9j9OvA+VQ6JAoIn91fADMZTvgJ9c/wd
         ta+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KjYSoLcwf7EqtitvVcOTllqc2UQ4a0rkK6OglvdaZqI=;
        b=gvqJNEzIS57+Q3t5zr2v7TRbdbndbStE3G5NKPdLrZv9V4n24AOdyqkcnHd7q809pG
         ayZ7a8c42B9C6PdMbFkhUWnhICCCG181usYDsstg+olNEgorq7Su82lSmRZyA+rw1dYX
         DS1SRIv81tC6lWNOan7uJLM/G5xZa14/J22NkcLGMQkTJX1vt1Js6V4VDMdh0TpWkxEe
         v6coak2d7no1L+zUd5nlRGhmkLsa8AAvAvT7y7yRNLICUYwh1DpL4YO7oUy28yh0+cd8
         1Ae9iQ9ceU6AGuCfwziypafSoKbVDo9HkDwlfbBYXI7pIJxi9BDlrkVoWwcwnkHuP7gV
         zliQ==
X-Gm-Message-State: AFqh2kpNHShLgZ25UTDAqL2+RB2DbuuxhelVYm8f1hVXTyJL6b5BxtYv
	k9S3GnYCL7fpjeQB0MTL3LM=
X-Google-Smtp-Source: AMrXdXv1pJP5S8AZ+yVAIwUdPkFLt0kCm3GHTmVeWhx46YujL7HwAwoo4UkMmOKA8DqpaG1bcv0ZzQ==
X-Received: by 2002:a05:6512:12d1:b0:4ca:5013:b0e7 with SMTP id p17-20020a05651212d100b004ca5013b0e7mr4114837lfg.59.1674154163242;
        Thu, 19 Jan 2023 10:49:23 -0800 (PST)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id b31-20020a0565120b9f00b004d30752a561sm2112737lfv.298.2023.01.19.10.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 10:49:22 -0800 (PST)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: 
Cc: a1ba.omarov@gmail.com,
	alexander.sverdlin@siemens.com,
	macromorgan@hotmail.com,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] drm/rockchip: lvds: add rk3568 support
Date: Thu, 19 Jan 2023 21:48:03 +0300
Message-Id: <20230119184807.171132-2-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119184807.171132-1-a1ba.omarov@gmail.com>
References: <20230119184807.171132-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_104925_403220_CB1311AB 
X-CRM114-Status: GOOD (  19.36  )
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

One of the ports of RK3568 can be configured as LVDS, re-using the DSI DPHY

Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 144 +++++++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_lvds.h |  10 ++
 2 files changed, 147 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 68f6ebb33460..83c60240af85 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -433,6 +433,90 @@ static void px30_lvds_encoder_disable(struct drm_encoder *encoder)
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
@@ -447,6 +531,13 @@ struct drm_encoder_helper_funcs px30_lvds_encoder_helper_funcs = {
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
@@ -491,6 +582,26 @@ static int rk3288_lvds_probe(struct platform_device *pdev,
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
@@ -503,20 +614,28 @@ static int px30_lvds_probe(struct platform_device *pdev,
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
@@ -529,6 +648,11 @@ static const struct rockchip_lvds_soc_data px30_lvds_data = {
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
@@ -538,6 +662,10 @@ static const struct of_device_id rockchip_lvds_dt_ids[] = {
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
@@ -612,6 +740,8 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
