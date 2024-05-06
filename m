Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97EEFC25B10
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 19:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMTobfxXjXumlLelwrEZjs/ypLl1sRCVXyCR2uO8q58=; b=BILm4vyc8yRWg9
	ni4n8Sp+7GoSUfC8Na87qd0jsc66xtoBvl5x8l5pwLekXb1Fl6wcGmkxR1BpI5cKQ+fHL987Npgsq
	JS8noelwXC55QYSgBUw+OrG2TnwkpGKxaYkE1qwP7IRpiwRk4dcNYmLCFh5mBu0GhohdRuJKcoKBR
	NqGZipz0KWg6ZZw0t78G5ofw486LlvL3oJvXZHYDCZ6aiN0dCgj7QrT3JBUtiN/uoUt3GFCseMUGG
	qmkWP1czyAFxEbP8g5d6uwpRr8qzPZee1gTOZqzIbu5OG3NKnffO4kn1z8EnE+t/xLrgji7DQY6bj
	obkMq5cdK1fA853x0bhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44GC-00000008YZA-1dHQ;
	Mon, 06 May 2024 19:44:28 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fo-00000008Y9s-3ZA6;
	Mon, 06 May 2024 19:44:06 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a59a609dd3fso378547666b.0;
        Mon, 06 May 2024 12:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715024642; x=1715629442; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o57hgKIjAk0UpXtlYxOCbQQvJBzOwu3W7y/5J4X3WHA=;
        b=QRTiYbf5+0+zvWeLYfFS234tbPIvtGlgvXUh3cDUVssqtpcYtn1ddfH8AdxgUvp/QP
         biILc7d5r0GSvIDVDr5CBYjffXXePRJM943cTrT4RGqgxTfQpS+PtZYHd/fIz+lgEJGo
         ELP4hbI+9R8Z6bRMFwEYkSyfm0fkp3xdNw+vvHZoeQK22WfDYZJqnqF0Or/ZVuT+nGLC
         JAW6jwBYV7SXxuF4lR5TjNOsGHAMAzITroGTEU8bO9NiY6uBppQP3V89FHPkQ4IY+Ypo
         2Lm98ysio8OP3rTKm/wg6rx5K6mkj1ycbz8sGHxTdmRrAUJ8QtMj0G/HVsOWbavzzviT
         Dm7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715024642; x=1715629442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o57hgKIjAk0UpXtlYxOCbQQvJBzOwu3W7y/5J4X3WHA=;
        b=vEW+yi/52hOutYQSX6pOmqq0HAwbmGKXBAzFWvCfXoVs90tDp9/UBwtFuC0wY2tMgn
         AlLgIIdr9Fd0PL7AwQdKpJ5SUx6um8n9SokDeQuQwVhSZdQOeKiA0g+O8U9mYBqg08dT
         fuj3Ljm7W8bVp9JBiiPS4fxS2wNAQhWy44GD8VJ+GIR+3FT5OFDqxgBmo/JxgKw1w+sz
         x8rlLrkB/BtBZ5YZj+cDkkCdqGr4SpJXp0ZjYFzCAck8GitDccjBgE6k2m6IXqYFyfCX
         KZbM/ASzuq/N5XHFw+fIbiZyXToQ0mET61I20yPdfCG9LfIKe73SQ8WaGnC4jyAkxsmF
         TabQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjBCDG801sSUzBhYZ5CcQwXHoitSuLC6p/KM25XXhzmDG5qHfd7wQRMXhg8/NA8m2MFeoVspVOKwPKCKBm5h08uzFQSJpjSMoz4CMnyRKqRybCvW9N8EEBhZAqzWc9OIf0A+GhVmkks4z4kwbVjM65fK8adiyDGfI=
X-Gm-Message-State: AOJu0YzZS5yHxjoUVMeh9xbTgGkvbd/35RH7/caYNjOix8fxPwHn1tiW
	e8Yw7kPUQVjk1zjy1hlRlssBT0RLB86MLGmfV9qJ1Nkur6V8OpY=
X-Google-Smtp-Source: AGHT+IH0d83c7xTax7fuIOWVQkoiDle9wGyhCdq0/Z1yJWMYOpdTGsFWFrlzxl7C3Qi6XsSYe60iZA==
X-Received: by 2002:a17:906:fa9a:b0:a55:5520:f43f with SMTP id a640c23a62f3a-a59e4cea3e4mr46264666b.10.1715024641987;
        Mon, 06 May 2024 12:44:01 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709067f8d00b00a59d146f034sm1367321ejr.132.2024.05.06.12.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 12:44:01 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 5/7] drm/rockchip: dsi: Add support for RK3128
Date: Mon,  6 May 2024 21:43:40 +0200
Message-ID: <20240506194343.282119-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506194343.282119-1-knaerzche@gmail.com>
References: <20240506194343.282119-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_124405_195195_014BD1C9 
X-CRM114-Status: GOOD (  12.56  )
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

The DesignWare MIPI DSI controller found RK3128 SoCs supports up to 4 dsi
data lanes. Similar to PX30/RK356x/RV1126 it uses an external DPHY.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 4cc8ed8f4fbd..58a44af0e9ad 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -153,6 +153,11 @@
 #define PX30_DSI_TURNDISABLE		BIT(5)
 #define PX30_DSI_LCDC_SEL		BIT(0)
 
+#define RK3128_GRF_LVDS_CON0		0x0150
+#define RK3128_DSI_FORCETXSTOPMODE	GENMASK(13, 10)
+#define RK3128_DSI_FORCERXMODE		BIT(9)
+#define RK3128_DSI_TURNDISABLE		BIT(8)
+
 #define RK3288_GRF_SOC_CON6		0x025c
 #define RK3288_DSI0_LCDC_SEL		BIT(6)
 #define RK3288_DSI1_LCDC_SEL		BIT(9)
@@ -1493,6 +1498,18 @@ static const struct rockchip_dw_dsi_chip_data px30_chip_data[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_dw_dsi_chip_data rk3128_chip_data[] = {
+	{
+		.reg = 0x10110000,
+		.lanecfg1_grf_reg = RK3128_GRF_LVDS_CON0,
+		.lanecfg1 = HIWORD_UPDATE(0, RK3128_DSI_TURNDISABLE |
+					     RK3128_DSI_FORCERXMODE |
+					     RK3128_DSI_FORCETXSTOPMODE),
+		.max_data_lanes = 4,
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_dw_dsi_chip_data rk3288_chip_data[] = {
 	{
 		.reg = 0xff960000,
@@ -1670,6 +1687,9 @@ static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
 	{
 	 .compatible = "rockchip,px30-mipi-dsi",
 	 .data = &px30_chip_data,
+	}, {
+	 .compatible = "rockchip,rk3128-mipi-dsi",
+	 .data = &rk3128_chip_data,
 	}, {
 	 .compatible = "rockchip,rk3288-mipi-dsi",
 	 .data = &rk3288_chip_data,
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
