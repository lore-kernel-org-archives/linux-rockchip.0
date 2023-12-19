Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCBC5C46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Xb/K5Jj1fpGwRVForxf8NbZ6i5R/x7bkJ4BjNT0HDs=; b=rbfdYjaFARgZm9
	eupa9FqSR/zu4KSKD/Ki/wI7Fa9kZ2b1lD6i2OLS8IpO2oIi5xpuaEw8+hVPM1u4SiDDlI5vxxqeF
	D/ClLgEsx7Xj6TB7zbRd9H9MmEIme0a1RBqALjz2Ge3KaQgrDRuln1b83FmnG5ei1VUZmCKQZaZEf
	DB9TBy6aPmpnzI/ZJdoTh+VZtvlpWkjZhLtXO9ZlEE5MKhXuYEHu/v1F+fQ/ObCgG9Fiu7ACcXED2
	aqaBlHevdXvr+ORpSWeyd2mF3flXVZ7/iT4feitr5I7brPD03Ae/q3//8WMYsIKAm+Rk8kDFQ95U/
	hfRJ+LKj+574kWEim29g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdUt-00Eq1H-2v;
	Tue, 19 Dec 2023 17:03:11 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTF-00EoHW-2Q;
	Tue, 19 Dec 2023 17:01:34 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40c29f7b068so52847795e9.0;
        Tue, 19 Dec 2023 09:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005288; x=1703610088; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6i2p9YgvuxkTu14agPnwE9rj1vc0S1z9mKZiq597B/g=;
        b=VfPPgm0Jexa3PFJWjt1Tna9NXHLJkFMsAmws+CqnjUY//mjHCOjY3rRcTL6z4XBKus
         ELTQ/SrEHekzZD3BlefVqWAHnNa3bZPzjB7TijO4EeaElAs0MVZpYhLIa3b9/YLcIBbw
         ZrUMu7/6NThG+9v7rAudIg06I2O+n1MPirVslzxWKqfbd4AVXfdCZAqs5NJdAhIOwit+
         rggtO7A9Xw9d43SgZrrUiEf77WLVhqYFHcwjIocFmNS8/PYi/YJIG59kULLlEgPpHpsw
         8zcYmJqFuoc5NVvfusVNa8oZIy0C5p0CzLYv5txSYC7Sij+7z3KqdpN0Lb/s3PMfqfxX
         ufDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005288; x=1703610088;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6i2p9YgvuxkTu14agPnwE9rj1vc0S1z9mKZiq597B/g=;
        b=H69X9Lp+aN0SDnv9kTYTNMhEHXJIIayXwWmIfK6mvDLpY3Zaa52MI0Rvz+9dBu2wHn
         teyFP4RSo5CHZ69bSWq30IvIIzewjUA2RFqoopueseo5MmCeEr8uj7XjxiBwk9OSrVJR
         NdIbSyalaOrp1Unuhc6BQA4baC412oQ7bQiFhb2eqLFJc5nxsp4zrjhC5WB/pnBza/z0
         6YXIZriPDGDxMZ8Vjp0vBlWaajvnIyB9F0b1bzZ5gWFhIP8W76AcItBLAFtlyE4k9W/Z
         P+Az9R8+YiNDPNQCkQHZ62aJtcA/6S96TjF04y7AvIBHBuYBZBJ9AiCClDJatNVNCEmw
         y14Q==
X-Gm-Message-State: AOJu0YwzkhvGK9Mh1Hg6zfSkqDrNGZbXYCHBH10IAqkEx3BdNMKufV29
	mUQwFZzMYV+caWcU2sFqBg==
X-Google-Smtp-Source: AGHT+IFnEzt1e8cd8Dpw4x8T7LBa0FeImTMH77k+VZIjyFeGojZteErqLo30v/LfPauu0pS6MS1jtg==
X-Received: by 2002:a05:600c:1d12:b0:40c:93f:5da2 with SMTP id l18-20020a05600c1d1200b0040c093f5da2mr9354501wms.33.1703005288338;
        Tue, 19 Dec 2023 09:01:28 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:28 -0800 (PST)
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
Subject: [PATCH v3 23/29] drm/rockchip: inno_hdmi: Add variant support
Date: Tue, 19 Dec 2023 18:00:53 +0100
Message-ID: <20231219170100.188800-24-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090129_927343_2C542B0B 
X-CRM114-Status: GOOD (  23.53  )
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

In preparation to support RK3128's integration of the controller, this
patch adds a simple variant implementation. They mainly differ in the phy
configuration required, so those are part of the match_data. The values
have been taken from downstream. The pixelclocks in there are meant to be
max-inclusive.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - no changes

changes in v3:
 - adapt to the newly introduced inno_hdmi_power_up / inno_hdmi_standby functions

 drivers/gpu/drm/rockchip/inno_hdmi.c | 74 ++++++++++++++++++++++++++--
 1 file changed, 69 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index e21f6d7aeee6..df979bab9abd 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -26,6 +26,17 @@
 
 #include "inno_hdmi.h"
 
