Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E605CC46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuvOLuCsBz0E/DgCXIFoQsvrb7X5gV6CN7QMtEU8hlg=; b=pm4vMgdwpXNKkD
	d2m4ylp9EtKQKyG/a5Sz5ZsqYh7lFTuZG3NReNoug/vefpQu2txSQI6t7+LXU74I+pVSljn+4s8xT
	2mDB42yyec/lNXSXt5158njE+F3SzBe7tfZCfmQ1pK7Qqs0twRoAKJ/UFgY8moxNtpbEkgeHI/uUv
	LeYRR7g7XlPGTB+Frgy1BDvgGk7Uk72PKI7aP+FtgTI/VDu32EMkPJOMqRgJhj4Asmj2MNL0z1Adg
	+nz6RDPMoR/HE915y7ONU+qwHB86Fvu8VSpcMn4n077KGm86cA9d1daYfaHruqCLD+x4l8dpGL0TC
	C7YdRvL2OOK7nbb8w4Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXXh-006M5b-2w;
	Sat, 16 Dec 2023 16:29:33 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVc-006K0A-2F;
	Sat, 16 Dec 2023 16:27:27 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40d12b56a38so3244065e9.2;
        Sat, 16 Dec 2023 08:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744041; x=1703348841; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BFps/f+CAs2Nk6z2SsJd+Q0Norbs9x1sCDtq35o8jMc=;
        b=OaMhc6hOcWyI3EcwC07sfQHmS61QhAzmhYKWOk0UYaRQQz9qQ8GCKaVsUPsG1iYeIN
         /A63PGEhDuWq9PEhsLSaXf9UTKn5mg/piy4kUpljirv0whM8CA/viG2HzeIIbideRrNn
         dAaBVgfoJzvAt3IvPvtaYIEqFFQvtwzenn8RUyMwt2xeJ32FEJ9+F7J9zSPyqVrfBRSI
         BzzqrSgwvSPJuIVBeGuMiiU1/+cRF3smUBtMGpLlESBaRuBkOn5TTrxSlITvWyY26TKD
         qUEY/FmRFGIdLlmm8GJyuAqc+5klREWDrAFKyvSEHzal8LPStXMcwQs/6WtrbwKDENNr
         /E9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744041; x=1703348841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BFps/f+CAs2Nk6z2SsJd+Q0Norbs9x1sCDtq35o8jMc=;
        b=jMqQZQvr5PUFdfwnQb/kS7j1Ys/izWOXl5jQ/3ziNMhSLAmXrF7/vhQCR+X7ZvM3Fc
         2z/7+RTYSjbklaiVyAVyHDUbpMMU0DTS5a0Egx3jzgPYLA+sxU8V1F4l3UmM81CkcFGV
         nwsna6opMPuLsltdw1ymWiS1LktxN6wm+AzaRgjPWUco4BgL4GNYUdV9XVHCyk0Q64WH
         IMiYP2kDCSnZe78Ojva7QbHBgSN0l2A0YCcsk4MTtnJejJby0E9l0q8d/WH36795slZB
         IseJ9UVSFZBopJjvkfynHRUnCn/2CF0T8sprPGDFYTag7xs5FipqpWi52Ae+lmavheiu
         ppfg==
X-Gm-Message-State: AOJu0YxNF6Tgp2LBuKeOwQhf20c1rbuSQLCZ/j5+V7ZFsVK49calBOEk
	g2S9D0XVnxUknfFfiTloPg==
X-Google-Smtp-Source: AGHT+IGBF4gaRoU/EL0I7tI8RwIyRSfbuxuXO3TR0CaxGjhOjNNy6BcBWFK0VOilT5H96GBjjIme0g==
X-Received: by 2002:a05:600c:3d10:b0:40c:dda4:3582 with SMTP id bh16-20020a05600c3d1000b0040cdda43582mr264470wmb.314.1702744041618;
        Sat, 16 Dec 2023 08:27:21 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:21 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 22/27] drm/rockchip: inno_hdmi: Add RK3128 support
Date: Sat, 16 Dec 2023 17:26:33 +0100
Message-ID: <20231216162639.125215-23-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082724_745948_D975F8DA 
X-CRM114-Status: GOOD (  20.47  )
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

