Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 082B0C46CCD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABnrgZSMowno5a8wk7jh5cHplSbobwGTvDHcPqffhKs=; b=PwLRyoJuAO2F3K
	moxhl3hJKJfA8DA8i5D3ev9mXcQLvPvYtFYXcbCkjHeHQ4lIGMJifDLvG006vK8g7R4COIhk6guAm
	Cz80XT1DrVl8uNAs6LSOOZiTfnEx7svpCCrH8kBxbGss0AShd6L0d+O/OwuDQekCFQq44022/Fv9K
	neC8HO7fNaeE8tvCsKpb9LFp+3Is5iTNa3UqarTF4z2KdzYWmcMXBBAkKaaZAhwAAYmgVW2gPbsnk
	ONQZw+g8bVzTVYOuwAmqr8YoblZ17ohPJr2dcQMACkbKKVJdjC7xg7C6liBKdYvPvho6wcwiIBNCQ
	z7KEvk1DqniA8TuI1qbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTn-00EorB-2L;
	Tue, 19 Dec 2023 17:02:03 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT3-00Eo4a-2V;
	Tue, 19 Dec 2023 17:01:21 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-40c339d2b88so51520385e9.3;
        Tue, 19 Dec 2023 09:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005276; x=1703610076; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iFJnc/mxwT7AOuXgJJftqh12jwZWWgTZW7pO4s+kLaU=;
        b=cVl5YWd7xKD7LiWRG15+NGAlFCKrlBuxXB941pYMKM+D7xk7/ma5Y/rpJM8myT7jv7
         OiIhkxP5Ns4Wb6cErZVwQBBOotVrCD99Ut5+bCpFnuajlY+j8YAvqJdGHpaV2OAcy6b2
         1uE8xeqNknxtGr9h4tBU5bqA8A+EeVvO8IZ9PLMQ3HegnmHymHX6SztYNhxMOB1+pqLu
         qKXIRejWmz79JjEX9F3EYZdm/0LMH0UmjSRE7PDjYyB9+ttB7R0DfufGx5JOI7YCL9/3
         yxmeHZj5V99q0XZSk2tBJPi6DPPU1taRR1BnnIMg9PqLC20x/HXYWuSce9tGUhflf+xn
         IqOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005276; x=1703610076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iFJnc/mxwT7AOuXgJJftqh12jwZWWgTZW7pO4s+kLaU=;
        b=q0jivb+vHOnDxcyuBLncjgT6RJGnFYYhi/HL/23h5xO2tzRaTA8hjqufmREWv/QDqF
         00WvO7qXzQq7cbAeY9Lve9LhXd0TF43crlbnhodhykWrMjKo4zlhufvhawN1cwfvY/jm
         cf6rfCTL8FdN0N1OQ1cqR/BLkvFponYB7sL5PEmkstGQoU2i8StNGBRqdXaE7uNeuJg6
         Axl7ZKUPoiEe0e+kddAke1VJ3OJXo7droB7id9WT6Kcq+CZNOGpUSISIGFy4ypJMxuE3
         yODGvzu/i/m4DfEpzSgeleOMERqQSj+aP6me69TEDwnEDa/B5ckigdy9Dnfehnu9YFVj
         EfJg==
X-Gm-Message-State: AOJu0YyCx3amLeO1u/QHI3xwiHXYqocmAOSyHCDHSATZ3khzVC30cAAC
	BclpIilyJMCv4DSTXYpb3g==
X-Google-Smtp-Source: AGHT+IEbPw77YvJcAXZpRTG+THyzCBpu8TjojgDNiNM8LfkQxoe6a5lRkYeVjQYnPtzFk5poHXDo2w==
X-Received: by 2002:a7b:cbd1:0:b0:40c:32b6:866c with SMTP id n17-20020a7bcbd1000000b0040c32b6866cmr10082301wmi.68.1703005276391;
        Tue, 19 Dec 2023 09:01:16 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:16 -0800 (PST)
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
Subject: [PATCH v3 10/29] drm/rockchip: inno_hdmi: Remove useless input format
Date: Tue, 19 Dec 2023 18:00:40 +0100
Message-ID: <20231219170100.188800-11-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090117_845724_8F26C699 
X-CRM114-Status: GOOD (  15.15  )
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
Tested-by: Alex Bee <knaerzche@gmail.com>
[made checkpatch happy]
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - none

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
