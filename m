Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93F87C4167D
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/Me70OXf8+8asVenRKwMT9RVC8KyaMMt6wtVvSs+6E=; b=Sw3909R0YmUeWs
	jA7sdeeGmskbqh15CF51+dXnVAou4GmuijMGhYB6J7LYLK2k4gpVPq2P+a7rJfjSosf3jy1SxCehF
	YwvYH/gcyBNKK+BkxygdFU9MM/7gSTSBeI0ZMdd06/MoYO3eV2y/CdEdn6LdqmiDCwo7c7TSnKRJB
	blso/AaIsoQwWMZRT3Lwo4VE1NgAfsZgN1Gq7sV8zz2EET8ostVhaUqAx61Vosr4bvhbuBc8PBFnQ
	/BxMLjc1onD3mNz7nTziLEQk3DnFePcOorifQvYSuo6w+vXAaJUTc+pZWwofdERqD53tOwOSxSyh3
	xEqMX3GzTlljnm1SqCtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGl-00FshL-2U;
	Wed, 13 Dec 2023 19:51:47 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGW-00FsTN-0R;
	Wed, 13 Dec 2023 19:51:33 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40b5155e154so84053595e9.3;
        Wed, 13 Dec 2023 11:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497089; x=1703101889; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5MfDHxrabIf+gmAYTXlhPOQXkHPRDrfLTxd0p36e6Hg=;
        b=Qgi5A/XSkTohlwRlKRtggpQZjVQiB4TMHLm3/5DeXTFVAUFvOGTi+LIdrzVZIsHzT0
         Man6k+obkExeBOw81oeVfH8IuCTYiRHbOgQFgpnsCf6C2txKBtr38S4nnfjblJD9R/qH
         gg8jBcJ3+dR/IrF/ojXQv4kGCnDSWXFi4HqgxYQ80aYijS69mCACHUiY9a4VTN43jyCY
         FHyEBwGoJ/HQCHPtmT811bfN5BHCTUNRabRiqs63W9MZqMXHkzlXy6ryVFBRypSGG1Vv
         2ECYLqCqyL3M9fOuHDlxJmf2I15N9YOybIjwwSDvMdLFtwKG/cEw5M7DPsq7BqKpCdDb
         lQhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497089; x=1703101889;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5MfDHxrabIf+gmAYTXlhPOQXkHPRDrfLTxd0p36e6Hg=;
        b=PmBGQz+PrV+UrXy/5/QGS6sGlrWHJczklqubIxYttzY+lIs8BWpkZECoev/PIQXT/x
         oYzdT05S6/QLigfEDiDGyUOlj06ACpsTtNv94Pn+VBcUfM4vGk/P3PVvJrnnMIoFuWiG
         3ZjReqBpZ9p0MuTkjgLns+NyvEih/SLOlbnO3pxpEzY1MGHRu4zbNF8/hWT57rA8rrDT
         cY/U595o00HO0vyHGwCkSUz+xveAe5949g8GYbum+vRT5LylVmGE9Ch0mFJTO4vGetOL
         UmiTGio9SnsxLk2wMBBJGpu2JUsATk9bILVgD3UzA0PAjE7YpJoiUICCoFHpnRKTsBBN
         enIw==
X-Gm-Message-State: AOJu0YyNExZpKg5LMWAHzAJQmv6NS0ZGWgzYYiwsKgXon/slhsQ8oCO6
	wUsvudARRiNDUtJTVpZe8Q==
X-Google-Smtp-Source: AGHT+IGCytkAX3KBkCK2F8am/Dv9NsvC2yoOVaxaCHwDt9Jkj58Vtpb8hmL72hqJrd7flNDEA8saag==
X-Received: by 2002:a7b:c4d0:0:b0:40c:3272:1fea with SMTP id g16-20020a7bc4d0000000b0040c32721feamr4145598wmk.87.1702497088887;
        Wed, 13 Dec 2023 11:51:28 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:28 -0800 (PST)
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
	Alex Bee <knaerzche@gmail.com>,
	Zheng Yang <zhengyang@rock-chips.com>
Subject: [PATCH 03/11] drm/rockchip: inno_hdmi: Fix video timing
Date: Wed, 13 Dec 2023 20:51:17 +0100
Message-ID: <20231213195125.212923-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115132_201051_A6364A23 
X-CRM114-Status: GOOD (  12.01  )
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

The controller wants the difference between *total and *sync_start in
the HDMI_VIDEO_EXT_*DELAY registers. Otherwise the signal is very
unstable for certain non-VIC modes.
See downstream commit [0]

[0] https://github.com/rockchip-linux/kernel/commit/8eb559f2502c

Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI support")
Co-developed-by: Zheng Yang <zhengyang@rock-chips.com>
Signed-off-by: Zheng Yang <zhengyang@rock-chips.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 6e5b922a121e..345253e033c5 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -412,7 +412,7 @@ static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_L, value & 0xFF);
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_H, (value >> 8) & 0xFF);
 
-	value = mode->hsync_start - mode->hdisplay;
+	value = mode->htotal - mode->hsync_start;
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_L, value & 0xFF);
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_H, (value >> 8) & 0xFF);
 
@@ -427,7 +427,7 @@ static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
 	value = mode->vtotal - mode->vdisplay;
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VBLANK, value & 0xFF);
 
-	value = mode->vsync_start - mode->vdisplay;
+	value = mode->vtotal - mode->vsync_start;
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDELAY, value & 0xFF);
 
 	value = mode->vsync_end - mode->vsync_start;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
