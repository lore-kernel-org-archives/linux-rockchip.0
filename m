Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B132C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbPJ6L4LBsm8P5u4cVxuuRWpnvTsYDvL/4ZEg5SJtQ4=; b=UXVHuAtktJm20N
	pmLkjztfb7NQzlKVE8Mc/aS5i8G3LmB82OO2MC9xF3klEPK5GWmKsJbM69py1RgbFW5TZ1w/L6yaI
	TL3UnAH/wqCAtSl/WALYXMiH9wh/YqIvJ5iEDYXuF9GNBomw709ejCje1OoA+Nuz+cwuTxGD2B92E
	L1SuBcoYCAqWpC6YY0WUSbU+vbfgSEKlk2OseOB+KEeckbvGsijCP3ymwAGR+fCrQ6UAl5KKupnd1
	tFCHaVHbyHtxeJaKt2JM415WUc3g5gJxcALqG59rkCoUWs4tBQZHTBZSHFMUdVXFkUinRWfC7Dpye
	l2jxFeM2kTEcyG+Ou3Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGv-00Fssz-2T;
	Wed, 13 Dec 2023 19:51:57 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGa-00FsVa-0q;
	Wed, 13 Dec 2023 19:51:37 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40c580ba223so17947575e9.3;
        Wed, 13 Dec 2023 11:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497092; x=1703101892; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eBLnvjeKj80rmtJP//IlHjPdLy+lYfLLyByJrZj8/N8=;
        b=PbaQ/2HZ+rdKiyJni7vXzW0bF8fAYxA/hLnL7+h6pQ01j+D+xhkdBoOrgDTjN/aE24
         aJvE9p6ADH9LZ8MAoQrsDdZ4ifAhn0nR0CuqcyqlG1DsWfC8stGN5NRBfs3slo0KdFI6
         8DDGU7Kv76oecEmkkLk7K+L4e7dKGj9RUEqjA46BOmlamvluRow5Mh5d/JoarJBceGiF
         KqOtPu1KRJj76kLO48WXaMmnXIMVPzBiCQHoj1fQacZ5dxwGKM1wNrio9Bf/KhC78Kn+
         QRfWRtcy+oNdriXUqn+R58C/KbaT3IrhgIq1OM61ITAUmmvBEm7y6NILH6iCygJmtBkA
         5+IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497092; x=1703101892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eBLnvjeKj80rmtJP//IlHjPdLy+lYfLLyByJrZj8/N8=;
        b=dpk92cGBVjngtw3S35SRE0Mm+2EapWHi+8LlxCrCEJQ/AFQnw+feNHgodD7FCYOjVh
         56mN6/fRm+31hZgRT0QVCvuoZmewgd6m/SavDco7YDPk5bmd/bF+c0SJ74JTj4bfFMyD
         JWKIgE8yBfirR/cDgmrWATdVqE5hZTQ/G9i989onjQ6D/Byoz+SKlyRs+jckiVnX7819
         ZhayKNVmxVb6T1XeyoCKO/KZ2g6e/kdCPI9n7UX+GwScFT514yTTfYynw5zSecxOtGbH
         iqDNgFq1Mz/s1ESHFnSl+ZJFuVdCnKVE+ZEFU3ri6D6s4yyg1z+hlK9nVP+FmPnYPW7l
         EjPg==
X-Gm-Message-State: AOJu0YzmFShPGUnRaO5pdluWWctMkeA1Lv/bX8oxgL4oWW7Bjg0j5t+k
	jYLrMTdms4pryaCkALlH3w==
X-Google-Smtp-Source: AGHT+IF9yTALPZ/WtAhWe1OyfTmJhAh53BvI/LasLM9OYzL66wjl3/q0XJ3XWlvlHYku/I4Y0WR6ZQ==
X-Received: by 2002:a05:600c:46c6:b0:40c:2ba6:809 with SMTP id q6-20020a05600c46c600b0040c2ba60809mr4457221wmo.157.1702497091606;
        Wed, 13 Dec 2023 11:51:31 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:31 -0800 (PST)
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
Subject: [PATCH 07/11] drm/rockchip: inno_hdmi: Add basic mode validation
Date: Wed, 13 Dec 2023 20:51:21 +0100
Message-ID: <20231213195125.212923-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115136_313583_76006064 
X-CRM114-Status: GOOD (  16.70  )
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

As per TRM this controller supports pixelclocks starting from 25 MHz. The
maximum supported pixelclocks are defined by the phy configurations we
have. Also it can't support modes that require doubled clocks.
If there is a phy reference clock we can additionally validate against
VESA DMT's recommendations.
Those checks are added to the mode_valid hook of the connector and
encoder's mode_fixup hook.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 38 ++++++++++++++++++++++++++--
 1 file changed, 36 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index f7f0bec725f9..2f839ff31c1c 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -38,6 +38,8 @@ struct inno_hdmi_variant {
 	struct inno_hdmi_phy_config *default_phy_config;
 };
 
+#define INNO_HDMI_MIN_TMDS_CLOCK  25000000U
+
 struct hdmi_data_info {
 	int vic;
 	bool sink_has_audio;
@@ -572,6 +574,34 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	return 0;
 }
 
+static enum drm_mode_status inno_hdmi_mode_valid(struct inno_hdmi *hdmi,
+						 struct drm_display_mode *mode)
+{
+	/* No support for double-clock modes */
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
+		return MODE_BAD;
+
+	unsigned int mpixelclk = mode->clock * 1000;
+
+	if (mpixelclk < INNO_HDMI_MIN_TMDS_CLOCK)
+		return MODE_CLOCK_LOW;
+
+	if (inno_hdmi_find_phy_config(hdmi, mpixelclk) < 0)
+		return MODE_CLOCK_HIGH;
+
+	if (hdmi->refclk) {
+		long refclk = clk_round_rate(hdmi->refclk, mpixelclk);
+		unsigned int max_tolerance = mpixelclk / 5000;
+
+		/* Vesa DMT standard mentions +/- 0.5% max tolerance */
+		if (abs(refclk - mpixelclk) > max_tolerance ||
+		    mpixelclk - refclk > max_tolerance)
+			return MODE_NOCLOCK;
+	}
+
+	return MODE_OK;
+}
+
 static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
 				       struct drm_display_mode *mode,
 				       struct drm_display_mode *adj_mode)
@@ -602,7 +632,9 @@ static bool inno_hdmi_encoder_mode_fixup(struct drm_encoder *encoder,
 					 const struct drm_display_mode *mode,
 					 struct drm_display_mode *adj_mode)
 {
-	return true;
+	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
+
+	return inno_hdmi_mode_valid(hdmi, adj_mode) == MODE_OK;
 }
 
 static int
@@ -659,7 +691,9 @@ static enum drm_mode_status
 inno_hdmi_connector_mode_valid(struct drm_connector *connector,
 			       struct drm_display_mode *mode)
 {
-	return MODE_OK;
+	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
+
+	return inno_hdmi_mode_valid(hdmi, mode);
 }
 
 static int
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
