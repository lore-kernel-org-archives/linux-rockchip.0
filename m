Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1133C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4V3Rfh8z4sqC8pKk/z0euiwCkBO8Db8U5nmUypnv+KY=; b=r+r+HDxI+0rMet
	ikT/H1cDCSN8n/gUZiH/zO0URu9Sxe3QILDkcwUGnQbvKm6pOB0E0gMRMqD49ateHw8qkqi0pZmiJ
	CqMB4ODxnPfDAVJbfAFSltUbGlqSCWA7BbVnMZf3/XEAL1/mkXMb8cHUtTLY9wXVHWq17kIYwfFH9
	au47Fa9c61wp4FgM5Zt7XkXt3Iv0hPaNefWdIYk4tIOCc5fi1JVgRLE7854kI709e902DBXakUwl+
	DIJ+nb58jvAeEIPzLYSsUKI7JEIf7TnsWJ8Mj3vbvAjisnIRp4CgCmFgYWilrRRAMr77lmdsCNU1S
	HnwsBqQg3clFHq39dWmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGm-00Fsi0-15;
	Wed, 13 Dec 2023 19:51:48 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGW-00FsUd-0m;
	Wed, 13 Dec 2023 19:51:34 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c39e936b4so49405185e9.1;
        Wed, 13 Dec 2023 11:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497091; x=1703101891; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NrdwEALPZcYaKjrlHh8nC5j/rhRtGd0pBvTiQkbpRHQ=;
        b=OZyTT5Nak6GpZmXvg0rttTRSI3uo5O0ocv4Sa8UHdXTXzY8Z/9xYjk8iQGLtMntGYU
         l932PKu6gyBaLzRuTp1Ew0LDFQAT+KVEv9SKhZT+5goePiJU3ORVZH9EEaLtkDKm2iTM
         xA7vEZIG82CLqOM+CMfuv5uUvhmjCCEnKm7ffRyB8UZurqRMgS3i3aOixIEAYqN06ZUK
         qLcFdFrBiHI9ICcxyYcSKH5KTYhV2ZhrPeDNucvS5UJ2LXztbyuc2bzWiTZIv7LOJFq7
         BHULtGemuDACwc5IjL1Wm2uR//OfzU73FNC8ymOp4Y5yEd75W8OV3m2F+E0WI1JEwugu
         83iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497091; x=1703101891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NrdwEALPZcYaKjrlHh8nC5j/rhRtGd0pBvTiQkbpRHQ=;
        b=RA8rvfQQq9FVNqWGpOQyckFsiR2vZK711ybkOZX3nLTqwGkz+JKWvYPyIinAKudkZ8
         85yUrDRtEifSWXQtaqCJo2ndyT628nqyQgq1MCS+AMKryqrqGOcJo5GaYwhWJGpVtSxq
         Lz00fx9Zl43weIM8BiTiBeWPMKs+XVCPFKghpZ2YmAckrK6tDRvYU6Q30Ym9Nv7Q5rpw
         NJMe07/dA0ymPR/rpOvxFVJ6I5QYLzI4PaN9wB+Why3Tvo2liCSk8lwSL42a+OSQHx8e
         SPBj4t/b5BPWcnuFhnOVEHW0aAtkykycwd+BzO52gnPDo1NC4xkC7X7lPGUNFwhvGNLV
         Vf6w==
X-Gm-Message-State: AOJu0Yx6wZwoSF4PiBI/gC9OqQjWA/lGxmo72ay9MGcjj3hVKf8MiaLj
	rZCWL7Hfqjd8UDEGFpWK3Q==
X-Google-Smtp-Source: AGHT+IGQU5KA/JqpSqsrp3zI8GWSKHo4cXHdH/serdCAU99kJFKSeVc9Xpk0T5VW4UF/tn/PaiNWlw==
X-Received: by 2002:a05:600c:468d:b0:40c:3133:6efe with SMTP id p13-20020a05600c468d00b0040c31336efemr2320662wmo.358.1702497090968;
        Wed, 13 Dec 2023 11:51:30 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:30 -0800 (PST)
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
Subject: [PATCH 06/11] drm/rockchip: inno_hdmi: Add RK3128 support
Date: Wed, 13 Dec 2023 20:51:20 +0100
Message-ID: <20231213195125.212923-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115132_279636_619D62BA 
X-CRM114-Status: GOOD (  19.89  )
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

This variant requires the phy reference clock to be enabled before the
DDC block can work and the (initial) DDC bus frequency is calculated
based on the rate of this clock.
Besides the only difference is phy configuration which is required to make
the driver working for this variant as well.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 46 +++++++++++++++++++++++++---
 1 file changed, 41 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 593b184bd0ad..f7f0bec725f9 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -63,6 +63,7 @@ struct inno_hdmi {
 
 	int irq;
 	struct clk *pclk;
+	struct clk *refclk;
 	void __iomem *regs;
 
 	struct drm_connector	connector;
@@ -85,6 +86,12 @@ static struct inno_hdmi_phy_config rk3036_hdmi_phy_configs[] = {
 	{ ~0UL,	     0x00, 0x00 }
 };
 
+static struct inno_hdmi_phy_config rk3128_hdmi_phy_configs[] = {
+	{ 74250000,  0x3f, 0xaa },
+	{ 165000000, 0x5f, 0xaa },
+	{ ~0UL,	     0x00, 0x00 }
+};
+
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
 {
 	struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
@@ -930,6 +937,20 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
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
@@ -946,12 +967,16 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
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
-	hdmi->tmds_rate = clk_get_rate(hdmi->pclk);
+	if (hdmi->refclk)
+		hdmi->tmds_rate = clk_get_rate(hdmi->refclk);
+	else
+		hdmi->tmds_rate = clk_get_rate(hdmi->pclk);
 	inno_hdmi_i2c_init(hdmi);
 
 	ret = inno_hdmi_register(drm, hdmi);
@@ -976,6 +1001,8 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 err_put_adapter:
 	i2c_put_adapter(hdmi->ddc);
 err_disable_clk:
+	clk_disable_unprepare(hdmi->refclk);
+err_disable_pclk:
 	clk_disable_unprepare(hdmi->pclk);
 	return ret;
 }
@@ -989,6 +1016,7 @@ static void inno_hdmi_unbind(struct device *dev, struct device *master,
 	hdmi->encoder.encoder.funcs->destroy(&hdmi->encoder.encoder);
 
 	i2c_put_adapter(hdmi->ddc);
+	clk_disable_unprepare(hdmi->refclk);
 	clk_disable_unprepare(hdmi->pclk);
 }
 
@@ -1012,10 +1040,18 @@ static const struct inno_hdmi_variant rk3036_inno_hdmi_variant = {
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
