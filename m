Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 144F2C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lz4w86YTv9xCsE+B6mb/R8I4VCPFEg/q18aS/lFmIYc=; b=PZcL9xPKwEGqkd
	5f7x+JYPRJQtDA9TJdlf+1795PGMvXTS2fbkFsvUotOqmcn5VOA+SzC8pG6YKWCQjjyt6jlptPP+T
	OolEgzK29OCctBK4y72jlGlJfCwBG5o9SwPC7qgxRxesImBqhlJGzcSVgKRsVZz8qtldHmbgiHQ//
	3TCwWcWbhV4LwH+w3ZvCFxU8L8tjQHJdYFsuPnw/RDuutZngbG2/2pLCSc8wZE4QoMcabbed9mb2O
	OTu4dt0/wbqyQZ7Q7n9E72jSOEr16Mbf/9YV/VQBVsctM3Z+rX5Hw7UlcMmASJ/nA5MkdDDdKurff
	zNGPVeAt5k2DY5uGx+NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGja7-006Yka-39;
	Fri, 22 Dec 2023 17:45:07 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXl-006WXC-1K;
	Fri, 22 Dec 2023 17:42:43 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3368b1e056eso1517474f8f.3;
        Fri, 22 Dec 2023 09:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266960; x=1703871760; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UAPEf6VCNcNpH+vS9Jy42mEPmnbb20QERJ8qe9km2VY=;
        b=c4Z7LADcEcugtYN9vug9quRfJfBEnhT9uwf5j70lkKGMbjEA/DoITVayc3z6EWWIu5
         EcaIJ9gLGZ4ykcigbRSpe049ZbLsaIqisdvMkxN/ima2M4oSDPC0z61tkD3Bb6yVv/N0
         An0p0iYd6Qs0w+0zqF0hEOWtbYzhBi7K0mVfa/LzxgyZ3JcIKu7QtAm9VKZzwyHGA/pJ
         kyqQNUw7GhhwDpXLQ+F0fC7GoFuWv9B26jOURyoX6e6K4WrF+a35wMzADni2PGkiYZ19
         S/XgXpgI1vW/ly5HAHjQYoci56Kp7H4nzj0rqqMxkKcdqzZOR3PuCrQ82DF53lFwzOQI
         KzEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266960; x=1703871760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UAPEf6VCNcNpH+vS9Jy42mEPmnbb20QERJ8qe9km2VY=;
        b=T9q8XqOFPQhAxPnw19qicpH/68m/mW8dOVO1j1FMLh1kB/PgjvRB48k43w5JroIbVT
         kIpXfl1QGPD6mRpuOHVV3ojWhdZD0qwLfpK7YdeHnvQiAxZLAYgHkC1nzpYAkCCXBFTn
         A2VbVdF24X0paDTzvAIE9taVOd3dw9f2gVAAqWhxUsLK+OZ/Gjgdreo9MFlJqYkyWC89
         K4/BoK7pD84upMhxfg3bKx0XTd09SdUdRzB+pD58k8Co/qqdp4vZm2LHcR0gIK/Xgbnz
         PNSvrIy449oz1TO2/7HRz6WvLP8LBg2kG0tWgEBik2exsYELZ7c5QuLF/JANRaKGfmug
         7RdA==
X-Gm-Message-State: AOJu0Yx0pOlEmwrTFrIPRzXUhlEQyf+WqBQfIsvgRp38CYdIhCo7ckg5
	KyY6hblYJoPFdjfNcaaEhg==
X-Google-Smtp-Source: AGHT+IFGJNcPl+paeHR0rYagd/KoMDxco3f6zFqUGim2MwyHSQksycGDsS4WvE51htk1ZWVRV10PAg==
X-Received: by 2002:a5d:4fcd:0:b0:336:5f15:5533 with SMTP id h13-20020a5d4fcd000000b003365f155533mr1181108wrw.54.1703266960101;
        Fri, 22 Dec 2023 09:42:40 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:39 -0800 (PST)
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
Subject: [PATCH v4 25/29] drm/rockchip: inno_hdmi: Add basic mode validation
Date: Fri, 22 Dec 2023 18:42:16 +0100
Message-ID: <20231222174220.55249-26-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094241_460129_D9F4AF0B 
X-CRM114-Status: GOOD (  17.07  )
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

changes in v4:
 - none

 drivers/gpu/drm/rockchip/inno_hdmi.c | 42 ++++++++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 3b76929deefe..a074451a0c49 100644
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
