Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EDD6CD6E4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 12:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n5fxcSkyNCxto107fOuoFCgv9Uhq8Dey4vmKrJgp3O4=; b=SL0hosMBh2R+hK
	iznxUzmiHNViWrJPpSbk9qCWW0oBB/VrhPSQecd3z4YsQtRGK0LihZKMWRoIG0GnzkPOh5Jskh8P3
	BIFjjv3PyDZDXoV9u84yX9N5J4BIvSv8vSE3G6m7MK9GenDoT8QpEpGxzKwYshnHVsAZgc+2KbL6t
	b+gCH+eEF495ja5bYWUr+ARreAUcFyCaLUVBxLva/PfN503OcOL52daqchDdFVHzFonGKh6mC4DHN
	jNhhJnZRXwxJ6Mc1RRNun0kvKo6UgaMF3JcxtHOYCsFghbt132sIwF9zN4HQRl1mwJqHvub66Zxhx
	75JVPPh9Sv8CJrBg9Npw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV7HZ-0000000Gj5M-1hi2;
	Thu, 04 Jun 2026 12:34:45 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV7HX-0000000Gj4c-0TXu
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 12:34:44 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4906869f0cbso8244405e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 05:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780576481; x=1781181281; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rRDPEW9sbPRXAPtuKH5War+e9LS+bqZ/3dB+HlmzKJU=;
        b=GlpiNOfySueuVZckozEURsRql6p+R3YL7YpMjgfw2L9Upa2aCiWxRyQprf8y0hj9VE
         8gEvKBRjLJtnYUoBlfYP8P8a0yscMoXWZl90II2YGDu5IpV+aRF8Qx9PUhFGOnyy4Lml
         XQF38Ai5fq0LhP09Cccu6Qn7Ldr+3M+LcX5uKlW3GhulVstKqtucha7uBz8ANHoXsi9m
         ClTPsltCO6drTKEH6KNM5DXS/iPjpd8lUq6ACHLTLa5HpqHcnF3NTPDUEQDO/Z6zXrsZ
         NwT8Ez2zV9jvjb0PcEOO51o3KafOzSElCTPeLznugWZ5wdAlD+ZHwoniqeLj9wQHMe//
         dpLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780576481; x=1781181281;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rRDPEW9sbPRXAPtuKH5War+e9LS+bqZ/3dB+HlmzKJU=;
        b=dpoUwdZ+8Z/CTm93MSB9WdB6BAtAyu0WIFgIC0oVaulUZ/oPkjcKAZS7xNFn0x4iwj
         l1RxD7+sJlYh5Eocnzw2fWy7oMqnPfUUgBs5htqrGTsC4IpEOIbIvWzxcLI2gB6y5ppZ
         lU8s4AsDwO35t5dLQC1EUT/5qykSyf9ZLnSvS37rwsd+DjJKC2AEz1MBGL3J0viwhWOQ
         Qsf/KwrO7Y4D4xf4T+oUKUT8wCLre25sPCCX9+0WA3YODY+hQnfEJzzLOeYO+u4mSZg5
         ICKgSSz4mWSE0gROZ6tL4sC9btcKbqF2Gg4HhXuxDGQKH6irtrOHaoSfxbixaSrUQ4pF
         FKkg==
X-Forwarded-Encrypted: i=1; AFNElJ9J7XEZj8U47w8qj3sM3LckYoS9OrbOddkeMIlUjiSx4FgxZwXCoQ9WE4oQhCUWIRgkZ1A73NDWogK/YhAQdQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzecvh4LNUR+Ios+FSbKbIC1ic7UzHUIa1OFRXaBS8FZFW/EtC2
	h1NV9pVL8aLs0gr95IyDo8i1Z57UXHLgmT2zV7LK8iuR5Oj5T7ttl+et
X-Gm-Gg: Acq92OE/qrlvN3ZRir7hFnnp8ijDyqg+yAharjQqbvO6XsMWx1KWHLtHX8wUpK/GHpL
	VupaFYw296NHzCjOJpwZVb1qS2z54bJFB0uFOw8BvRb28VmDrOjIAmMOr0p3wSVYKtazrqGLUj2
	wf4ktq63LthDhZJpkG24qfM0HPa5MxMptZvTOYYR2YKXobm6y0yl9SDy/37megHQl8VVK10AU5Q
	RqO2/4Yc05PguNXZwx5okEXt2nT19drSKvLT0btwhRWfSNzs++0E+zWMXBDqOjJhBZ4dA5n3Pcm
	2kdrxvgBaBdPBUuBwhz8jadKjlE/BHQ0WuzrDEbV2EMXTEpQ+zSaSXdaKAmTpLjYrXkve7Y0uxH
	rBbsmRyhg/NeX+iru62jdvgv7e5TbBJLB6OTJ6u3DKn2Gz7CXUdIqgFp2AdZalTyslng5DGzKQb
	wv0/2qHBGIuk+J1wTDo8GBQFRlaOS7qjNkCQJNhuQkOJDLpGjQIATsb2hHaTGNcM4=
X-Received: by 2002:a05:600c:8519:b0:490:bccf:2bd6 with SMTP id 5b1f17b1804b1-490bda66048mr47084715e9.15.1780576480229;
        Thu, 04 Jun 2026 05:34:40 -0700 (PDT)
Received: from tiolaptop.tail72d7bd.ts.net ([194.35.121.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc413adbsm70036085e9.15.2026.06.04.05.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 05:34:39 -0700 (PDT)
From: Diogo Silva <diogompaissilva@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diogo Silva <diogompaissilva@gmail.com>
Subject: [PATCH] drm/rockchip: dsi: Open-code drm_simple_encoder_init()
Date: Thu,  4 Jun 2026 14:32:25 +0200
Message-ID: <20260604123224.192543-2-diogompaissilva@gmail.com>
X-Mailer: git-send-email 2.51.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_053443_163789_C228B7C9 
X-CRM114-Status: GOOD (  10.46  )
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

Remove the dependency on drm_simple_kms_helper by open-coding the
drm_simple_encoder_init call.

Signed-off-by: Diogo Silva <diogompaissilva@gmail.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 3547d91b25d3..a09b382d208e 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -25,7 +25,6 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 #include <drm/drm_print.h>
-#include <drm/drm_simple_kms_helper.h>
 
 #include "rockchip_drm_drv.h"
 
@@ -825,6 +824,10 @@ static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
 	clk_disable_unprepare(dsi->grf_clk);
 }
 
+static const struct drm_encoder_funcs dw_mipi_dsi_encoder_funcs = {
+	.destroy = drm_encoder_cleanup,
+};
+
 static const struct drm_encoder_helper_funcs
 dw_mipi_dsi_encoder_helper_funcs = {
 	.atomic_check = dw_mipi_dsi_encoder_atomic_check,
@@ -840,7 +843,9 @@ static int rockchip_dsi_drm_create_encoder(struct dw_mipi_dsi_rockchip *dsi,
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
 							     dsi->dev->of_node);
 
-	ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_DSI);
+	ret = drm_encoder_init(drm_dev, encoder,
+				&dw_mipi_dsi_encoder_funcs,
+				DRM_MODE_ENCODER_DSI, NULL);
 	if (ret) {
 		DRM_ERROR("Failed to initialize encoder with drm\n");
 		return ret;
-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
