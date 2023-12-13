Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43917C19774
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCqd66ER4jIpW5ISPdUBFYXTJuS3qjh6rZafyg+Zuls=; b=LCr0mPlun5Jx/j
	7Ucd36L0lSU85vNjcpcsL5nIYEzxTwH/f2ZxlvTXptJlL3lxdFSalCee8hL3T6YFUQBkIQ5K7Z8EG
	bwo2w/lQ4i/bUxooS4vRO3O3tY6vD7lhyZrb5p/AuW3sM3Y56Xn8mtFfa75VTr59G37l/KPrIZnvf
	i9IFNyTVtDVWQLLN7b/YSkJD+FVaIcr0QGwXDpP1CFXvD4wEgl+NlLySD4yI9HrTWeNS6co+AGMPK
	nulmDf2qKsZRYh1vu8VAPLSJ5yVA7O6cZPJycNabRzUxEPvaHSh9ckCPo5UG6r4jhOXefKWsh7C6J
	VF/JY9B0M6U6/KZycbZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGn-00Fsju-2e;
	Wed, 13 Dec 2023 19:51:49 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGX-00FsTi-0r;
	Wed, 13 Dec 2023 19:51:35 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40c32df9174so65259845e9.3;
        Wed, 13 Dec 2023 11:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497090; x=1703101890; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SouF/Ke6EpeUvfoqZ3rKNuHloSyd05Y/ZVCgaagWqrY=;
        b=nKA5uGVh7RmReypKflse8PQu+kOx+bf7z6siU+UuOZyNKlqQpKZ0SGn6dvAgkakMwj
         jKy/Das1tHyW7LV2VbKvw53SYNrPuvudtANck3It4zEaTQxJS0QxF57civPGP1/zCFaF
         tjEat6WDz7t6v9fHd/XeiXZE4f4CLqvHTpAATC5YTTw+r+CR414UiZNuBeDKaYz2xe2a
         ipicFFR42JaP3hGLg4DYHiT6rQT2hUrVgDZpaHWuS8jirp6EaRhZB2z/RByt2ZOfEwxu
         lqLjQDz+Rrz9IqIGBBRJg5dX2Er96IMzqZUc7iSGsEv3tG/NsX0SIOOl8RLKdxSrdum8
         Kk3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497090; x=1703101890;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SouF/Ke6EpeUvfoqZ3rKNuHloSyd05Y/ZVCgaagWqrY=;
        b=ikBFxsl/VViaXy+GYu0CVTX2OI0M+s4Yp4+oJdSMqW4QQ62ah3jmaO3S1hy6ZDoBDo
         ThSsRTTTfMCk1pHjzG0mLQmhTyymmSzFb9ifOUcOV7wkc2GikTZ9NNb3ZhpzOCTJ8Aza
         dgpXBIKGhVuR7yA4sbLNbCDdFQgtdSvtUsrbvo4pD2GJ3cZVz3hUV8/ih3PmmJQw80t9
         Cv4xVEC7N1z15jItomD6TSFpA1SNB7kBDfxbKT2n7gD+juc2nNQcqqrsUTSw3OvhxSeO
         86ITSXzRfEEHw7/k6TguH2hPuVvDzhv+kAMSFmlOs+Vf95xBR9TxGsgacPrNd/ixZNLH
         HFbg==
X-Gm-Message-State: AOJu0YwaN994UUxr44C6lyzHhYZcMXtZOwFsgykv41o6eVMDH6Hrfx2k
	Aku9hNsLj1EOFB9F7VvfRw==
