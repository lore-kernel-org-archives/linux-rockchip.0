Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78486C10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 14:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKH9tULUAyXmcmmTS8GpIlvkpgJbTKsc2MW4uHQV6h0=; b=my8hziUcLQcS5I
	C3vRvUw0uVhUZEqB8SUBPbSs7XJLPi6Fgi5xhtWpFEtKM1i/hzLnshbbqx1eH2BTYwL7fU+HhrJxs
	y8J1okqW243J/kj1OmZgPOHSHqZXIfwyFgptLr25oSBeGQqrzCVInFAAHQQvKYeZrIpjTtgl+GpDL
	MUTWVgwd4Ow25mqI7G1YOF6oFMehtnaUPi5B5oQwCXyLwzudgIY09bZuSIlmQknu4rXgfLV9nGm8l
	ksENQ38D6IPqR3zW/8b84kQRV581V8paVAL0NVOU14p930pDPKHCJUW4RNJ71pswuCCvmf4EquR0R
	I79TrhczGmrrlTseZPHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54Qo-00000001fa0-16rJ;
	Thu, 09 May 2024 14:07:34 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54QP-00000001f6N-2lJe;
	Thu, 09 May 2024 14:07:12 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-34d7d04808bso638003f8f.0;
        Thu, 09 May 2024 07:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715263623; x=1715868423; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gG8NnG9MCxt3FCrGHfY+CHmnXlhVbyAkGBrDmW81e5k=;
        b=nIIuqEeSr1/P31m9jzxjl6NjlEOAVdqkMwyxJBypBOI1vaz6OOxQ3vQ/JTdN7zeV5M
         2uQXaccCFJP1bxTn1obIlxasOxGxw3aee8+8mj5Lbh2Eg5UJi4+RYvMD0D3G/ioY82xf
         Hf15106jW3oMb2plLUDc8Wgf4/YpXTXNlbZmL1+TjIjizjyvoK6iFzPMhyv8FF2G3A8N
         TliuF8GdasYc1S2Atm5SodpFs9eJ/tIhcfiKXpLGm41udSXU8snaPrCGw1jtYLgyn8H1
         2WqMtvtM6Tr7ixlTgbDqVekmhd70yfSHt40IKcx2WqFIk/bAETuUyiFSaeomrdtdmyKs
         g16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715263623; x=1715868423;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gG8NnG9MCxt3FCrGHfY+CHmnXlhVbyAkGBrDmW81e5k=;
        b=G7ivVD6u0qgbgBEDyPtKXaK3Tv3asX/xsx7+O2WUEVB2zGa+Npjlz0Cfdm7gtu1bIJ
         OAMWUHYL/gCXqqFrNlV4mcGzPuLy/ihMHETitfKxZbjE2YphRgBbnaKid/KVyyMzZ7//
         RkZtt9opeWnnMT1t7YnZuvRJCTAX2w+8CeeUZRgsAUd8nrTyVr+8Edoz2Fzd9I5Vd+XS
         QdMxCWEWkEYSVkTDub+VuygzG4BUlOher+1pOLjDFXVziD19rgpI/TTf2EHVXhwPfgXy
         P+jmxl/HuXY5iZLEsC9PMQJ//LJf8UiCsmWh0GodvDqsUD14racrdfvI59x5SfLhB+MM
         m+vA==
X-Forwarded-Encrypted: i=1; AJvYcCUje6U5mHoEEktKoxNVx/o+Ocp5rW4SxYzldLgrHFFYS/kmIEnnBcgpYSi85Ek1zFOGzYt1I19k+41J0aFNXijD7B0r5MZmb5T1rcNShhCevmaGM9kYEuW9tRV830NyBHw0Ogr/ISsaqViBwPd7o79wcL3DnemjhsU=
X-Gm-Message-State: AOJu0YzvnjLyl837hPYQJ6Eab8IQsE1V5beEPOKFxiZMP2TdFqaaA3Kr
	WEQloWO6RGtv1d2k5KEeTZxIqnrN3YQPkAo0ohdK+FsZnSLIyOA=
X-Google-Smtp-Source: AGHT+IF638N9r8RenDUS5cIi1bm0ckYuTr7cNtt0tRexV/Fy7f9WgU1uTe9kWso6VR3HVhKQKBvSlQ==
X-Received: by 2002:a5d:68c8:0:b0:34a:d1d4:cb3c with SMTP id ffacd0b85a97d-34fca6233aamr5597109f8f.39.1715263623270;
        Thu, 09 May 2024 07:07:03 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502baad058sm1793311f8f.66.2024.05.09.07.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 07:07:02 -0700 (PDT)
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
Subject: [PATCH v3 5/7] drm/rockchip: dsi: Add support for RK3128
Date: Thu,  9 May 2024 16:06:51 +0200
Message-ID: <20240509140653.168591-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509140653.168591-1-knaerzche@gmail.com>
References: <20240509140653.168591-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_070709_866703_14AFA844 
X-CRM114-Status: GOOD (  13.00  )
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

The DesignWare MIPI DSI controller found RK3128 SoCs supports up to 4 DSI
data lanes. Similar to PX30/RK356x/RV1126 it uses an external D-PHY.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - none

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
