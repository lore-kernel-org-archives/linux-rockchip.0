Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4714DC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 15:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2TuOM7/+0hpa0EPCWzf49Dbsp726Ohl12/0EtiYWlI=; b=PGxZjp34b1+6xk
	drmvwkCWmLEYaHGp5KAxqOPvGdzicu4cxGZ8/B6UT5WnAVR1JyH2qiFLhwkgVLg1/wOnz7cLv8RUZ
	6B2LZN+4iP8QdaE4tWtntKmmVRywx9cR1YtA0SFeQW/L2K+/LU3IDvER20NQdO6GwA6/i1wnBZdjK
	BlEvV5lUZFTyQQOCS+3ICvYYUX1Lx1M70l8FNpjWZKbhmkeNWfbiAw0vlRrLVzdy1+oReqmuHnKcR
	nuW7Tse3R9bqbmeWx+FA0PanJfuxluLumaRrcBU1YErNPLL5l4ziWniDWMnr1ArTZhS3dIZInQRDB
	GAaR8IuF58A5wPTCmmQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jP7-00BGlO-2l;
	Thu, 30 Nov 2023 15:56:41 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jP4-00BGjv-2w
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 15:56:40 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6d81580d696so631168a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 07:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701359796; x=1701964596; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6rgTeL5s3ofedwZl2YbFthmW9shcLKv1EiL+fVf829g=;
        b=AMwet1EP7g2epxWkk6/yU5cpqmJbOmQmx+FZ1gxeAJE/2HtrS7AztDLm3kgb1F2A+Q
         gk/qsYdAmFZE10byCisjhHNQDDw0Z+2Emzk0t+ckhFXArjunz8/5pvVExuCZhud6yV17
         45/nWDeiyCsjL+EU4ZfGAZ+ftWeYQpka3WVZbfFUVrqp97gwWAa8v1XyfIVAOOTM5uRM
         tWwcJATyAxT7MwdZ7j9uoBdh1yR3ndNJ/E+4NTiU+cDvA2KWja4OrkkZe7SwU9GESPiU
         Fo7pwkow0QpHS/7nA3EquoJZRtdF86hVMNula2OGi2hbV0VAQH8q/DouzoCIoXjKM3JD
         r3aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701359796; x=1701964596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6rgTeL5s3ofedwZl2YbFthmW9shcLKv1EiL+fVf829g=;
        b=kDZsWAMVkVzBzTnuXDL2lpjmDzfKNTlDbprZBHYZ7gMZLWOY0X+xReqpAaIx3rFekL
         L/lUWEV6X+nyBhIMlifrqWNvKmUX9xLr2M17e1Qde+2MpPnU0L00ZnZTMrE7nTxhPBX8
         BU/ZWK4OlI77q9sk+bcr0ACoSLxlwX4pjLIGHRukOS2Eou2PGEhKh/Hd4dB10GgVAlKC
         sW3i9JTLqj7XQjjhQUr7/AeNM9lnAd5M3wTGsJiT8bSJOg+gWRr9SvCr62jRrZ7nswV+
         PuLUdV8hrRiVpwMcNdSsjLrODBvHeR/4/52A7OoO4WqpizaYWoy9u5yCpYIi0tVXMBZV
         bCKw==
X-Gm-Message-State: AOJu0YzbVTWpMMpDut6m4kOsY5ec1bNqoYqbDbY70wjwcf9fsDuJ4Z+4
	9rXJ3AaVnmk2eoqV15i3b4vnNkeGVjo=
X-Google-Smtp-Source: AGHT+IGIpq0HDFW1aPCXeHwe/OsY5YBOo1MLLv/ekDphC3bLN7juAg1D5RuJGsNdYUMwqF8OYWLbzA==
X-Received: by 2002:a9d:7743:0:b0:6d8:328e:faa2 with SMTP id t3-20020a9d7743000000b006d8328efaa2mr12216049otl.26.1701359796668;
        Thu, 30 Nov 2023 07:56:36 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id n25-20020a9d6f19000000b006d7ff27a47esm187852otq.77.2023.11.30.07.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:56:36 -0800 (PST)
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
Subject: [PATCH 1/9] drm/panel: himax-hx8394: Drop prepare/unprepare tracking
Date: Thu, 30 Nov 2023 09:56:16 -0600
Message-Id: <20231130155624.405575-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130155624.405575-1-macroalpha82@gmail.com>
References: <20231130155624.405575-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_075638_950072_46A2B90F 
X-CRM114-Status: GOOD (  10.13  )
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