This variant requires the phy reference clock to be enabled before the DDC
block can work and the (initial) DDC bus frequency is calculated based on
the rate of this clock. Besides the only difference is phy configuration
required to make the driver working for this variant as well.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - no changes

 drivers/gpu/drm/rockchip/inno_hdmi.c | 46 +++++++++++++++++++++++++---
 1 file changed, 41 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 579baba6a61b..792e5fad09bf 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -51,6 +51,7 @@ struct inno_hdmi {
 	struct device *dev;
 
 	struct clk *pclk;
+	struct clk *refclk;
 	void __iomem *regs;
 
 	struct drm_connector	connector;
@@ -133,6 +134,12 @@ static struct inno_hdmi_phy_config rk3036_hdmi_phy_configs[] = {
 	{      ~0UL, 0x00, 0x00 }
 };
 
+static struct inno_hdmi_phy_config rk3128_hdmi_phy_configs[] = {
+	{  74250000, 0x3f, 0xaa },
+	{ 165000000, 0x5f, 0xaa },
+	{      ~0UL, 0x00, 0x00 }
+};
+
 static int inno_hdmi_find_phy_config(struct inno_hdmi *hdmi,
 				     unsigned long pixelclk)
 {
@@ -182,13 +189,17 @@ static unsigned long inno_hdmi_tmds_rate(struct inno_hdmi *hdmi)
 	}
 
 	/*
-	 * When IP controller haven't configured to an accurate video
-	 * timing, then the TMDS clock source would be switched to
-	 * PCLK_HDMI, so we need to init the TMDS rate to PCLK rate,
-	 * and reconfigure the DDC clock.
+	 * When IP controller isn't configured to an accurate
+	 * video timing and there is no reference clock available,
+	 * then the TMDS clock source would be switched to PCLK_HDMI,
+	 * so we need to init the TMDS rate to PCLK rate, and
+	 * reconfigure the DDC clock.
 	 */
 
-	return clk_get_rate(hdmi->pclk);
+	if (hdmi->refclk)
+		return clk_get_rate(hdmi->refclk);
+	else
+		return clk_get_rate(hdmi->pclk);
 }
 
 static void inno_hdmi_i2c_init(struct inno_hdmi *hdmi)
@@ -912,6 +923,20 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
+	hdmi->refclk = devm_clk_get_optional(hdmi->dev, "ref");
+	if (IS_ERR(hdmi->refclk)) {
+		DRM_DEV_ERROR(hdmi->dev, "Unable to get HDMI reference clock\n");
+		ret = PTR_ERR(hdmi->refclk);
+		goto err_disable_pclk;
+	}
+
+	ret = clk_prepare_enable(hdmi->refclk);
+	if (ret) {
+		DRM_DEV_ERROR(hdmi->dev,
+			      "Cannot enable HDMI reference clock: %d\n", ret);
+		goto err_disable_pclk;
+	}
+
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0) {
 		ret = irq;
@@ -951,6 +976,8 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 err_put_adapter:
 	i2c_put_adapter(hdmi->ddc);
 err_disable_clk:
+	clk_disable_unprepare(hdmi->refclk);
+err_disable_pclk:
 	clk_disable_unprepare(hdmi->pclk);
 	return ret;
 }
@@ -964,6 +991,7 @@ static void inno_hdmi_unbind(struct device *dev, struct device *master,
 	hdmi->encoder.encoder.funcs->destroy(&hdmi->encoder.encoder);
 
 	i2c_put_adapter(hdmi->ddc);
+	clk_disable_unprepare(hdmi->refclk);
 	clk_disable_unprepare(hdmi->pclk);
 }
 
@@ -987,10 +1015,18 @@ static const struct inno_hdmi_variant rk3036_inno_hdmi_variant = {
 	.default_phy_config = &rk3036_hdmi_phy_configs[1],
 };
 
+static const struct inno_hdmi_variant rk3128_inno_hdmi_variant = {
+	.phy_configs = rk3128_hdmi_phy_configs,
+	.default_phy_config = &rk3128_hdmi_phy_configs[1],
+};
+
 static const struct of_device_id inno_hdmi_dt_ids[] = {
 	{ .compatible = "rockchip,rk3036-inno-hdmi",
 	  .data = &rk3036_inno_hdmi_variant,
 	},
+	{ .compatible = "rockchip,rk3128-inno-hdmi",
+	  .data = &rk3128_inno_hdmi_variant,
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, inno_hdmi_dt_ids);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
