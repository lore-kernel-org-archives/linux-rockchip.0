Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FBD0C46CA2
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUj1Cb27UHWQshfb5IgBzSBsSJxZ7zjSFviwnYT+MdI=; b=d+uUWnceZSPSMR
	BQDiv7PXVmyuJjPpmFQ2O/Z2p/pLm6jrkEWxiwwiMnL21317jf5+oW04dFu/4OQJIqd8i3YEwrtux
	YcmgLJaTE05hQcYjeHb1/dq88RNHvhyV/WvceDUZsyonBzdzvmMWkkQIKVkHewpRPTkptMzGbZtMO
	oVUWk6wBrXsNxwBLruO7KxEvxC1SVPZ8pHZRKWySDs1zdhUtvXIioHXxyUOlx5U8bphb1OphMgH8W
	JPKFYwqR4gNkJkumnmyhPySJMKRLtshDFD//MPe4caQeFQ8KJx/NzCll3FXt0dMEMw7d3fOWigwUH
	QppyP08lvSPl3GY2pGUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXXf-006M3I-0j;
	Sat, 16 Dec 2023 16:29:31 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVd-006JzR-0C;
	Sat, 16 Dec 2023 16:27:27 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40b5155e154so20432095e9.3;
        Sat, 16 Dec 2023 08:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744041; x=1703348841; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PQiEPu38i3aFFXbXmZDuj9Z5I3dO6tjlHXJ/GQ5qAv8=;
        b=Fc7wpdhsh7EyZL547haqIWhtX+bh/QcUVTasat+/Vju4dxI7KIVNEyvusv8giKB2Ed
         kbT+1FIw+O8fiQLg20tJRC3a5yTKTzcaagJL7wtA45svMQbMabJLdOTfA4+15VoILbnr
         S7wZRpaWt7dGSNG80P6Np86dnxHbmKRpqwdUZZue0dJoUP7S3DArSdNjvlAnDxPXBMKc
         p6yK0WukKmmbsN/5XHxMC6gTBysGG1tiEHcUUFRV82tZg15nhSCI/T4x5NbT+m12JJ5W
         mLtAIFJu9tsMQt90PCZZS1RL5ocTRgjFrlvsVlYtnZNIlNYb8NtSVe1OZ1WqYZJxJVZC
         I+7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744041; x=1703348841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PQiEPu38i3aFFXbXmZDuj9Z5I3dO6tjlHXJ/GQ5qAv8=;
        b=kZFCFgAHIQr6vMhPXpsgWNvPJc/HConkFU1KMJHoPZFGNAuA18kJRvELc9ovkOHfQI
         It+mCspnPPYpiWuVAavKEZ/mUJvdW82hoRwAaClrovZjP1PeCBWM/Jr+O6ss/dczKuuc
         HLuejnhKvUF2YqfYYFtQSJ8bP2cFnmIPLM/sukg+RBNjUhy22/qJ5ex8g0HeXxM7ID4H
         Oolis2mxfREdP6jhuFab1/1p0Nbzj5yOSmTW5TwJVoiosKoSdh6Fqg2wzoIaw4GqUsMk
         HKTwuhA6nxrlTZOaGEa2wtM546tlGdLV3kSOsC9dF9k1n0hJugqzMkuEIc6ZpSEDnaUl
         DDdg==
X-Gm-Message-State: AOJu0YwnCMJw+iah0mNrq4KCq33SqrGKXNVerbEmyZ7qZXJCZLUytQYo
	scILjFB58jh1DqAVEhlnXA==
X-Google-Smtp-Source: AGHT+IGQCWmeafdHQEypddGMm/p+SelPFJgQl85DV9NvkhBX+hUyEJqHE51Oq1RSeni9fFl9ZjpDOw==
X-Received: by 2002:a05:600c:524e:b0:40c:18e9:d610 with SMTP id fc14-20020a05600c524e00b0040c18e9d610mr6278994wmb.71.1702744040982;
        Sat, 16 Dec 2023 08:27:20 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:20 -0800 (PST)
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
Subject: [PATCH v2 21/27] drm/rockchip: inno_hdmi: Add variant support
Date: Sat, 16 Dec 2023 17:26:32 +0100
Message-ID: <20231216162639.125215-22-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082725_109089_6B3DAC2F 
X-CRM114-Status: GOOD (  21.54  )
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
 
 drivers/gpu/drm/rockchip/inno_hdmi.c | 69 +++++++++++++++++++++++++++-
 1 file changed, 67 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 9f27a5faf12d..579baba6a61b 100644
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
@@ -114,6 +127,30 @@ static const char coeff_csc[][24] = {
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
@@ -179,12 +216,26 @@ static void inno_hdmi_sys_power(struct inno_hdmi *hdmi, bool enable)
 
 static void inno_hdmi_set_pwr_mode(struct inno_hdmi *hdmi, int mode)
 {
+	struct inno_hdmi_phy_config *phy_config;
+	int ret;
+	unsigned long tmds_rate;
+
 	switch (mode) {
 	case NORMAL:
 		inno_hdmi_sys_power(hdmi, false);
+		tmds_rate = inno_hdmi_tmds_rate(hdmi);
+		ret = inno_hdmi_find_phy_config(hdmi, tmds_rate);
+		if (ret < 0) {
+			phy_config = hdmi->variant->default_phy_config;
+			DRM_DEV_ERROR(hdmi->dev,
+				      "Using default phy configuration for TMDS rate %lu",
+				      tmds_rate);
+		} else {
+			phy_config = &hdmi->variant->phy_configs[ret];
+		}
 
-		hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x6f);
-		hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0xbb);
+		hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, phy_config->pre_emphasis);
+		hdmi_writeb(hdmi, HDMI_PHY_DRIVER, phy_config->voltage_level_control);
 
 		hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
 		hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x14);
@@ -827,6 +878,8 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = data;
 	struct inno_hdmi *hdmi;
+	const struct inno_hdmi_variant *variant;
+
 	int irq;
 	int ret;
 
@@ -836,6 +889,12 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 
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
@@ -923,8 +982,14 @@ static void inno_hdmi_remove(struct platform_device *pdev)
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
