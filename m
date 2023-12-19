Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DC85C46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eh4HAjFgeTZpa7r9NziS+DJb3fWqM6yDcJ6RInWa+J0=; b=qa9P2R/6V9RIWR
	os1tuoUMPFLZhXRXjxEfovBjfNbva5ksN3Y+lF5JVRD1mo1F2+3ht6I4UKulOOBmpfffjd7Q31VMc
	MwR+r/x77lYDg+mKAcy5Z4pHbjv8TR5dUykViBNzKi+iCic2Mlrojls3qP28AvAULY2no7z2NCx5r
	RsrMi1NEEvS6BBOM8yentaPtVkQvMASS26Gj1lLsWGr/QNV52XyDE4XkKwK15N5tTQWKVlnScARsC
	M097e9hmPOrQi0s9oYntuzhDhGUI+hbPpmyA+iFg2sR0jIYGSymszR9KBDYY/93qKWfBS98k2oiSB
	Z2LhDXvOAOV4ABdqzhoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdU2-00Ep8l-2T;
	Tue, 19 Dec 2023 17:02:18 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT8-00Eo93-1I;
	Tue, 19 Dec 2023 17:01:25 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3364c9ff8e1so2641743f8f.0;
        Tue, 19 Dec 2023 09:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005281; x=1703610081; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=61BEi2enFRPw/8EyUZ5EsB7jHaGAUQBqgpyqmRd+nco=;
        b=Z7+zvUzty6NbnRgPHMh40Xh8tz6+2BlnOItYMIyVvLWOJLMWOnDrlP2arKWKwNxr3L
         ZjLwbF49iq7dJyBrnDwLjvqNd55LwuwSWe+qyPgq/HQYmjldofS5GCaUrtPsSv2KQbHp
         cJ8hc28XABBB3njeAhL1ss6OruQ9zS60wBh4gPg5yjuX3Ac3qKmFRz19m5bTsli5q5ZD
         km/PFK5SJOs4exvxsCiSTEw5QWWQgbwpGCKXlWn67AM0+k+JjMI81hsdLCQEhsoJXV0q
         en2myyGCJBYpbTSuUeH7t0fubzaq7YjeHzbbEYNOVrXBChsfcO1N+2b6NXDEpOJ0n7aF
         bQyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005281; x=1703610081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=61BEi2enFRPw/8EyUZ5EsB7jHaGAUQBqgpyqmRd+nco=;
        b=h3BDPSS9Thkz4LQ05blpYzSIdIHK+hP6fY/sylw/OM7tYVMAhk9tBsgc7ptSn2g2oL
         /YMqdNxDsWS2lIIZZEtJZTYXRUZ8m/erGjaQKDR2JALwW7MLP6MDP2BJsj80Fs/Z6PlH
         sbozWKIwh/tCH7XJ06nMRx6vxDjDuxhjZup1B7PmDrdKfbcsIQI7DqTQnGpWPbjeciS0
         +01cQAcHubqeDsOiN7ejPD7CsaGdVxM3clVTt9vBrc1Hf3d39OtWIo5DlQHm9YvDCn9j
         n7d72PmfHBL0ohBWi8WJa07i7KaY9lRhhZperN9r/Wahd0ulHH724ITpRZCEuZqXxgqR
         VxcA==
X-Gm-Message-State: AOJu0YwT3aQVMTDsqeudhJSBOWTlwmAl5KC1n0Cb/IVUs5Q8LuHOu2c+
	q0H3MyP7lJy7g6zTMXAKeA==
X-Google-Smtp-Source: AGHT+IFvZaeGlrEwLMNNw21eXmXhkFIQZ/fJCEgjVKuGgxweCAiX31aApdPOXaMkdZasYRNKTPgA7w==
X-Received: by 2002:a05:600c:3115:b0:40d:177b:c3b3 with SMTP id g21-20020a05600c311500b0040d177bc3b3mr847099wmo.18.1703005280608;
        Tue, 19 Dec 2023 09:01:20 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:20 -0800 (PST)
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
Subject: [PATCH v3 15/29] drm/rockchip: inno_hdmi: Switch to infoframe type
Date: Tue, 19 Dec 2023 18:00:45 +0100
Message-ID: <20231219170100.188800-16-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090122_480688_BF70B47B 
X-CRM114-Status: GOOD (  13.60  )
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
