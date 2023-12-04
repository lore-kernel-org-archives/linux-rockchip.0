Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3365CC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 18:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2TuOM7/+0hpa0EPCWzf49Dbsp726Ohl12/0EtiYWlI=; b=OoanfADJvFg1jw
	ubpTvEbrsWgMKaTaQdM3WSkpCtBEyreiBVf//us2bdnJ8UcYKwC8zE+e4D/z0y5SfafxBqbcxMlhp
	B+0GamOKD2CQOeleptfkviRpm+x8IlPFHA7yYXXb5NHORGkl9G7Yza2f+KwQiVQKSgZQ4yYzLeKft
	VnsQdO2FjhAfsz02nSgOWC4ehknP3r9lEKRted7ingL5fQg3Nf89wi6KEh4kXmoed4vFqMDZ8KrdP
	5Y1sOv0jEjX1R0tolSszlUwmq2hC3cnHhzxMmqtMosPVGdaZBJVAe9uhTvTHq6jUcfMiccXHprn4u
	Sx6DwzPcFzFWnpAh6c3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8J-005NoK-1x;
	Mon, 04 Dec 2023 18:57:32 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8F-005NlY-2b
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 18:57:29 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-58ceabd7cdeso2916487eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 10:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701716246; x=1702321046; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6rgTeL5s3ofedwZl2YbFthmW9shcLKv1EiL+fVf829g=;
        b=D3lVGmKtvSOv/5BPAUpZaQD0M6heYCptmT5WhsV0qyzcUEPxygaOjkO2uLGg2yb+Ak
         FbX5aQYYamPFWyGng4y4tSfglGeo15B+xyUs/1ECzxi5NKShrSusYFhIMLM0c/pOjbu6
         f+8K/mXpj/FaM831y8FsgDqZWwlsbUApovlCeKN3lKlwAqX9eJYq72oKX5DbjJRUqVqJ
         xDUoFztmyQoImkEHBHHqzZJpZCdhbVkWe4kA6BAIhIEaGcTxrqI3TIpqZT3BXcg9uXn+
         5pG4JjoKLcfLafasKbUOn+4n+NEYZQ5FwxFYPK1RQdL47mTCPaZzuN5sXj8KLU1GI5Gj
         e9/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701716246; x=1702321046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6rgTeL5s3ofedwZl2YbFthmW9shcLKv1EiL+fVf829g=;
        b=nq1bHUA5uw7pKbFKe4QwwDI3C64rS9YIm4/Kcmwy7xq96ZxsX/HaKXssFs9YIKu5b9
         dJLDcFr1kBR4E30MZQYdTNWEKffZP6pHBOqTZehA7Js34b78KifDqMCjjeL6ECN4AF4D
         Qd0zuL0+WBpOBn9h8Z1qTfYOZoo7a47hVYcdFqsGV7X1hvMTRqwhiAU/W7y9aKxnMFtN
         P6UaPM0tyDrRDXp+T65N3p+2PA3v0+ioKGx143vBi8PUS3seNKialMgMQc/vih+Q31rf
         MlaFFQkAG4XOw7QebQTcC8cjyfcZ9k87/E4b7UDNedoJQ+cGfjon1a8Fp4vBf57CiMAA
         rPWA==
X-Gm-Message-State: AOJu0YybTuSRRTEXSReCZEdVRd1kKLXgxyImfIHsFB14fYyDc/U7SCMw
	H1GZOGGkOJkNtbuuTRah+YzuM21crew=
X-Google-Smtp-Source: AGHT+IHtinyT3UvNVVgfaiVR9PDPfm0VQnP/g1hm2ope27H09s6RXeCMhC4TJSpO0tvX0PHiAXIDwA==
X-Received: by 2002:a4a:2452:0:b0:590:2df8:1bf7 with SMTP id v18-20020a4a2452000000b005902df81bf7mr724118oov.4.1701716245953;
        Mon, 04 Dec 2023 10:57:25 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y25-20020a4a2d19000000b00581fc1af0a7sm2073303ooy.28.2023.12.04.10.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:57:25 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 01/10] drm/panel: himax-hx8394: Drop prepare/unprepare tracking
Date: Mon,  4 Dec 2023 12:57:10 -0600
Message-Id: <20231204185719.569021-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_105727_859885_CD88A0EA 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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

From: Chris Morgan <macromorgan@hotmail.com>

Drop the panel specific prepare/unprepare logic. This is now tracked
by the DRM stack [1].

[1] commit d2aacaf07395 ("drm/panel: Check for already prepared/enabled in
drm_panel")

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-himax-hx8394.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
index c73243d85de7..3823ff388b96 100644
--- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
+++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
@@ -68,7 +68,6 @@ struct hx8394 {
 	struct gpio_desc *reset_gpio;
 	struct regulator *vcc;
 	struct regulator *iovcc;
-	bool prepared;
 
 	const struct hx8394_panel_desc *desc;
 };
@@ -262,16 +261,11 @@ static int hx8394_unprepare(struct drm_panel *panel)
 {
 	struct hx8394 *ctx = panel_to_hx8394(panel);
 
-	if (!ctx->prepared)
-		return 0;
-
 	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
 
 	regulator_disable(ctx->iovcc);
 	regulator_disable(ctx->vcc);
 
-	ctx->prepared = false;
-
 	return 0;
 }
 
@@ -280,9 +274,6 @@ static int hx8394_prepare(struct drm_panel *panel)
 	struct hx8394 *ctx = panel_to_hx8394(panel);
 	int ret;
 
-	if (ctx->prepared)
-		return 0;
-
 	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
 
 	ret = regulator_enable(ctx->vcc);
@@ -301,8 +292,6 @@ static int hx8394_prepare(struct drm_panel *panel)
 
 	msleep(180);
 
-	ctx->prepared = true;
-
 	return 0;
 
 disable_vcc:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
