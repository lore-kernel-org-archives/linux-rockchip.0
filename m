Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A7FCC46CA2
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IW9QUj/BU5DsUHfJryfpjhCRit7tjlMaUrNH3eDH0Ro=; b=QYO39oxlIsMJ9i
	1FhLMByRV2G+PefxDokBvnjApG+yp7iRWRD8joPu5yFlxEwDWWAI8PbobgQNYH8oCsvK/+eLnl/Mo
	ram+Nqp6g+F7kxs3H1cGnSWi0+1zJukrucidtZ1kFYCxWqCX2uPrlgFbyHeJqnenuutUQ+atscX+Q
	Qv399Sq7drEL0jUpF7jypkuus9msgSA+6xPXcnLd4AL6PBkt8La260uvMfTCfjkBj9p0oulj6juzV
	cgte4f76cr+SJ9j5zUTKwEadftT/lIwk9lNUvywAhvUliyGWrlx7fJiKAiARTT03bbqXllVaXiYoD
	wZ802PuApDRS3clBJ+3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXXJ-006Lk8-1I;
	Sat, 16 Dec 2023 16:29:09 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVc-006K16-1g;
	Sat, 16 Dec 2023 16:27:25 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50be24167efso1826372e87.3;
        Sat, 16 Dec 2023 08:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744043; x=1703348843; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EMBynW0XhMl+E8jO2xYw0fAFMrIK4HAqJAW8qk9Tvbk=;
        b=YJ2n9+wRzrp4n+fDKlFaDwwA/NQuuYWRCA0sk3+0L7KqS7dZ92twHIp54XddzbBWn1
         p7yyzy77Yp1Z3XNkmasB1CV3t+9GlPJp8znzszHOlm2WlgcP8wVQ/7a5oVDVDcMHik5A
         AWIJXjNU86ZxgOiOC3UPVMcn2oZWZ5VBQzWsMMBt6WoiLLYkPM6vjmZqN8pcUuBmkn0/
         syeBDfHZC82EZ8OMNbUwyPx7FH+z025bv0sdBTCl8Fo/el7biC5vlAPb8HLRkS/AClnC
         I/xR9kjTDARnabURHTJ0KAU6TTlAYGVC6iERAN6EEvhRM2AONuWZ5Et6uRrB0i/vPjQr
         MpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744043; x=1703348843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EMBynW0XhMl+E8jO2xYw0fAFMrIK4HAqJAW8qk9Tvbk=;
        b=Eg6IW0yzbIgiLdfE/CZtuq3pyM9itW7oyx5KfeF+tijm/QxghSwC5IRUG2xYxbHv6u
         0QmaIv1NNohnaeGxTPuOIzBHicGbyDlGDbu9vhZ7QdtVH8iQNAmTAfk+TFgq0PKwR7T8
         8xBcr9ELKTbWt9wiaGOkptcBanwt6wOEtLLYcz65+moa9zWUxxfsfRO2HenXeiUBJqVA
         3dOF3TwJomPxND7dt/Nhs8pq5/+mfRzih+R12SIrhrl6OhVBUdcGdig4Lv9oosQ2dtFU
         dfPk/ROFRA22kUQR6ruBb6qXpMryNxRvspBiEWab8q39jQdNnHa3JWwZMJFLA1C7C/AU
         khhw==
X-Gm-Message-State: AOJu0YylsrCp/0VKluqHj9+vVxwzl/uoO9GHaGN7Dr2Zc/hQ7t9KzHrb
	GXb/Wv9lxbP73Ns3+5s2iQ==
X-Google-Smtp-Source: AGHT+IETdaeg0faWSQ1kmwbaQCOpBidvPKReyG1VUQs/IwAoTIeCSP7GXEKcKNtGmATpxPyBDsVDVg==
X-Received: by 2002:a05:6512:2352:b0:50e:1b0c:1143 with SMTP id p18-20020a056512235200b0050e1b0c1143mr1151682lfu.53.1702744043055;
        Sat, 16 Dec 2023 08:27:23 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:22 -0800 (PST)
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
Subject: [PATCH v2 24/27] drm/rockchip: inno_hdmi: Drop custom fill_modes hook
Date: Sat, 16 Dec 2023 17:26:35 +0100
Message-ID: <20231216162639.125215-25-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082724_558049_8E7A92DA 
X-CRM114-Status: GOOD (  11.25  )
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

Now that we have proper pixelclock-based mode validation we can drop the
custom fill_modes hook.
CRTC size validation for the display controller has been added with
Commit 8e140cb60270 ("drm/rockchip: vop: limit maximum resolution to
hardware capabilities")

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - no changes

 drivers/gpu/drm/rockchip/inno_hdmi.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 14473ca96e0f..d477d2872195 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -667,13 +667,6 @@ inno_hdmi_connector_mode_valid(struct drm_connector *connector,
 	return  inno_hdmi_display_mode_valid(hdmi, mode);
 }
 
-static int
-inno_hdmi_probe_single_connector_modes(struct drm_connector *connector,
-				       uint32_t maxX, uint32_t maxY)
-{
-	return drm_helper_probe_single_connector_modes(connector, 1920, 1080);
-}
-
 static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 {
 	drm_connector_unregister(connector);
@@ -701,7 +694,7 @@ inno_hdmi_connector_duplicate_state(struct drm_connector *connector)
 }
 
 static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
-	.fill_modes = inno_hdmi_probe_single_connector_modes,
+	.fill_modes = drm_helper_probe_single_connector_modes,
 	.detect = inno_hdmi_connector_detect,
 	.destroy = inno_hdmi_connector_destroy,
 	.reset = drm_atomic_helper_connector_reset,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