+struct inno_hdmi_phy_config {
+	unsigned long pixelclock;
+	u8 pre_emphasis;
+	u8 voltage_level_control;
+};
+
+struct inno_hdmi_variant {
+	struct inno_hdmi_phy_config *phy_configs;
+	struct inno_hdmi_phy_config *default_phy_config;
+};
+
 struct inno_hdmi_i2c {
 	struct i2c_adapter adap;
 
@@ -47,6 +58,8 @@ struct inno_hdmi {
 
 	struct inno_hdmi_i2c *i2c;
 	struct i2c_adapter *ddc;
+
+	const struct inno_hdmi_variant *variant;
 };
 
 struct inno_hdmi_connector_state {
@@ -113,6 +126,30 @@ static const char coeff_csc[][24] = {
 	},
 };
 
+static struct inno_hdmi_phy_config rk3036_hdmi_phy_configs[] = {
+	{  74250000, 0x3f, 0xbb },
+	{ 165000000, 0x6f, 0xbb },
+	{      ~0UL, 0x00, 0x00 }
+};
+
+static int inno_hdmi_find_phy_config(struct inno_hdmi *hdmi,
+				     unsigned long pixelclk)
+{
+	const struct inno_hdmi_phy_config *phy_configs =
+						hdmi->variant->phy_configs;
+	int i;
+
+	for (i = 0; phy_configs[i].pixelclock != ~0UL; i++) {
+		if (pixelclk <= phy_configs[i].pixelclock)
+			return i;
+	}
+
+	DRM_DEV_DEBUG(hdmi->dev, "No phy configuration for pixelclock %lu\n",
+		      pixelclk);
+
+	return -EINVAL;
+}
+
 static inline u8 hdmi_readb(struct inno_hdmi *hdmi, u16 offset)
 {
 	return readl_relaxed(hdmi->regs + (offset) * 0x04);
@@ -164,12 +201,25 @@ static void inno_hdmi_standby(struct inno_hdmi *hdmi)
 	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
 };
 
-static void inno_hdmi_power_up(struct inno_hdmi *hdmi)
+static void inno_hdmi_power_up(struct inno_hdmi *hdmi,
+			       unsigned long mpixelclock)
 {
+	struct inno_hdmi_phy_config *phy_config;
+	int ret = inno_hdmi_find_phy_config(hdmi, mpixelclock);
+
+	if (ret < 0) {
+		phy_config = hdmi->variant->default_phy_config;
+		DRM_DEV_ERROR(hdmi->dev,
+			      "Using default phy configuration for TMDS rate %lu",
+			      mpixelclock);
+	} else {
+		phy_config = &hdmi->variant->phy_configs[ret];
+	}
+
 	inno_hdmi_sys_power(hdmi, false);
 
-	hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x6f);
-	hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0xbb);
+	hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, phy_config->pre_emphasis);
+	hdmi_writeb(hdmi, HDMI_PHY_DRIVER, phy_config->voltage_level_control);
 	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
 	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x14);
 	hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x10);
@@ -406,6 +456,7 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 			   struct drm_display_mode *mode)
 {
 	struct drm_display_info *display = &hdmi->connector.display_info;
+	unsigned long mpixelclock = mode->clock * 1000;
 
 	/* Mute video and audio output */
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
@@ -428,13 +479,13 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	 * DCLK_LCDC, so we need to init the TMDS rate to mode pixel
 	 * clock rate, and reconfigure the DDC clock.
 	 */
-	inno_hdmi_i2c_init(hdmi, mode->clock * 1000);
+	inno_hdmi_i2c_init(hdmi, mpixelclock);
 
 	/* Unmute video and audio output */
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
 		  v_AUDIO_MUTE(0) | v_VIDEO_MUTE(0));
 
-	inno_hdmi_power_up(hdmi);
+	inno_hdmi_power_up(hdmi, mpixelclock);
 
 	return 0;
 }
@@ -821,6 +872,7 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = data;
 	struct inno_hdmi *hdmi;
+	const struct inno_hdmi_variant *variant;
 	int irq;
 	int ret;
 
@@ -830,6 +882,12 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 
 	hdmi->dev = dev;
 
+	variant = of_device_get_match_data(hdmi->dev);
+	if (!variant)
+		return -EINVAL;
+
+	hdmi->variant = variant;
+
 	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hdmi->regs))
 		return PTR_ERR(hdmi->regs);
@@ -923,8 +981,14 @@ static void inno_hdmi_remove(struct platform_device *pdev)
 	component_del(&pdev->dev, &inno_hdmi_ops);
 }
 
+static const struct inno_hdmi_variant rk3036_inno_hdmi_variant = {
+	.phy_configs = rk3036_hdmi_phy_configs,
+	.default_phy_config = &rk3036_hdmi_phy_configs[1],
+};
+
 static const struct of_device_id inno_hdmi_dt_ids[] = {
 	{ .compatible = "rockchip,rk3036-inno-hdmi",
+	  .data = &rk3036_inno_hdmi_variant,
 	},
 	{},
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
