Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 457D9C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycgkjq9Xg7OOqLRen6L6WfYMcVz41CDe7OLF8oF9D1w=; b=XfMplKBUHCLggY
	WaDldKEPCFlMuvbaG1dbx58uPjyznFmDmxm51duiH65aNj9YV/9TMLq52X5kaMw44lQ53gk2AYUTF
	Gg0o3tOLk9hzyw4MZGQsoOOFioJAkyRcdUD7vHXaWWuSgMBLt972i1SqbEdPI8Yp9r5L/T5GhgPfe
	0iA9/R6RDux2kAm4futHaIiJlYLhhIRPNlF2xvFLnNyWTdslc6cxEbBW7rUseHHi583YwyMB1auXm
	QMqPdiHwBpnJmsev8noJEUzsJLnB1eULgVIX/veDteFVsVyVTXlnU6AVKfjaPdU4goZRRT3Lw3H96
	WjkJBqjD553X+DL59n1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdUi-00EppN-0N;
	Tue, 19 Dec 2023 17:03:00 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTD-00EoF9-1I;
	Tue, 19 Dec 2023 17:01:31 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40d2376db79so9389085e9.0;
        Tue, 19 Dec 2023 09:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005285; x=1703610085; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XAqGTQIWGOGvPcvI30gGZkG+UcVd1X4ARFNZ3GdyHUM=;
        b=cLPwgLpda0joXYFdBIK6rX8r2aoCXkuh3oinc4c+FtqxVNxmldhUyhwzzbQul1R+Cn
         eFxjCSwd/Fsu8x3uheNDN5owX7K3CpPtg4Y6wYx8E7t4UHmxcJSjnMmZ6kCbvWqWL3PG
         7oOBeLtE+G+FKiq1KPKhSSssYQ4qEakAw+Yd2zsSwvWdvKaf41n8HE6+yWQE6pQjAJAg
         9xQSaEq5LChVIlnIXemfrL1LtLDAXNmVWg1cVkRvc/iXTOZkc88VT8qjNiX+fUAYb22m
         Yi45qno8aTXzscbUx1/NVJGlgi5HOZBEBsfFUjjtV3pcc/IRHaD48JuLYp9j34uIQtyO
         GCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005285; x=1703610085;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XAqGTQIWGOGvPcvI30gGZkG+UcVd1X4ARFNZ3GdyHUM=;
        b=UpK+eynT5qfGMcBHL9Vh9AngyMJvc8rrw0Ap2iqsPqerXPR4AaXfnAEIhaaLX3avg4
         fmyJV2C72ngNpgzNYcfKE+c/lDMoj/HXDwvfOwi/oyykXSgnUmVUkGRqVV6Zpz2im15h
         NlftKYL47AauIrywsAkaF/L1WxI4ir6GJcB34KFZvg0N7ombmD4VkvEZRRaT6RUXZuqV
         wa3QBvKjuUurXFm+v3H1fK9+TTEVHudBBTgSBUtvtrVcC0kZJc37ggEfJfqkMpDOWIJF
         sfdXlCyDqzVVWv8wQIVh9xRt49r9oKPJlH4l3UvMGq7Wu9cWkpmRslix1yloESDcX0kq
         xjGA==
X-Gm-Message-State: AOJu0YzawQswtCDJW8xqvrgf6vxnNs+ya1Y16jLPRCbqfmzJRs1U0ylh
	ey8vEW2WX79r9MHCLcEdug==
X-Google-Smtp-Source: AGHT+IH+E5UeGRN5eSjeOL+7FoXZ7yugNnZYROlsSGPz8s7Ex5qjyxn+jCN6zIVj9hVPz9tQj3kqMw==
X-Received: by 2002:a05:600c:3b06:b0:40c:3158:6467 with SMTP id m6-20020a05600c3b0600b0040c31586467mr10786965wms.1.1703005285545;
        Tue, 19 Dec 2023 09:01:25 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:25 -0800 (PST)
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
Subject: [PATCH v3 20/29] drm/rockchip: inno_hdmi: Correctly setup HDMI quantization range
Date: Tue, 19 Dec 2023 18:00:50 +0100
Message-ID: <20231219170100.188800-21-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090127_589626_B1F6AE85 
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

changes in v3:
 - moved assignment of rgb_limited_range to atomic check

 drivers/gpu/drm/rockchip/inno_hdmi.c | 60 +++++++++++++++++++---------
 1 file changed, 42 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 7ce5836fc80d..e6d37772500c 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -53,6 +53,7 @@ struct inno_hdmi_connector_state {
 	struct drm_connector_state	base;
 	unsigned int			enc_out_format;
 	unsigned int			colorimetry;
+	bool				rgb_limited_range;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -270,6 +271,18 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
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
 
@@ -297,29 +310,37 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
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
 
@@ -473,6 +494,8 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
 
 	inno_conn_state->enc_out_format = HDMI_COLORSPACE_RGB;
+	inno_conn_state->rgb_limited_range =
+		drm_default_rgb_quant_range(mode) == HDMI_QUANTIZATION_RANGE_LIMITED;
 
 	return 0;
 }
@@ -543,6 +566,7 @@ static void inno_hdmi_connector_reset(struct drm_connector *connector)
 
 	inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
 	inno_conn_state->enc_out_format = HDMI_COLORSPACE_RGB;
+	inno_conn_state->rgb_limited_range = false;
 }
 
 static struct drm_connector_state *
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
