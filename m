Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 027BBECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 17:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7nRXXBtWEuF0SqstX96pAADOGpVQKPKLJwoku56Ft8=; b=tuGDdWkTrflqgx
	zwKvSfMFtYZwzQmF564cyfLUlN0nHXdPk12oitkBmLdOkU/O93OWyk8TCCb2/XlIGXW4X+dCpYHZE
	RXpWgwNR3Uvo6zmuK8RcMBkaIAq4fihk+Y/LWY0W8CFjJqyq/RhfvnSrh+c1r+AozeVgAjCfzw22t
	FhnnhNUNxAZNnTtsXEUF2qpEl3z4ZGpwZXFYoQLfav5Tj6G2gyziros3IbewKJtWoXGYe5HYdt3mn
	kOOm0v/0AxSXRSuFrqhiUXbX/OKc3wxEQxn5e3e8W3ZJh42HFMr+3TJ1W7bG+RfHf2ot+oLLzyw1a
	eoFv7T//6DKrMWhjREzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcjj-00G84Y-Na; Tue, 06 Sep 2022 17:51:47 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcgc-00G6Cd-8s; Tue, 06 Sep 2022 17:48:40 +0000
Received: by mail-oo1-xc29.google.com with SMTP id q6-20020a4aa886000000b0044b06d0c453so2044357oom.11;
        Tue, 06 Sep 2022 10:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Z861jG7BMhx/UqAm+BGR/UQTJzU7P1PboLjcZWY5WRs=;
        b=LqcTc00u+oeRZejpL1N3HqNcfAJDrWhIBRQ2xgjGMPx6CmMtjgbLbbeJm+Pj/0lqWa
         1bm/L8YEZdDIKdB2QCxPD8HzVkB8cD687s8croIEOkwnf2VonIynKgO2BTriZsqRWeUv
         FhvbQnrSLzRnjH68kAiZRHm0h3tkV+E0niHAQYWwWt79ukPNrTRsZv66suR5DCrRB6p0
         YVkFfeB/tcmYUMgz7UCb9ukJsFrCg8LZeSq/ulRBC/VZlKQdYVjPHkP6+nrUTVrh8Fxz
         Ah7tTNV2DV6FFVqz59tjTeDQTz2QHHDMcdn0MsFBSjEPpSot4DlokBofMQNW/LBLgSn7
         GT8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Z861jG7BMhx/UqAm+BGR/UQTJzU7P1PboLjcZWY5WRs=;
        b=YlrfsGYfMjXi4V63lIA9f23rvnM35Tv/ET73UiYao+5WA1zPzpLLUcBxv1FeivQb+/
         tScwI148K1O6yURWRhhr9+AORBIanmBhm0YUf7/WyHRRWpouuxhodFLri+betckqvt63
         RNgbq4SZ7BtzJ7d/1aqL94v38UNN0dOF0mPWH2F83SfCMFWwYA8IHlneJ9VdrydLNaLn
         KguTykyqYFaM8n28mVjWsoDDBX5O7dmvaTr4sI9GaSB5cWk30Y4rksG5SedtWBSVkVNh
         M38EoKdZVYw55uSb0ewqKdPB4Bc3tmJt2RmSLu/LqsSINvHTgGuTRzJnc0t7jFCuEALy
         cMew==
X-Gm-Message-State: ACgBeo0WIlDE7pKEiwU2EjUTg8uqXbipMOV0sNvQ2LO1p14c5YB2lu2X
	OZEQ3KHa86BU1t2eY9S7AzZcR9mbCMU=
X-Google-Smtp-Source: AA6agR5s+SV66YlDAHlmbOWm3Y9nLF+z1E5cig2we8mv7ZwsFpF1I68ZOTDKjho4zGBrFodk5eHsMw==
X-Received: by 2002:a4a:dcc2:0:b0:449:129e:17cd with SMTP id h2-20020a4adcc2000000b00449129e17cdmr18648183oou.98.1662486511693;
        Tue, 06 Sep 2022 10:48:31 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o186-20020aca41c3000000b00344afa2b08bsm5568065oia.26.2022.09.06.10.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:48:31 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	cl@rock-chips.com,
	s.hauer@pengutronix.de,
	pgwipeout@gmail.com,
	vkoul@kernel.org,
	kishon@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@linux.ie,
	heiko@sntech.de,
	hjc@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 3/5] drm/rockchip: dsi: add rk3568 support
