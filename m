Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0608AC46CD7
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFgv/lNnywn7/I8wGxkoKo50a3hs7jWN6PBTvj6nrGY=; b=Rl7BEMLaq2WwEc
	+QUjvjYS0af2p3LJeHWvH0SAfqeAbJzzSTfcS7kLmqZqDZdHaHBKcZDRkd/ybbYAz6muZJ+yoMKbu
	f485RFHybGrhA4Z8t06WL9AjcefkcWdwMGt5WTLz240fWi26x0PHQJtMTLibMga5ih97YEm+xmoa2
	ChgLEEV9h7biibC04msJbi1BMJQ2qrG+42hudVKla7Y814OAONa5u120td+XYBKXlT3AmntZZiffH
	u20iajO7h+fuS/54U+PQVfEo28Mn5B6T60MeO8ud+nsqffDLWAu4+kX3z1kCiF8h2I//guQEzFAJB
	2t6uBlAyP6toJfVKxH3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXWC-006Kej-0r;
	Sat, 16 Dec 2023 16:28:00 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVU-006Jrv-0g;
	Sat, 16 Dec 2023 16:27:18 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a233bf14cafso3904166b.2;
        Sat, 16 Dec 2023 08:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744035; x=1703348835; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ECr4TU+4dWwEpyi0MRJHLZRYm5yt9s85NOlMMczFD3o=;
        b=eL1mZzIJCvG99O1lk22r19R6J2Hqp+vBNoq5jiK3ccEV2ucZf1PDfGtT3h/4sSx9sU
         yp9xcQenBvZQrBxEct5SMrKef5aJAhGT90SBBjdc9a9bvzekol8yycEQk56a476yjDNo
         n3URQCfJYGiG08g1FLzblIpu33NhzaXwKl3ukbCM5yoEnobpxfIANSHiIcP49IjqYpoj
         6XxcMIYI506OFjaDf+gSKZNAsQTE+/Ktbp4pNZ/mSfZmJ6s0VWP1bI/alWtru8nLzWNX
         pX5EpfYh/qYZqzaXVKD2f9t+i//CqXXiM3hi8Cpb8P/v3bzgJn7mSC1sxx1LufXj6/MX
         T+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744035; x=1703348835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ECr4TU+4dWwEpyi0MRJHLZRYm5yt9s85NOlMMczFD3o=;
        b=mTCx7XR8jOIsTba0bqAACmop7iFNHoGGgnNfsgJXehcu3Mldf4odViQHnWwWXaaqRr
         7Q7929Cjq36UOZzMlTbwj9mPH9FoVwxct51LnSzPqHbEt6UZyM+/MyhBSeD5lxQmk8/H
         o5T8aXN95RBrKo5CqaBD4+M6xcu84114h9Gzwn1oClb3VfUh4eA2GgRXbvkicRm159hz
         xuaRcPBx+FdRaADPuSm4jNZ5Al3CaFL8WRYuceck82k9CQfACGG5eWq+De/Ee/cpDNL0
         GIXzWEBB1EkU+vFejCZ5VTFv4RcMj1gKUzEppj50Wirnlc7ispwL9wI+Uhaeh0JezWCY
         cuqA==
X-Gm-Message-State: AOJu0YyvGde/CGDVn2b9ctZNRdYua2hJLqx/u05IIBmmyF3zde1ktOuE
	Z9bpwMnZeSzBBGUxmu+0QQ==
X-Google-Smtp-Source: AGHT+IGGXCXV7iuVsJthNs7xfU7rsSHw66Q2y9j042wi558zp4keY2U5j+cevcIqQYjVqvV5U3yloQ==
X-Received: by 2002:a17:906:e8d:b0:a19:a19b:c736 with SMTP id p13-20020a1709060e8d00b00a19a19bc736mr6780924ejf.134.1702744034682;
        Sat, 16 Dec 2023 08:27:14 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:14 -0800 (PST)
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
	Johan Jonker <jbx6244@gmail.com>,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 12/27] drm/rockchip: inno_hdmi: Drop HDMI Vendor Infoframe support
Date: Sat, 16 Dec 2023 17:26:23 +0100
Message-ID: <20231216162639.125215-13-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082716_450111_AAD39D09 
X-CRM114-Status: GOOD (  14.62  )
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

From: Maxime Ripard <mripard@kernel.org>

The HDMI vendor infoframe is only meant to be sent with 4k60 modes and
higher, but the controller doesn't support them. Let's drop them from
the kernel.

Suggested-by: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 35 ++++++++--------------------
 1 file changed, 10 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 04344ee1265d..1dd757845547 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -208,11 +208,15 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
 }
 
 static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi, int setup_rc,
-				  union hdmi_infoframe *frame, u32 frame_index,
-				  u32 mask, u32 disable, u32 enable)
+				  union hdmi_infoframe *frame, u32 frame_index)
 {
-	if (mask)
-		hdmi_modb(hdmi, HDMI_PACKET_SEND_AUTO, mask, disable);
+	struct drm_connector *connector = &hdmi->connector;
+
+	if (frame_index != INFOFRAME_AVI) {
+		drm_err(connector->dev,
+			"Unsupported infoframe type: %u\n", frame_index);
+		return 0;
+	}
 
 	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, frame_index);
 
@@ -228,28 +232,11 @@ static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi, int setup_rc,
 		for (i = 0; i < rc; i++)
 			hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i,
 				    packed_frame[i]);
-
-		if (mask)
-			hdmi_modb(hdmi, HDMI_PACKET_SEND_AUTO, mask, enable);
 	}
 
 	return setup_rc;
 }
 
-static int inno_hdmi_config_video_vsi(struct inno_hdmi *hdmi,
-				      struct drm_display_mode *mode)
-{
-	union hdmi_infoframe frame;
-	int rc;
-
-	rc = drm_hdmi_vendor_infoframe_from_display_mode(&frame.vendor.hdmi,
-							 &hdmi->connector,
-							 mode);
-
-	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_VSI,
-		m_PACKET_VSI_EN, v_PACKET_VSI_EN(0), v_PACKET_VSI_EN(1));
-}
-
 static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 				      struct drm_display_mode *mode)
 {
@@ -267,7 +254,7 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
-	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI, 0, 0, 0);
+	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI);
 }
 
 static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
@@ -410,10 +397,8 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 
 	inno_hdmi_config_video_csc(hdmi);
 
-	if (display->is_hdmi) {
+	if (display->is_hdmi)
 		inno_hdmi_config_video_avi(hdmi, mode);
-		inno_hdmi_config_video_vsi(hdmi, mode);
-	}
 
 	/*
 	 * When IP controller have configured to an accurate video
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
