Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B5B6CAC597
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Sep 2025 17:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Cc:To:From:
	Subject:Message-ID:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KIWPbTDbqmZEkRI79pRbadsTHHGyQen/sXnZ3rHvSMI=; b=IeIjdSVgE+IR0K
	xl/kd24u9GjKLV7E1ZLI4ZNA9s8zzHD6P08Z2YkhrI+7xSzoJpjIahDrISrJJcAgyFeGrGr0JDvk/
	Rz24Z/DA8USamVotvLoDBgQxlKkKyCt7rtn4k0JxdidSymg+stQZfZKCQgzJkBYiQcxwJxW3H3ccz
	mkTc9n4owtSCR0m1CQrkL2YU/JJ1yfL19nTEuYzLyg3BTok0KINpVqHA+oDwxA36N2id7fcVh8b2c
	c32Bx+GC0O7Wus0yz+OsOZFbCz+g/Vfoyl5Ocyxb4+u7UNj+tCRg6E8/bvfJcTDNAOzuvmXUp0Zar
	8l7mG9jJdw2cC1TKduHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyD6v-00000005J7c-2efw;
	Mon, 15 Sep 2025 17:35:29 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyD6s-00000005J61-0Ulu
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Sep 2025 17:35:27 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-45f2a69d876so11015785e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Sep 2025 10:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1757957724; x=1758562524; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to
         :reply-to:from:subject:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dJfTZYzHcnQiEPMNnGUef+DkApX9Jg4jYFXcZeflThA=;
        b=i3dV+VSHdpxrbI/PJASUJOG5vubPBDRbNcA8bBz14uIVlKxAFA1c39MozzcpaqUIOJ
         9Rxt8+51X7J2nqBJTe6b8FNFBPzJ0I4vjbGOJ0RrlhM5s6V8l++jks+z0X+5FinlYXlZ
         FUEglBudTO1pLXA+8CcARlPO168DDGdogynQFanpeR6PygzrAaGngSO3Ykrvk2qc5GId
         22hy3ZzNfFQ+1pSsM9w26FiJlBXxC8kLGtYKxPN4wHkhiJ2kJxyD371kFcMJv8jIzjm2
         SxRSdWYw27dgNM6xgkPWhjjHTjnGTVYucTQ38u0UOfN0lQxuMpEqtXYgW0c552pRpRBG
         dyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757957724; x=1758562524;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to
         :reply-to:from:subject:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dJfTZYzHcnQiEPMNnGUef+DkApX9Jg4jYFXcZeflThA=;
        b=GeLrx7tNfCQS4USzbNSR7M7KjQq7RBsltGTjgSBYn/7+yRtZsEtCqQE3mf2/QfclST
         Z4MZtbgfUWkAimPDD7FGjrFOBZ84a4uvbHcg6dHY6YuipP7gvT4I+96AhLdnI7d9pT1G
         spey6yLDzDoMHCEq0cqn/hmLnIBK707AQqL1csPsLeX5/UzT7VFYMlsNd0Swh6fO8uWm
         l+9lkUSVn5RHBVwGyRyVDF51sIuzV+MtH8dQ6NDJMCw21OnwgFobnXjGPpa4rQ7ew6dP
         OFdPinawUmE9UR18su6fzdeZvfVZf74afOmHyG9nm/PAOHWEys3T252ErUss4t1vkz8z
         76ew==
X-Forwarded-Encrypted: i=1; AJvYcCWbKnYe3I95RI9CQ8h1r4Hk0AYg+Xvy4FiW6ABCUYSy8LNmctBT+HKIcPWx8XMIZABEFbLOYpuy05ditGz/wA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyUKsEDikpRCqmFgtbfo8kd9DI9aaJ8EGacHSC4u8yS08kNDF+t
	aav7BrC5zS/+1VJzlgk5vYwBYRKWGQhmeiejvj1doRHWNw203Tn24g50
X-Gm-Gg: ASbGncvnWop/TMEBqMQQRiRuR2up5l/kw9E31yyw/Ms+8WnKYa5w9pNaPHGsAX7G001
	yhEq0rSy51jgljScYF3xdZV82WkUeKeFbLukpgwFcdQQu7i/QiaAk1CXVAubCMmuejX8dOuMM+7
	+50am5pUfznclaF1Ynz/+Ekw7YNHCF+yn9en8jHzOsTbZb5mMC2oturKH0vZhUCSjIGknLKJp8b
	zfKZ3assFfsUpmDr5eSALr5mtE+6URzXh3JonQCIx7tJD47oEUKyz6lGdK+s0v2+/h9AksmzOCD
	Nji0Cr8K/AFVWCk0KE06BFJbAauPY2V7FvxwhJa831GpgZhvFItr0tiybctYLZlU0roekrfk7Fa
	g24YmesEv02cWCMlRoF+/JvAHiU/+JPoGM58l
