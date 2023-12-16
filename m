Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7993AC46CD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhC56o1fTo89bdmVyDxK53pu2Sp131JRAMGOgQWeoOM=; b=xChdPafIE/qMUq
	2tBMJZP2nvHJ4CimCWPY2r7PBBlLkYYwyaeK6BLSr/RUE4+X+yj3TDnhvWR4ikghGxuvkXuSL+iAW
	Wy8d+r+i82qW9sPtM9VM0r1xTUUiki0ZrLgG4fmsz125ewFvgZnmuw4A207TvnazKCI7RssCkl+3n
	DuCMjWhl5vp1JYAyq9EzGZcrV7Dj+VUqMRZwj4oY6xy6EU6lVknkhD+NNU8NBh7D+OA8bZ82NLoYD
	mOrGITs0sVWtoCWZtp3MEB9F1UdwmuG6B7H3IcSuRLp88aW4GvmNQWtWR+QQIb85NLZvo71UjZugF
	uc7pjAFoF6jr7EAEVs6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXWF-006KiQ-1F;
	Sat, 16 Dec 2023 16:28:03 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVU-006Jpm-0Z;
	Sat, 16 Dec 2023 16:27:18 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40c824b199fso5375565e9.1;
        Sat, 16 Dec 2023 08:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744033; x=1703348833; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KAoRz0wHCs8LYRbt4lNTAJ8vx4780AGy/20pu4Etj/0=;
        b=XqJDyUIMQsMzrrK+Dd4E+fgR5pyb/8LUPOH+ZdbPIKiOblNaKVHRaSm1K3c0TTkbyf
         QPehdWjrkA17qMpQPIw405bZYalt3px+q2dZV4fhXqeij8RkSJaJhtJLRnzxhP3sz7lz
         3DtPTK2q/PRzgkA+C3jorZnpnFujHskBQ7UXXXi9Z5XOBaxkk4uG5JGl9GTS7B7HiosP
         pjF4hfyyNoURXUWT4BJMjMn6+EwGGNnJ1vDwHhRTifbLodPW7vCnYDswLZ9k764cH0VI
         U0pMPcJFw9LYXv22w+RuwiOmH5hOS7XYPROi4E6CAmYGGrbHKVhRrwwnHRw9mz8wAkNr
         2orQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744033; x=1703348833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KAoRz0wHCs8LYRbt4lNTAJ8vx4780AGy/20pu4Etj/0=;
        b=O6nmF3Pw6jRJ/08cZp3wwVXRjXu9c5xcZAurmOOgA9mgDHuDgW2GdAHzKvB8u1LXgb
         W726ukpXOtw8V8rDw39s72rYpD1YM6eym9zzP/aa4BtkA4G458Kiibqq+oKPZPm4Vmd8
         +/C1uRwd697jFPGULQe/+JrWLiMEMRLK1wFOgEWf7CfHs6gYdcadnJMpPWjxVqOmGgCG
         eDm4xypOulS7aZrp6h8PljdhuSISGcmZ9gCfZHo2y4pWZwVy5qrzvakYoyDiCo801Cjy
         7T3bsaUUiJmwIM/o04elhHXnKsZy5P0vIg4ONIct06J38cBFtzfeCQbRb6xW0whZ0VcC
         yWEA==
X-Gm-Message-State: AOJu0YyJWLsOrGhlF8HZTu5w+Bqy/RmDW0DcyaLmuXc6OpyRRk1WTTFF
	XvRI4RTPJZoUqRTtyaWIFg==
X-Google-Smtp-Source: AGHT+IG0Hmya+9f+E9zucCIpHt7tAYGl7L/GXaMKN6CpdCLNuo7NhmcAilRqP2ZxOhD8YSjMeDmc/A==
X-Received: by 2002:a05:600c:474e:b0:40c:4be1:be09 with SMTP id w14-20020a05600c474e00b0040c4be1be09mr4886690wmo.186.1702744032805;
        Sat, 16 Dec 2023 08:27:12 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:12 -0800 (PST)
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
Subject: [PATCH v2 10/27] drm/rockchip: inno_hdmi: Remove useless input format
Date: Sat, 16 Dec 2023 17:26:21 +0100
Message-ID: <20231216162639.125215-11-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082716_472545_E61E4757 
X-CRM114-Status: GOOD (  14.50  )
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

