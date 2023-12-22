Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57617C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6yZyfiF9zZiMwI8aQiMF47eSi0C5aNSKIx346fkMss=; b=pTvPYsGhGg21xy
	6EFln4yThB8Uoq8z8GDpCAjAHL75f2PIkRumMEj2sTnibCmYt05HeJscmUAxxLzwRrItxrs9h00vh
	kHwsQ2puyfcW+UbbFROTQhz52CIuOWcnvFZUgD8H0AZN5R4T2uJtR9sCXPvhJc+VgsHaHPbBH8hK4
	+yEHOiam974Eb3kbNYIWMN9wJxDbvhLrXn49/qoRhOPp7foBSp54V9iSn1DjMNY4slaaR7sRTaWMU
	UOkHA9ZgBIAfqaOMHzPXxJCppYF4jTPLOhtwUZFmwOyydKmW/FTc3Y84OMgH4O5Dpibx2T3vnoNya
	zM4yeESH0HTftIyjveZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjZG-006Y19-1k;
	Fri, 22 Dec 2023 17:44:14 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXf-006WQ6-0l;
	Fri, 22 Dec 2023 17:42:37 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3368b1e056eso1517384f8f.3;
        Fri, 22 Dec 2023 09:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266953; x=1703871753; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sgl1aYbfeN4t6iirxrjmyWdX/BacrfEEhrH3G2xuU9s=;
        b=l4UyqiMxhkUPp+QLHHUxHk0jboSV4vjPFQLcv2svJGlUSAFRrNXfOZSleuHz3f6BZI
         X1oTA57t+k8/fsLtbn8fT7zut8RkkBSA8T7NLpirgot4M3Gy9ziAzk3N8SnYyWW9USEy
         zTks13+l2mCQXP/Be8KOJQx/Vz/JHWiV3IEJODocA4O4mhkBVF6RQNTHntwYmZDt+hQe
         3uqbNP8R2MlXbrl/Xz2ywtZ6dKGguNNa3ID6WYkBk8A5JtTfXSHFiCQT3WlDt83J3UyM
         J0/Al35COOavoRrHCui7ufwSr+dLV+GumNcU+axxTqbbX2HjCnWzZnJbXol7TIO/9qFI
         iHZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266953; x=1703871753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sgl1aYbfeN4t6iirxrjmyWdX/BacrfEEhrH3G2xuU9s=;
        b=rfswMgzm6L8Kv8CCp3dW0QO8UxnKTZsJCjeh9gzSpXL+Ef13Wj2UD9pPYoma1tWeHC
         LdiEf8jsdvMVnTwhCsDuVbaCHOuq6iTkIrm7iKjCAc77WPQFaYoAbNwxC+K1k0FPbVvs
         5jJ5V6c6/bXYHb/s4lta6D0LQLuHXdorOSk3f9foibiKEOPauVx3z4fihOmI+KgOQstT
         yBqetXnbXSjJxahmn68CTFwZDU69aMRqQjpHm9XyUJxnrTimuQayrlvZZ8IBNcBxlqE5
         69/CZd6v+38jvzqWP8Srr6djxUcns/Pj0fErgu/00ZHLHMgKtE5Fxq2/em0gH3AAMnJD
         PusQ==
X-Gm-Message-State: AOJu0Yxi3AG+/qMEc0WfiI6djKckq9+Or/7ZwjFEMOF+0+LisM/WsSNh
	jqP1je9AxI9jtA0K9ImFWQ==
X-Google-Smtp-Source: AGHT+IHWWQ7yvErxF9OIA7H6637gH3kNjMNDPqZnBLODlsTBGOFq4IWWwm5YOObU5TbJYQmMyuwAkA==
X-Received: by 2002:a05:6000:230:b0:336:774c:d0f5 with SMTP id l16-20020a056000023000b00336774cd0f5mr1070493wrz.10.1703266952968;
        Fri, 22 Dec 2023 09:42:32 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:32 -0800 (PST)
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
Subject: [PATCH v4 15/29] drm/rockchip: inno_hdmi: Switch to infoframe type
Date: Fri, 22 Dec 2023 18:42:06 +0100
Message-ID: <20231222174220.55249-16-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094235_304698_F1F2004C 
X-CRM114-Status: GOOD (  13.08  )
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

The inno_hdmi driver relies on its own internal infoframe type matching
the hardware.

This works fine, but in order to make further reworks easier, let's
switch to the HDMI spec definition of those types.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - added my SoB

changes in v4:
 - none
 
 drivers/gpu/drm/rockchip/inno_hdmi.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 10466c2aa520..49367ca24125 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -205,33 +205,34 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
-static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi, u32 frame_index)
+static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi,
+				    enum hdmi_infoframe_type type)
 {
 	struct drm_connector *connector = &hdmi->connector;
 
-	if (frame_index != INFOFRAME_AVI) {
+	if (type != HDMI_INFOFRAME_TYPE_AVI) {
 		drm_err(connector->dev,
-			"Unsupported infoframe type: %u\n", frame_index);
+			"Unsupported infoframe type: %u\n", type);
 		return;
 	}
 
-	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, frame_index);
+	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, INFOFRAME_AVI);
 }
 
 static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi,
-				  union hdmi_infoframe *frame, u32 frame_index)
+				  union hdmi_infoframe *frame, enum hdmi_infoframe_type type)
 {
 	struct drm_connector *connector = &hdmi->connector;
 	u8 packed_frame[HDMI_MAXIMUM_INFO_FRAME_SIZE];
 	ssize_t rc, i;
 
-	if (frame_index != INFOFRAME_AVI) {
+	if (type != HDMI_INFOFRAME_TYPE_AVI) {
 		drm_err(connector->dev,
-			"Unsupported infoframe type: %u\n", frame_index);
+			"Unsupported infoframe type: %u\n", type);
 		return 0;
 	}
 
-	inno_hdmi_disable_frame(hdmi, frame_index);
+	inno_hdmi_disable_frame(hdmi, type);
 
 	rc = hdmi_infoframe_pack(frame, packed_frame,
 				 sizeof(packed_frame));
@@ -255,7 +256,7 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 						      &hdmi->connector,
 						      mode);
 	if (rc) {
-		inno_hdmi_disable_frame(hdmi, INFOFRAME_AVI);
+		inno_hdmi_disable_frame(hdmi, HDMI_INFOFRAME_TYPE_AVI);
 		return rc;
 	}
 
@@ -266,7 +267,7 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
-	return inno_hdmi_upload_frame(hdmi, &frame, INFOFRAME_AVI);
+	return inno_hdmi_upload_frame(hdmi, &frame, HDMI_INFOFRAME_TYPE_AVI);
 }
 
 static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