X-Google-Smtp-Source: AGHT+IFlmjL1Fht0YOdtcMNyEHLpJqko9jLlpH0FPgQwvYKwyX04VvMT7kNUH7KAojwm5eI6mGVNdw==
X-Received: by 2002:a05:600c:584d:b0:45d:e110:e690 with SMTP id 5b1f17b1804b1-45f211d55aamr97678875e9.14.1757957723588;
        Mon, 15 Sep 2025 10:35:23 -0700 (PDT)
Received: from mars.fritz.box ([2a02:8071:7130:82c0:da34:bd1d:ae27:5be6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7c778f764sm13377778f8f.57.2025.09.15.10.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 10:35:22 -0700 (PDT)
Message-ID: <9dd924871a81364a922131461339dec2a45d434e.camel@googlemail.com>
Subject: [PATCH] drm/rockchip: rk3288-lvds: honor DCLK edge via GRF CON15
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Andy Yan
	 <andy.yan@rock-chips.com>
Cc: Sandy Huang <hjc@rock-chips.com>, linux-arm-kernel
	 <linux-arm-kernel@lists.infradead.org>, linux-rockchip
	 <linux-rockchip@lists.infradead.org>
Date: Mon, 15 Sep 2025 19:35:22 +0200
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_103526_189583_F8D312CE 
X-CRM114-Status: GOOD (  12.97  )
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
Reply-To: chf.fritz@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Set the DCLK edge (normal or invert) via GRF_SOC_CON15 when the specific
drm_bus_flag is enabled. Keep track of the vop source in use so that the
right DCLK (BIG: dclk0 or LIT: dclk1) gets set.

This change is especially necessary for RGB output configurations to
actually propagate the DCLK inversion.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 17 +++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_lvds.h |  4 ++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 2411260db51d7..08784c3ecf703 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -58,6 +58,7 @@ struct rockchip_lvds {
 	struct drm_bridge *bridge;
 	struct rockchip_encoder encoder;
 	struct dev_pin_info *pins;
+	bool use_vop_lit; /* true if CON6 selects VOP_LIT */
 };
 
 static inline struct rockchip_lvds *brige_to_lvds(struct drm_bridge *bridge)
@@ -235,8 +236,11 @@ static int rk3288_lvds_grf_config(struct drm_encoder *encoder,
 				  struct drm_display_mode *mode)
 {
 	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
+	u32 bus_flgs = lvds->connector.display_info.bus_flags;
+	u8 con15_dclk = (bus_flgs & DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE) ? 1 : 0;
 	u8 pin_hsync = (mode->flags & DRM_MODE_FLAG_PHSYNC) ? 1 : 0;
 	u8 pin_dclk = (mode->flags & DRM_MODE_FLAG_PCSYNC) ? 1 : 0;
+	unsigned int con15_dclk_mask;
 	u32 val;
 	int ret;
 
@@ -260,6 +264,17 @@ static int rk3288_lvds_grf_config(struct drm_encoder *encoder,
 	if (ret)
 		DRM_DEV_ERROR(lvds->dev, "Could not write to GRF: %d\n", ret);
 
+	/* SOC_CON15 DCLK normal/invert */
+	con15_dclk_mask = lvds->use_vop_lit ?
+		RK3288_LVDS_SOC_CON15_LIT_DCLK1_INVERT :
+		RK3288_LVDS_SOC_CON15_BIG_DCLK0_INVERT;
+
+	val = con15_dclk ? con15_dclk_mask : 0;
+	val |= con15_dclk_mask << 16;
+	ret = regmap_write(lvds->grf, RK3288_LVDS_GRF_SOC_CON15, val);
+	if (ret)
+		DRM_DEV_ERROR(lvds->dev, "Could not write to CON15: %d\n", ret);
+
 	return ret;
 }
 
@@ -273,6 +288,8 @@ static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
 	if (ret < 0)
 		return ret;
 
+	lvds->use_vop_lit = !!ret;
+
 	val = RK3288_LVDS_SOC_CON6_SEL_VOP_LIT << 16;
 	if (ret)
 		val |= RK3288_LVDS_SOC_CON6_SEL_VOP_LIT;
diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.h b/drivers/gpu/drm/rockchip/rockchip_lvds.h
index 2d92447d819be..81081b84eea6a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.h
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.h
@@ -77,6 +77,10 @@
 
 #define RK3288_LVDS_GRF_SOC_CON6		0x025C
 #define RK3288_LVDS_GRF_SOC_CON7		0x0260
+#define RK3288_LVDS_GRF_SOC_CON15		0x03a4
+
+#define RK3288_LVDS_SOC_CON15_BIG_DCLK0_INVERT	BIT(13)
+#define RK3288_LVDS_SOC_CON15_LIT_DCLK1_INVERT	BIT(15)
 
 /* fbdiv value is split over 2 registers, with bit8 in reg2 */
 #define RK3288_LVDS_PLL_FBDIV_REG2(_fbd) \
-- 
2.39.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
