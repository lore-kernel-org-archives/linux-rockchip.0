Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDBB3C46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14kokpojt/DKfpYPiu09u4dzgKKwFyZGMisLJFud9QA=; b=o6f6z/kFwh4H0l
	RYTexhgkzPAWJtVbgO8T9S/rvY3Zn09XItYAJZgJZ7aTaxbQrzRXErmYNY74bd9zOXTqQUkWxMYt5
	AwCfgaI2w4ciflEFvGZNZbjQnaFAHmsYRVKHCbUhKRIi1zxNG4mmiarvzeBwp7O5BtZaOGSnw8szS
	dHRR943R4Is0fJZvStBQF2t6FunEyAV1yS8bm4Iw5wuogHtNyY4gwZbTx6RMoTEVjnEfhqn2nKceI
	puaQ0pb1yFKWavW6e6uZqOhWRTwaiWyAMgHELjm78bmOibdvC8qmspcSV9p70AJ8YBcU/vB38NELX
	O6otUJ+7ReJzCtWWmF7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXWn-006LJF-2B;
	Sat, 16 Dec 2023 16:28:37 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVZ-006JyR-1q;
	Sat, 16 Dec 2023 16:27:23 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a2331e7058aso33488666b.2;
        Sat, 16 Dec 2023 08:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744040; x=1703348840; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eeP9TO9V+vEKe4+An2VukwFpdenqcBYIdbA3kdqXnt8=;
        b=H8Ej5Qj+Iu1zyzz4J7+R52od4hRwvq1yz8005v5vTww8Q6oivyCLPAQYxXsbTs6PEs
         8Rga3QRDorKg/M7z2nXYyX9tQGBgAg7Z2umT/vwsTZ34xz6BJxWVN6tCkYkSJItEC1cN
         u2WzCP/K0yuVqX6mQPesFi8lbyngjFt5PIIT8St2uDUJYCIzNVqj/J0xXvmhEW1ZPk5A
         dDbGN7evOVgxR0dLlfD0AtvV7txNt+c9VmH6jiTQLe9iDG0cxjUohvvGCXzgs5oTo2ew
         0H8p5NFuAFTyyH8d7K9N17xuSB/IETKHQa66fGmayN1fZ6RI6Go1lZX5ymMOGn2S6GqW
         0vRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744040; x=1703348840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eeP9TO9V+vEKe4+An2VukwFpdenqcBYIdbA3kdqXnt8=;
        b=dsxxaRHgV37enwoVQC926eVjfHrSa8bzF5URXDist7nlcPbDN8pjUNWjyiIqHHk1cb
         4MRbrVbPNN4XGF90tiar7OzS27ysGgLQFlsy7ZIIAwM7xcv1RMyY2hlc7bE6LaEBZgOu
         dQXjxG8teYkTv7+phRHSfOzxeq9TaUW6CEMbY1BpA+dQ4h9+BqKNKoZdljq79NDycy26
         JowzV6dele0DOaZRALXJcFtUeB+/orGrwX70g0miabJc31SM+DfDs5VCBJNC1V80lutY
         cOjZa8eVRa4ZyqJyGTgceKusTKDBxgfiC9ReUxvWUpHB9xTCR1aHT+v7fZR4yq5ghwWw
         a7yw==
X-Gm-Message-State: AOJu0Yy/jj01gmNR6eD+PyehhhGwIBiMSx3x/wc/5JZ2d/nHW9CUvxJk
	QjPhQnglWN2BtNIXpZgTcw==
X-Google-Smtp-Source: AGHT+IEy38X0xbtf3xBfqjoxplLyZkqC6IMsseY2tnTm+ch8eIhob3KOfE1WsE0GkDI5Mc3Qu6NtmA==
X-Received: by 2002:a17:906:24e:b0:a1d:b7b9:3274 with SMTP id 14-20020a170906024e00b00a1db7b93274mr3725525ejl.169.1702744040255;
        Sat, 16 Dec 2023 08:27:20 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:20 -0800 (PST)
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
Subject: [PATCH v2 20/27] drm/rockchip: inno_hdmi: Correctly setup HDMI quantization range
Date: Sat, 16 Dec 2023 17:26:31 +0100
Message-ID: <20231216162639.125215-21-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082721_645683_3B13112F 
X-CRM114-Status: GOOD (  14.93  )
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

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - made rgb_limited_range part of the new custom connector state

 drivers/gpu/drm/rockchip/inno_hdmi.c | 60 +++++++++++++++++++---------
 1 file changed, 42 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 6799d24501b8..9f27a5faf12d 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -54,6 +54,7 @@ struct inno_hdmi_connector_state {
 	unsigned int			enc_out_format;
 	unsigned int			colorimetry;
 	unsigned long			tmds_rate;
+	bool				rgb_limited_range;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -293,6 +294,18 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
+	if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_RGB) {
+		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
+						   connector, mode,
+						   inno_conn_state->rgb_limited_range ?
+						   HDMI_QUANTIZATION_RANGE_LIMITED :
+						   HDMI_QUANTIZATION_RANGE_FULL);
+	} else {
+		frame.avi.quantization_range = HDMI_QUANTIZATION_RANGE_DEFAULT;
+		frame.avi.ycc_quantization_range =
+			HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
+	}
+
 	return inno_hdmi_upload_frame(hdmi, &frame, HDMI_INFOFRAME_TYPE_AVI);
 }
 
@@ -320,29 +333,37 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL2, value);
 
 	if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_RGB) {
-		value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
-		hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
-
-		hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
-			  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
-			  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
-			  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
-		return 0;
-	}
-
-	if (inno_conn_state->colorimetry == HDMI_COLORIMETRY_ITU_601) {
-		if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444) {
-			csc_mode = CSC_RGB_0_255_TO_ITU601_16_235_8BIT;
+		if (inno_conn_state->rgb_limited_range) {
+			csc_mode = CSC_RGB_0_255_TO_RGB_16_235_8BIT;
 			auto_csc = AUTO_CSC_DISABLE;
 			c0_c2_change = C0_C2_CHANGE_DISABLE;
 			csc_enable = v_CSC_ENABLE;
+
+		} else {
+			value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
+			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
+
+			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
+				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
+				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
+				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
+			return 0;
 		}
 	} else {
-		if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444) {
-			csc_mode = CSC_RGB_0_255_TO_ITU709_16_235_8BIT;
-			auto_csc = AUTO_CSC_DISABLE;
-			c0_c2_change = C0_C2_CHANGE_DISABLE;
-			csc_enable = v_CSC_ENABLE;
+		if (inno_conn_state->colorimetry == HDMI_COLORIMETRY_ITU_601) {
+			if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444) {
+				csc_mode = CSC_RGB_0_255_TO_ITU601_16_235_8BIT;
+				auto_csc = AUTO_CSC_DISABLE;
+				c0_c2_change = C0_C2_CHANGE_DISABLE;
+				csc_enable = v_CSC_ENABLE;
+			}
+		} else {
+			if (inno_conn_state->enc_out_format == HDMI_COLORSPACE_YUV444) {
+				csc_mode = CSC_RGB_0_255_TO_ITU709_16_235_8BIT;
+				auto_csc = AUTO_CSC_DISABLE;
+				c0_c2_change = C0_C2_CHANGE_DISABLE;
+				csc_enable = v_CSC_ENABLE;
+			}
 		}
 	}
 
@@ -431,6 +452,9 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	else
 		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
 
+	inno_conn_state->rgb_limited_range =
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
