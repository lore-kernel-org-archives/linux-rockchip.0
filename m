Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A704C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpA/oZvtawe8Z0VFNvQxs7cHfneTlw+aBF/8jBHLGZc=; b=BYdAepYTKBA9zc
	OxRACXywasmBSKrmrkkCJmqfpHSnaufwb5uZkZtEyXV7+wdw+c32hdj1TA9x+vVFn0c6e+xAFnOZr
	CanyyQgGOetnfsZw3RtZufmBDiovhDV0Lv0ypnwpoqoEuIWHxJEGola3lT5hG0v+Hf82Ec8a499Iq
	xo6QZ7bSSYjNCU2G1jfzy0sKYf6AbSV+lAMXd3/KTgMZvJ3giaHT2sxed0LrCuH+Jrn6wBWUD+/Hj
	CSKHB14HYFeACLeVrNFmzZs/YS7PXAMIVJPVQIr7WiZFBkvI2MtAzdaNeB+upSEWLqPw33uhLn941
	u0koYtyMayxSibK6nZaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGja3-006YgS-0H;
	Fri, 22 Dec 2023 17:45:03 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXk-006WWU-2H;
	Fri, 22 Dec 2023 17:42:43 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-33686649b72so1950166f8f.3;
        Fri, 22 Dec 2023 09:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266959; x=1703871759; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PRDLrc4Pqc9q8YV3BNYLNdW1nNQ91cRb/kLeFqZo5Z4=;
        b=ELIfF2ex2Rq8023Sa2JJ6u2+wSPexrewG2sEoRIUa/lYGafXInSSiXZX7+mslqzuPx
         CmIR1X52AZzFv4hKChyjDIfX4jouXbetWIUVAuZH5ZsxTjky9xGAvzkxqdM94psjIKk8
         gkLopr603B4bMEB0NzWZZgllrTEwADc8l6xLXOJO6q0ABhdySHe16DrPG2u7vSdOSkMm
         /UlTChh4k10cwS9E/QCWpaYVE6iTOlKEzvYgrAzdILmhyReSJelRYvFCGI9vWdDSck8l
         OhqWjPwCLoIyHdLRK7xBzSZxNtP0i3KbLiAATasZYISi3OwuKVtok+D1HRbPf9Y5/9eS
         D1jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266959; x=1703871759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PRDLrc4Pqc9q8YV3BNYLNdW1nNQ91cRb/kLeFqZo5Z4=;
        b=HAlxeM02x6xty+UJDGzuBC1mxtEvf3eM1ZJhiRIcSH7GTFVyFHO11gatU1Tltn4+iV
         8r9mawicitwlFjph+lBpjAM0vXhQL6YQ70A6b7nsZ1NkrD7iPf8YwvFqqeLZUHhqHEA3
         rrTOz95vqfobUTgx0YD0ikEh0vrrwKCHsyKinJxM/qD4HYuriYTzaWKobF/LwlUtHh9x
         PX4Pb7VYZM1A/LWvSfz0tzWkRAk2Wv4Q3ZE3j5yoU0CEERxTYfEoIklSuP37tWZ6sLKL
         odeRJwY9usU5E08+33t2SolmFYdqI4KBnaTYykSalSl1QDapJrqVJlOjqN3iMVObQaKT
         /acg==
X-Gm-Message-State: AOJu0YwgXM1pbYRQvSNq6qy1zIE4aFMU5ZPM/bLaBK3gUs5mH9MZJHPH
	6VE1LZOOCiVv9pdaX8AM+Q==
X-Google-Smtp-Source: AGHT+IE2+DqN7baMUSo6d5TvP8kuW5Y4xLA/e6OLwP2k9pd79ImZ8Ug8T4zNqmw73cYCUbKdboHsaA==
X-Received: by 2002:a5d:66c6:0:b0:336:7a37:27ed with SMTP id k6-20020a5d66c6000000b003367a3727edmr931646wrw.20.1703266959411;
        Fri, 22 Dec 2023 09:42:39 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:38 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 24/29] drm/rockchip: inno_hdmi: Add RK3128 support
Date: Fri, 22 Dec 2023 18:42:15 +0100
Message-ID: <20231222174220.55249-25-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094240_768507_400BB70F 
X-CRM114-Status: GOOD (  20.23  )
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

changes in v3:
 - no changes

changes in v4:
 - none

 drivers/gpu/drm/rockchip/inno_hdmi.c | 46 +++++++++++++++++++++++++---
 1 file changed, 41 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 34f0358e8d7b..3b76929deefe 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -51,6 +51,7 @@ struct inno_hdmi {
 	struct device *dev;
 
 	struct clk *pclk;
+	struct clk *refclk;
 	void __iomem *regs;
 
 	struct drm_connector	connector;
@@ -132,6 +133,12 @@ static struct inno_hdmi_phy_config rk3036_hdmi_phy_configs[] = {
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
@@ -911,6 +918,20 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
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
@@ -927,12 +948,16 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	}
 
 	/*
-	 * When IP controller haven't configured to an accurate video
-	 * timing, then the TMDS clock source would be switched to
-	 * PCLK_HDMI, so we need to init the TMDS rate to PCLK rate,
-	 * and reconfigure the DDC clock.
+	 * When the controller isn't configured to an accurate
+	 * video timing and there is no reference clock available,
+	 * then the TMDS clock source would be switched to PCLK_HDMI,
+	 * so we need to init the TMDS rate to PCLK rate, and
+	 * reconfigure the DDC clock.
 	 */
-	inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->pclk));
+	if (hdmi->refclk)
+		inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->refclk));
+	else
+		inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->pclk));
 
 	ret = inno_hdmi_register(drm, hdmi);
 	if (ret)
@@ -956,6 +981,8 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 err_put_adapter:
 	i2c_put_adapter(hdmi->ddc);
 err_disable_clk:
+	clk_disable_unprepare(hdmi->refclk);
+err_disable_pclk:
 	clk_disable_unprepare(hdmi->pclk);
 	return ret;
 }
@@ -969,6 +996,7 @@ static void inno_hdmi_unbind(struct device *dev, struct device *master,
 	hdmi->encoder.encoder.funcs->destroy(&hdmi->encoder.encoder);
 
 	i2c_put_adapter(hdmi->ddc);
+	clk_disable_unprepare(hdmi->refclk);
 	clk_disable_unprepare(hdmi->pclk);
 }
 
@@ -992,10 +1020,18 @@ static const struct inno_hdmi_variant rk3036_inno_hdmi_variant = {
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
