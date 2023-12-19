Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49C35C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bv+yB0vHIh4zJvyQMW6Cuxqr8Ky96BuUg7HyNOt8Sg=; b=0AKSr91ssf8PbD
	4D+WcVRGAO5CmQOiq86XCzq8KRFahR6lOkNuXO4N8Bu0qpB20Q+XTon7mfTG03jj/lBILdz8FusZg
	1lq1MEVxAFTiMdgteny5DvM2pZNkc/loheU5GAUelWn8Sj8lePir0kwtRAgtYfiu8UfQXCDxIa7Le
	hUBvY0RDn7O6EeQvLxx3ymZoLleueqKRELLFWFgionZCeJDX3m2bLpxOla+8MQM5TFE58rf+dR/re
	vt5ltY2X44/bFSg3UaI5c1BoNsTViUtrWbnJ0qHdiehFlg4QER34BzWr5NXIjzznXvlzWglBk3Ukg
	qTP0q++qN2YKb7apCysQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTu-00EozS-2R;
	Tue, 19 Dec 2023 17:02:10 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT6-00Eo6w-2F;
	Tue, 19 Dec 2023 17:01:23 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40d2764c0f2so11338075e9.2;
        Tue, 19 Dec 2023 09:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005279; x=1703610079; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3jFSrF2ePa7xhmT4OxproAZh4Ygmdhf+/ONdKCw7fIs=;
        b=bGoDlLP40SdFP47FCJjktnjZ/o2D23vLsD7EEBMkA0gGpCrVeZqIpUv5mZLfMmvsiV
         AYobcPTdMpeYG50yd+bLoINVi8mmxSH+3oTwfZJ81y6JDzEPKHnLHwShofvhfm5RyPL+
         BvI7HujpiNGDuus/StVo9CkTDhz05155E5PYLm+zbzq1hcNYZIklsNs/M8FOEFgn/+Cr
         6QOwfZ3tGmePHEgg1I823dJuD6dZ+Vxkffq151nKKqkagonu1Pi0CEnpT/on4YeiBrDE
         XnGhPLSeuDP02PkTCRULY1Pmo08FIv9pcbfFCOJ9kmej9ed0bil3pLYFyJ2z0mhfYi6s
         bLww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005279; x=1703610079;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3jFSrF2ePa7xhmT4OxproAZh4Ygmdhf+/ONdKCw7fIs=;
        b=pW6Sckf6kjsBM3DTfLF+X4xsvBUUI4K0lUPyJrycMMEENLYY4NlYj5l4/z0/iMcZGI
         bZ2/Seq2Dqnw6JzqvZSBZaWaw/PEcrDPNVJUoy1trwKBSZy9C45tk/gc2nJ9lZEiiHmQ
         I+/analhMKVXAho879eS9GcsrliUMRwAEkxGqLblfsNIDApAheP4au1vB6yDqHgDlRjO
         JryY7VdFuEv0boWwfI40/45eqzDbMrKawpzviflKxiyEP8XoeYCKotgAB3K7jE8dSFJ4
         ovBJsfP7NYTRShprahNWypciqhtsHir/2oNr/H4ji8Hw0aVe64pHxAbfGUoGbJMB1P9+
         VmCA==
X-Gm-Message-State: AOJu0YwYAbniVzODXt2fkw2QXGEGEwZblhj5xJXivmxIZgfKS0dpXCVm
	4aDXoSqGqf53/51wSOwFHA==
X-Google-Smtp-Source: AGHT+IE+D/wsUHtpUCKDcNtLx2i2uZszTMnUPPGc/pYOfbpmGpnDQa/hE8nWdBHI/JGmbVOwIEoXtQ==
X-Received: by 2002:a05:600c:4917:b0:40b:5e4a:4060 with SMTP id f23-20020a05600c491700b0040b5e4a4060mr8802782wmp.128.1703005278839;
        Tue, 19 Dec 2023 09:01:18 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:18 -0800 (PST)
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
	Johan Jonker <jbx6244@gmail.com>,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 13/29] drm/rockchip: inno_hdmi: Drop HDMI Vendor Infoframe support
Date: Tue, 19 Dec 2023 18:00:43 +0100
Message-ID: <20231219170100.188800-14-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090120_797738_E57D5585 
X-CRM114-Status: GOOD (  15.46  )
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
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - added my SoB

 drivers/gpu/drm/rockchip/inno_hdmi.c | 35 ++++++++--------------------
 1 file changed, 10 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 102195837206..5c9f1325441f 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -206,11 +206,15 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
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
 
@@ -226,28 +230,11 @@ static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi, int setup_rc,
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
@@ -265,7 +252,7 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
-	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI, 0, 0, 0);
+	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI);
 }
 
 static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
@@ -408,10 +395,8 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 
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