The driver has a lot of logic to deal with multiple input formats, but
hardcodes it to RGB. This means that most of that code has been dead
code, so let's get rid of it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
[made checkpatch happy]
Signed-off-by: Alex Bee <knaerzche@gmail.com>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 41 ++++++++--------------------
 1 file changed, 11 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 58aff7a9c09a..7c75feedacad 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -28,7 +28,6 @@
 #include "inno_hdmi.h"
 
 struct hdmi_data_info {
-	unsigned int enc_in_format;
 	unsigned int enc_out_format;
 	unsigned int colorimetry;
 };
@@ -328,47 +327,30 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 		v_VIDEO_INPUT_CSP(0);
 	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL2, value);
 
-	if (data->enc_in_format == data->enc_out_format) {
-		if ((data->enc_in_format == HDMI_COLORSPACE_RGB) ||
-		    (data->enc_in_format >= HDMI_COLORSPACE_YUV444)) {
-			value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
-			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
-
-			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
-				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
-				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
-				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
-			return 0;
-		}
+	if (data->enc_out_format == HDMI_COLORSPACE_RGB) {
+		value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
+		hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
+
+		hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
+			  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
+			  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
+			  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
+		return 0;
 	}
 
 	if (data->colorimetry == HDMI_COLORIMETRY_ITU_601) {
-		if ((data->enc_in_format == HDMI_COLORSPACE_RGB) &&
-		    (data->enc_out_format == HDMI_COLORSPACE_YUV444)) {
+		if (data->enc_out_format == HDMI_COLORSPACE_YUV444) {
 			csc_mode = CSC_RGB_0_255_TO_ITU601_16_235_8BIT;
 			auto_csc = AUTO_CSC_DISABLE;
 			c0_c2_change = C0_C2_CHANGE_DISABLE;
 			csc_enable = v_CSC_ENABLE;
-		} else if ((data->enc_in_format == HDMI_COLORSPACE_YUV444) &&
-			   (data->enc_out_format == HDMI_COLORSPACE_RGB)) {
-			csc_mode = CSC_ITU601_16_235_TO_RGB_0_255_8BIT;
-			auto_csc = AUTO_CSC_ENABLE;
-			c0_c2_change = C0_C2_CHANGE_DISABLE;
-			csc_enable = v_CSC_DISABLE;
 		}
 	} else {
-		if ((data->enc_in_format == HDMI_COLORSPACE_RGB) &&
-		    (data->enc_out_format == HDMI_COLORSPACE_YUV444)) {
+		if (data->enc_out_format == HDMI_COLORSPACE_YUV444) {
 			csc_mode = CSC_RGB_0_255_TO_ITU709_16_235_8BIT;
 			auto_csc = AUTO_CSC_DISABLE;
 			c0_c2_change = C0_C2_CHANGE_DISABLE;
 			csc_enable = v_CSC_ENABLE;
-		} else if ((data->enc_in_format == HDMI_COLORSPACE_YUV444) &&
-			   (data->enc_out_format == HDMI_COLORSPACE_RGB)) {
-			csc_mode = CSC_ITU709_16_235_TO_RGB_0_255_8BIT;
-			auto_csc = AUTO_CSC_ENABLE;
-			c0_c2_change = C0_C2_CHANGE_DISABLE;
-			csc_enable = v_CSC_DISABLE;
 		}
 	}
 
@@ -443,7 +425,6 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	struct drm_display_info *display = &hdmi->connector.display_info;
 	u8 vic = drm_match_cea_mode(mode);
 
-	hdmi->hdmi_data.enc_in_format = HDMI_COLORSPACE_RGB;
 	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
 
 	if (vic == 6 || vic == 7 ||
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
