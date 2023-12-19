Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46377C46CCD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coeOI+FDEN+FtGSqswuU7Dsd1HVe1LNeuu+nhOrUdpo=; b=tGFZq0ndtKHpcJ
	qJmz3A3xkH9uZraz4Xi7yI3M0XGXREPI1z4SC3fO/uLPaERzsFJGO1BhWznDI1oibWdqnL6NLAUsk
	rIgS0BLh8wEkWrZA8OS/RveFgZATmBOJ/gUwatdehoj6M8nR9mVFkutVT++tb6k0dsqFpclEoGcej
	d2EEmObl9/N0u3+3u8DqdeN2XoIL5eWOtXo3JHUaUOh/TauFK6P4VTm41SqNxJpAtiuE9HFZ+GEP9
	OgEOo7UMCiHIC6/facqqvI1xyYrq4dAUyVheFJN9l3a2PrZWltvNf8j7+WgXRdSCF5dqx78ExDd57
	wrvvdYEurKrwN3EYLdiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdVc-00Eqez-3B;
	Tue, 19 Dec 2023 17:03:57 +0000
Received: from mail-wm1-f46.google.com ([209.85.128.46])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTJ-00EoLF-1n;
	Tue, 19 Dec 2023 17:01:38 +0000
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40c39e936b4so54782475e9.1;
        Tue, 19 Dec 2023 09:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005291; x=1703610091; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lg73sX3i9a8aQACa3LQIeyAKZ2sxvdHhoE4dFqwZeRk=;
        b=l+h9DhsY9k0t4TBaG6Y3m/aQvH/amoiEJgb1/wEzlJk/qE3tLg9dYp6JLBOwxN04MF
         VTURV+H1MlIExU9h4SkqjSsarMfaycHiqWSKqfUqO6BKDRAEeyJif5hHJ9UPoEK3zpB/
         //VHYcULDfa7S4FZuydqS3envzkdXwVLTCgiL/9J5C1NV0pI06FmUchMTySIfAmv52Bv
         9AAq8bK53hIS/YYWaIL6qnNaWoAxqFivzTXdjKvZQYPWd0kLRZCNFLOtwJa7mVZVuOTP
         D1/WFYE4aSX6f5Q3hzhhra1AN3/DMaA5p9K44YFdBY/astHyMtZsnTd+79rRqfHMxq0b
         V8Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005291; x=1703610091;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lg73sX3i9a8aQACa3LQIeyAKZ2sxvdHhoE4dFqwZeRk=;
        b=Zh5zeGw+ImA55gSqJ9hSCuqcUfdHM9tD2jixqNl0j2o014MI5wi5IAOKzwNiCblRhN
         UypBQX7U0upqwLryl5z5jLAPsO3BwDkqmxsy21H4x+MBZHsZvp2RyLFzQbyokPktyS6c
         HGr1gP2V40xmMzj4DIh7PmSdU78Qw4kIbSyW6Eh5qjaM9YnAwYvwOaex9/90Z9Wb543K
         3YshaFMen/2BNvNQxpgJ6AKyILDRH9dFzHXt0xeTo0Nn4CEy11OWtvOSgMVokvPxofn/
         H4whgd/o/4vSQksSjTxJWTUZ8eb7EUt9clSA/Xs62n37CyufvC4ZOLmgPVHYoSdKQ+Lu
         tEGA==
X-Gm-Message-State: AOJu0YzwG4K7efUpUQJmjup3/9JHiW+wKdzoVvbA4XRfinuKXM5ImfCd
	cBX8mV+OYl3o+JAr7bPjVw==
X-Google-Smtp-Source: AGHT+IHXi6Ragi4oBQ3GZNtFDmz9icVV62tivi8tCjIWJeMUtr3MMODMzP3LpyoP4WMp+2GJb/Pgbw==
X-Received: by 2002:a1c:6a0a:0:b0:40c:386e:6aa2 with SMTP id f10-20020a1c6a0a000000b0040c386e6aa2mr5197610wmc.55.1703005290969;
        Tue, 19 Dec 2023 09:01:30 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:30 -0800 (PST)
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
Subject: [PATCH v3 25/29] drm/rockchip: inno_hdmi: Add basic mode validation
Date: Tue, 19 Dec 2023 18:00:55 +0100
Message-ID: <20231219170100.188800-26-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090133_624311_D75DD43C 
X-CRM114-Status: GOOD (  17.77  )
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
have. Also it can't support modes that require doubled clocks. If the
variant has a phy reference clock we can additionally validate against VESA
DMT'srecommendations.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
---
changes in v2:
 - rename inno_mode_valid -> inno_hdmi_display_mode_valid
 - fixed max_tolerance calculation
 - use abs_diff() instead of abs()
 - call in inno_hdmi_display_mode_valid in atomic_check

changes in v3:
 - collect RB

 drivers/gpu/drm/rockchip/inno_hdmi.c | 42 ++++++++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 8a1a2320749a..a2a9e54b76c0 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -26,6 +26,8 @@
 
 #include "inno_hdmi.h"
 
+#define INNO_HDMI_MIN_TMDS_CLOCK  25000000U
+
 struct inno_hdmi_phy_config {
 	unsigned long pixelclock;
 	u8 pre_emphasis;
@@ -497,6 +499,38 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	return 0;
 }
 
+static enum drm_mode_status inno_hdmi_display_mode_valid(struct inno_hdmi *hdmi,
+							 struct drm_display_mode *mode)
+{
+	unsigned long mpixelclk, max_tolerance;
+	long rounded_refclk;
+
+	/* No support for double-clock modes */
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
+		return MODE_BAD;
+
+	mpixelclk = mode->clock * 1000;
+
+	if (mpixelclk < INNO_HDMI_MIN_TMDS_CLOCK)
+		return MODE_CLOCK_LOW;
+
+	if (inno_hdmi_find_phy_config(hdmi, mpixelclk) < 0)
+		return MODE_CLOCK_HIGH;
+
+	if (hdmi->refclk) {
+		rounded_refclk = clk_round_rate(hdmi->refclk, mpixelclk);
+		if (rounded_refclk < 0)
+			return MODE_BAD;
+
+		/* Vesa DMT standard mentions +/- 0.5% max tolerance */
+		max_tolerance = mpixelclk / 200;
+		if (abs_diff((unsigned long)rounded_refclk, mpixelclk) > max_tolerance)
+			return MODE_NOCLOCK;
+	}
+
+	return MODE_OK;
+}
+
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
 				     struct drm_atomic_state *state)
 {
@@ -529,6 +563,7 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 			       struct drm_connector_state *conn_state)
 {
 	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
+	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 	struct drm_display_mode *mode = &crtc_state->adjusted_mode;
 	u8 vic = drm_match_cea_mode(mode);
 	struct inno_hdmi_connector_state *inno_conn_state =
@@ -549,7 +584,8 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 	inno_conn_state->rgb_limited_range =
 		drm_default_rgb_quant_range(mode) == HDMI_QUANTIZATION_RANGE_LIMITED;
 
-	return 0;
+	return  inno_hdmi_display_mode_valid(hdmi,
+				&crtc_state->adjusted_mode) == MODE_OK ? 0 : -EINVAL;
 }
 
 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
@@ -590,7 +626,9 @@ static enum drm_mode_status
 inno_hdmi_connector_mode_valid(struct drm_connector *connector,
 			       struct drm_display_mode *mode)
 {
-	return MODE_OK;
+	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
+
+	return  inno_hdmi_display_mode_valid(hdmi, mode);
 }
 
 static int
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