X-Google-Smtp-Source: AGHT+IF3dmjdH+sKpem8q1BZFR4nFS4vYZs3puOpJfKUnCvQRp2cuFM4A3r5prEoc+CN23yNfvJiAQ==
X-Received: by 2002:a05:600c:20e:b0:40c:22de:79 with SMTP id 14-20020a05600c020e00b0040c22de0079mr3015293wmi.226.1702497090248;
        Wed, 13 Dec 2023 11:51:30 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.29
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
Subject: [PATCH 05/11] drm/rockchip: inno_hdmi: Add variant support
Date: Wed, 13 Dec 2023 20:51:19 +0100
Message-ID: <20231213195125.212923-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115133_334574_477B605A 
X-CRM114-Status: GOOD (  21.02  )
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
patch adds a simple variant implementation. They mainly differ in the
phy configuration required, so those are part of the match_data.
The values have been taken from downstream. The pixelclocks in there are
meant to be max-inclusive.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 68 +++++++++++++++++++++++++++-
 1 file changed, 66 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 32626a75723c..593b184bd0ad 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -27,6 +27,17 @@
 
 #include "inno_hdmi.h"
 
+struct inno_hdmi_phy_config {
+	unsigned int pixelclock;
+	u8 pre_emphasis;
+	u8 voltage_level_control;
+};
+
+struct inno_hdmi_variant {
+	struct inno_hdmi_phy_config *phy_configs;
+	struct inno_hdmi_phy_config *default_phy_config;
+};
+
 struct hdmi_data_info {
 	int vic;
 	bool sink_has_audio;
@@ -64,6 +75,14 @@ struct inno_hdmi {
 
 	struct hdmi_data_info	hdmi_data;
 	struct drm_display_mode previous_mode;
+
+	const struct inno_hdmi_variant *variant;
+};
+
+static struct inno_hdmi_phy_config rk3036_hdmi_phy_configs[] = {
+	{ 74250000,  0x3f, 0xbb },
+	{ 165000000, 0x6f, 0xbb },
+	{ ~0UL,	     0x00, 0x00 }
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -176,6 +195,24 @@ static inline void hdmi_modb(struct inno_hdmi *hdmi, u16 offset,
 	hdmi_writeb(hdmi, offset, temp);
 }
 
+static int inno_hdmi_find_phy_config(struct inno_hdmi *hdmi,
+				     unsigned int pixelclk)
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
+	DRM_DEV_DEBUG(hdmi->dev, "No phy configuration for pixelclock %u\n",
+		      pixelclk);
+
+	return -EINVAL;
+}
+
 static void inno_hdmi_i2c_init(struct inno_hdmi *hdmi)
 {
 	int ddc_bus_freq;
@@ -200,12 +237,25 @@ static void inno_hdmi_sys_power(struct inno_hdmi *hdmi, bool enable)
 
 static void inno_hdmi_set_pwr_mode(struct inno_hdmi *hdmi, int mode)
 {
+	int ret;
+	struct inno_hdmi_phy_config *phy_config;
+
 	switch (mode) {
 	case NORMAL:
 		inno_hdmi_sys_power(hdmi, false);
 
-		hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, 0x6f);
-		hdmi_writeb(hdmi, HDMI_PHY_DRIVER, 0xbb);
+		ret = inno_hdmi_find_phy_config(hdmi, hdmi->tmds_rate);
+		if (ret < 0) {
+			phy_config = hdmi->variant->default_phy_config;
+			DRM_DEV_ERROR(hdmi->dev,
+				      "Using default phy configuration for TMDS rate %u",
+				      hdmi->tmds_rate);
+		} else {
+			phy_config = &hdmi->variant->phy_configs[ret];
+		}
+
+		hdmi_writeb(hdmi, HDMI_PHY_PRE_EMPHASIS, phy_config->pre_emphasis);
+		hdmi_writeb(hdmi, HDMI_PHY_DRIVER, phy_config->voltage_level_control);
 
 		hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x15);
 		hdmi_writeb(hdmi, HDMI_PHY_SYS_CTL, 0x14);
@@ -845,6 +895,8 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = data;
 	struct inno_hdmi *hdmi;
+	const struct inno_hdmi_variant *variant;
+
 	int irq;
 	int ret;
 
@@ -853,6 +905,12 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		return -ENOMEM;
 
 	hdmi->dev = dev;
+
+	variant = of_device_get_match_data(hdmi->dev);
+	if (!variant)
+		return -EINVAL;
+
+	hdmi->variant = variant;
 	hdmi->drm_dev = drm;
 
 	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
@@ -949,8 +1007,14 @@ static void inno_hdmi_remove(struct platform_device *pdev)
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
