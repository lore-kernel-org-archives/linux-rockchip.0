Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95911C25B4F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 12:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q19zZZtX3TPwpX6kmHsCk4HCv+3VkY8VmDD1FhXbJik=; b=eOXajj868Cs4mm
	pTArn+53WdwmJBW1vn9FTGM6xX4LFhMiBsvh27h9UcNBJ2LDYV88dCBHzalEHG3vNa9mc7PTKRxPN
	2kMphhP1u9NwEk6O/MrKJVyzF7GUoudtoBnbcAEHJ5y22gwdZgYL6mpiwREoCJ52eDnSj0e5VzBDG
	Fzr6e9ekD30T/O8YwYhJcKv//65NSonsbhMLC+PMKJaKxFCmrebDLIO5cZaMG/hmSS8pr5TPZRVqu
	P/3xJRb2Dwf7E1U6QtR8q/26gAXZW8/E1MFmiglm3altxts87ARB2ZkKxfUhWYGIwZ+ss/Yz4nafm
	bFtylHpCRd4sJlBnXAAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Yj-00000001MCw-0RVz;
	Thu, 09 May 2024 12:07:37 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Ya-00000001M53-0yyL;
	Thu, 09 May 2024 12:07:29 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-41ebcf01013so4551805e9.0;
        Thu, 09 May 2024 05:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715256446; x=1715861246; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q+bLe4/l+mvEUfFbA3v+BR5qf/S1rNc4PFO2a3ch0KQ=;
        b=ekkEBS1LViig/R6rxlDwzaCGf/XqLrEVEYlthpSwiJNsPNpqWVvRUXS1xWmPMGyRiC
         7IVUyPLMVcIyZT1zKJxZkjJl33d8imForj2WR9gOdKtWB/Nx+dYqzePYDepmykiG+3zL
         xeAksOPYuyTvC0yXPhKjXkcNPhd6KOwd0hhE0+F5Fl5B3ScdtSCf6IsheelWnqDW/fA4
         HxIQAH49rqtkq7bWO+Sp/FkxFbU62VuRGPVHxC/HHXsXpP1oH71SjIcktibh2bpHoonQ
         4mpaL8mN5XULF9ZqfIj/TfRnJOpyXmt6fBAI00518rT8OxcgbtkasqcHua/LLDPfV/F+
         iEQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715256446; x=1715861246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q+bLe4/l+mvEUfFbA3v+BR5qf/S1rNc4PFO2a3ch0KQ=;
        b=GP0qbpXmLE+Z1ljLwKzjdtTamIAqs/jqAdW+EP+KsHPMIrcjkdSemm0+wXmE25ayxo
         APPReqHY1HgeDgTd/64LKa/U1gmEPzHXD/HrQvMQgPgVnV0q5ALf/HAliIkzCQ/Y47u/
         eJ7HRA5xdGnoFWbZvsHDwsJczV7tXjjohEJifZl0mbR0NlT/SXr7d1k1XRj48Uur9eOZ
         YGTJs4hKlHN7m9gJRf7AFe/W4qSAzQbrM3hkY05LchwsSkjbdIHLMBMzWn8uZO0X5+kY
         aIJ9KydbiBf+VbVsibsy6gXmze0s30hO1gLCzaOJmUMiVCuSBvBax6PuRD3vebvXC233
         9npw==
X-Forwarded-Encrypted: i=1; AJvYcCXARPq16M7brqm3ip2PGRV0OxH2FLAr84d9LotksYbK2eqb8+A8hLA3T0Gsu4/TbcYnPQQ40SLZBLWwq7JD0pAMkmL6AVRT+qIvXoHvk2btxfPpdc+i4nK7ful7gk+nnbEJifkWYoF34DTL7i3cy8nC0d+UPhbcmbE=
X-Gm-Message-State: AOJu0Yx6i02e8rb/D8f/jgaapHYibmqtLbZ2z9VZSL6mDZJxp5t2YJ6p
	flwFRh0QQNDeZkISnngL8ZhkmIyJx0LTwLVLTNPXkjnI+Btuxy4=
X-Google-Smtp-Source: AGHT+IHtoArrqD0dnvqLAhLONFA8xc0foDIiP2c2dDm/g4xMVPSUsPLYrXXxqeAb6C9ioPtRQlXv6w==
X-Received: by 2002:a05:600c:354a:b0:41b:f24a:b590 with SMTP id 5b1f17b1804b1-41fbc91f3e4mr21505645e9.3.1715256446176;
        Thu, 09 May 2024 05:07:26 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce1912sm24112005e9.11.2024.05.09.05.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 05:07:25 -0700 (PDT)
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
Subject: [PATCH v2 5/7] drm/rockchip: dsi: Add support for RK3128
Date: Thu,  9 May 2024 14:07:13 +0200
Message-ID: <20240509120715.86694-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509120715.86694-1-knaerzche@gmail.com>
References: <20240509120715.86694-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_050728_298817_690BFA4C 
X-CRM114-Status: GOOD (  13.09  )
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
index 6ed64cc35275..17fd5260218a 100644
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
@@ -1518,6 +1523,18 @@ static const struct rockchip_dw_dsi_chip_data px30_chip_data[] = {
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
@@ -1695,6 +1712,9 @@ static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
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
