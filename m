Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CE39C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TsOTtafOfeSOWX3qDdddpWxNremBT7JXIIbzpJIyWg=; b=I3ptgHLOiKkbh/
	OIZN/4eftPVvni+b6vZqxz6fSVYpJVfCkFUVueDWZCYT+awqvphrpxrg/HOeKKk8xsj4yrBLC3vy+
	I5YBS89WXPEjETnxeuV6SPGNFK8HM54Ev7H+/88svD2dmvHMHpOplJeKStumEMO4VbimY66Pzeym5
	ujjPljDWxwvQPAJm/Me0h9fVRwOeoYBHQudUxVstVSGZg5VCVvNJdI6I/BBxKTATtFM0+RUVgd2h/
	lPRCQiQAvn5XUXg3Va6sC0GMFLZWgmcokt65NHhnCUf1YWTLthA2DJnjWmDOTPRZyWITOVR7qkumF
	jeGgeZM04htJ3pzQIdQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGi-00FseL-31;
	Wed, 13 Dec 2023 19:51:44 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGV-00FsTS-04;
	Wed, 13 Dec 2023 19:51:33 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c2c5a8150so67221045e9.2;
        Wed, 13 Dec 2023 11:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497089; x=1703101889; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sSS4lcTIGbMXkzXHnajhTMjU7KSYMMCUlsf0C4cS0VI=;
        b=DGqwY2tWyDjbk6harANtA426jRehiqjrg2nwkFd139hXcz0+GmCp87WCig39LdZKXF
         n+bf/Ggs+h4QH38JP6dCYDvm+vfS0gEOm/DyZm1dh6Pn7gWBy1HqJ5BQrNeH70QNj4AV
         gFhFU+eeAFpqzghXsX33g3xCGUejXlGElXDsXiN5zqxoLro4ORZE1FUpgxGMq530R0Q0
         j2apIURst43FBNeCGbgamlMurtDh3K6Ae+mwao98O1/dBV3wQhRqwYfNCXVdl+YZ1q4M
         SXavrv4sjkgWA14IQecitsKAKe1AJk4CL3KWYsY6NSCGufCQbQdZlDTb+0xOrtfhGWZB
         suGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497089; x=1703101889;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sSS4lcTIGbMXkzXHnajhTMjU7KSYMMCUlsf0C4cS0VI=;
        b=vsRyUDVepU1x+DPTTSb7DE98UvrylysJ9gpmqCmC2+aG29aszhuMk0vCzaaU4oNbLK
         r3fOd63nNgN1+9+eWX+yxRTtoeKPYZTnMO9FoA9vduV/UJCHpc2+ojisD+jaltBzWIen
         zbjgdVKJ8nTMV96d6MWGefcVLLmbNfRpTwoRvtW7A/WWrDPWgXNaFo5EglLWNpS4/lYm
         oFWQoJLpqG8P9w3tW7JRCo3D/0aiHz/X47ex9XrNGclUKZSzqu7WlTby6MJ9HOO5q0LJ
         knqfn6UHDQwjBG359F8wADK75o3Ah6vhhgZw1togcDLDdvkhfwlF2pMj9nOhN+9V9m8T
         dIPQ==
X-Gm-Message-State: AOJu0YwSfLNhbBjJ5XIYeSUnMFhNL51OW8JBME3tydY5eStvYnCslNh4
	/b0zglb17mzghNZrcV/HFw==
X-Google-Smtp-Source: AGHT+IEL8LZfudHWsCE9Gg/1An8TCTsUvrAJyoygGbQu539fT0PvYfdS0tzUat19DdSrjW62zZZjHw==
X-Received: by 2002:a05:600c:3657:b0:40c:2d85:3a13 with SMTP id y23-20020a05600c365700b0040c2d853a13mr4530961wmq.185.1702497089612;
        Wed, 13 Dec 2023 11:51:29 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:29 -0800 (PST)
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
Subject: [PATCH 04/11] drm/rockchip: inno_hdmi: Correctly setup HDMI quantization range
Date: Wed, 13 Dec 2023 20:51:18 +0100
Message-ID: <20231213195125.212923-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115131_057130_A4FD118D 
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

The display controller will always give full range RGB regardless of the
mode set, but HDMI requires certain modes to be transmitted in limited
range RGB. This is especially required for HDMI sinks which do not support
non-standard quantization ranges.

This enables color space conversion for those modes and sets the
quantization range accordingly in the AVI infoframe.

Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI support")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 40 ++++++++++++++++++++++------
 1 file changed, 32 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 345253e033c5..32626a75723c 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -33,6 +33,7 @@ struct hdmi_data_info {
 	unsigned int enc_in_format;
 	unsigned int enc_out_format;
 	unsigned int colorimetry;
+	bool rgb_limited_range;
 };
 
 struct inno_hdmi_i2c {
@@ -308,6 +309,18 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
+	if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_RGB) {
+		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
+						   &hdmi->connector, mode,
+						   hdmi->hdmi_data.rgb_limited_range ?
+						   HDMI_QUANTIZATION_RANGE_LIMITED :
+						   HDMI_QUANTIZATION_RANGE_FULL);
+	} else {
+		frame.avi.quantization_range = HDMI_QUANTIZATION_RANGE_DEFAULT;
+		frame.avi.ycc_quantization_range =
+			HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
+	}
+
 	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI, 0, 0, 0);
 }
 
@@ -334,14 +347,22 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 	if (data->enc_in_format == data->enc_out_format) {
 		if ((data->enc_in_format == HDMI_COLORSPACE_RGB) ||
 		    (data->enc_in_format >= HDMI_COLORSPACE_YUV444)) {
-			value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
-			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
-
-			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
-				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
-				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
-				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
-			return 0;
+			if (data->enc_in_format == HDMI_COLORSPACE_RGB &&
+			    data->enc_out_format == HDMI_COLORSPACE_RGB &&
+			    hdmi->hdmi_data.rgb_limited_range) {
+				csc_mode = CSC_RGB_0_255_TO_RGB_16_235_8BIT;
+				auto_csc = AUTO_CSC_DISABLE;
+				c0_c2_change = C0_C2_CHANGE_DISABLE;
+				csc_enable = v_CSC_ENABLE;
+			} else {
+				value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
+				hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
+				hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
+					  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
+					  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
+					  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
+				return 0;
+			}
 		}
 	}
 
@@ -458,6 +479,9 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	else
 		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;
 
+	hdmi->hdmi_data.rgb_limited_range =
+		drm_default_rgb_quant_range(mode) == HDMI_QUANTIZATION_RANGE_LIMITED;
+
 	/* Mute video and audio output */
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
 		  v_AUDIO_MUTE(1) | v_VIDEO_MUTE(1));
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