Date: Tue,  6 Sep 2022 12:48:21 -0500
Message-Id: <20220906174823.28561-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906174823.28561-1-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_104837_127298_5AEFF9CD 
X-CRM114-Status: GOOD (  15.32  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the compatible and GRF definitions for the RK3568 soc.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 51 ++++++++++++++++++-
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 110e83aad9bb..bf6948125b84 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -179,6 +179,23 @@
 #define RK3399_TXRX_SRC_SEL_ISP0	BIT(4)
 #define RK3399_TXRX_TURNREQUEST		GENMASK(3, 0)
 
+#define RK3568_GRF_VO_CON2		0x0368
+#define RK3568_DSI0_SKEWCALHS		(0x1f << 11)
+#define RK3568_DSI0_FORCETXSTOPMODE	(0xf << 4)
+#define RK3568_DSI0_TURNDISABLE		BIT(2)
+#define RK3568_DSI0_FORCERXMODE		BIT(0)
+
+/*
+ * Note these registers do not appear in the datasheet, they are
+ * however present in the BSP driver which is where these values
+ * come from. Name GRF_VO_CON3 is assumed.
+ */
+#define RK3568_GRF_VO_CON3		0x36c
+#define RK3568_DSI1_SKEWCALHS		(0x1f << 11)
+#define RK3568_DSI1_FORCETXSTOPMODE	(0xf << 4)
+#define RK3568_DSI1_TURNDISABLE		BIT(2)
+#define RK3568_DSI1_FORCERXMODE		BIT(0)
+
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
 enum {
@@ -735,8 +752,9 @@ static void dw_mipi_dsi_rockchip_config(struct dw_mipi_dsi_rockchip *dsi)
 static void dw_mipi_dsi_rockchip_set_lcdsel(struct dw_mipi_dsi_rockchip *dsi,
 					    int mux)
 {
-	regmap_write(dsi->grf_regmap, dsi->cdata->lcdsel_grf_reg,
-		mux ? dsi->cdata->lcdsel_lit : dsi->cdata->lcdsel_big);
+	if (dsi->cdata->lcdsel_grf_reg < 0)
+		regmap_write(dsi->grf_regmap, dsi->cdata->lcdsel_grf_reg,
+			mux ? dsi->cdata->lcdsel_lit : dsi->cdata->lcdsel_big);
 }
 
 static int
@@ -963,6 +981,8 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 		DRM_DEV_ERROR(dev, "Failed to create drm encoder\n");
 		goto out_pll_clk;
 	}
+	rockchip_drm_encoder_set_crtc_endpoint_id(&dsi->encoder,
+						  dev->of_node, 0, 0);
 
 	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder.encoder);
 	if (ret) {
@@ -1612,6 +1632,30 @@ static const struct rockchip_dw_dsi_chip_data rk3399_chip_data[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_dw_dsi_chip_data rk3568_chip_data[] = {
+	{
+		.reg = 0xfe060000,
+		.lcdsel_grf_reg = -1,
+		.lanecfg1_grf_reg = RK3568_GRF_VO_CON2,
+		.lanecfg1 = HIWORD_UPDATE(0, RK3568_DSI0_SKEWCALHS |
+					  RK3568_DSI0_FORCETXSTOPMODE |
+					  RK3568_DSI0_TURNDISABLE |
+					  RK3568_DSI0_FORCERXMODE),
+		.max_data_lanes = 4,
+	},
+	{
+		.reg = 0xfe070000,
+		.lcdsel_grf_reg = -1,
+		.lanecfg1_grf_reg = RK3568_GRF_VO_CON3,
+		.lanecfg1 = HIWORD_UPDATE(0, RK3568_DSI1_SKEWCALHS |
+					  RK3568_DSI1_FORCETXSTOPMODE |
+					  RK3568_DSI1_TURNDISABLE |
+					  RK3568_DSI1_FORCERXMODE),
+		.max_data_lanes = 4,
+	},
+	{ /* sentinel */ }
+};
+
 static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	{
 	 .compatible = "rockchip,px30-mipi-dsi",
@@ -1622,6 +1666,9 @@ static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	}, {
 	 .compatible = "rockchip,rk3399-mipi-dsi",
 	 .data = &rk3399_chip_data,
+	}, {
+	 .compatible = "rockchip,rk3568-mipi-dsi",
+	 .data = &rk3568_chip_data,
 	},
 	{ /* sentinel */ }
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
