Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E786C46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYq6lHDAdHoi33ElDBo4LUwAtALSl7VCQtMRcMOy7R8=; b=kF3qyQ1A3vZwiD
	2YTkYV7aUB+aBm1gHbZ7I262TL38HYoIHwSTaL+GMG88l1N+7nJHz+fszSpVryljJ5DDaaNqc9cet
	sCQ7TW1mKWSqf+CAFskQjyEQ6ARIzHqOPwQ5TUKfc1GKninmTJYtMnEOwAF3QkQKlbVOu4wp1vvWd
	Valj82Tto4I0V6ucgJABKJwl0ZD5IK870RJTr17DTLwnRlNxTkGsm4J4C+H97bMvo3M1qZeb/jOhG
	Nb4ojDFl7Zu1FNcb0yUPOYR1liCMqCHqPtrJFfk2bu2mgu0NFiA8bjIOkYcXz639cW+QhNs+dgGL0
	Tihv1ih2FwHWXUnhdF4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdU0-00Ep7O-2k;
	Tue, 19 Dec 2023 17:02:16 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT7-00Eo86-14;
	Tue, 19 Dec 2023 17:01:25 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40c60dfa5bfso56960505e9.0;
        Tue, 19 Dec 2023 09:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005280; x=1703610080; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WLVOVeutPpE/o943uN9J0cWjrEPzXhsU4YUzCWYMJxA=;
        b=eoM1LoadhScn6zSA6RCyD7FhsESXC6Mx3j5q8Gj9ODWasOcRLMZ4MWceWebQPJ6oEc
         rW8sklXdmA11ip4yz4M6FLlLMmIBoVK1WHqNURge15Lbfh+WocSMqrHhmdo/OXaDM3IG
         D7erdP9wY8qagHNsEc1FzOtJXvNbsiqAEBY8DKejeDBhOXSeIqEqmGmxnLvRutntGglH
         A++oMhuv5bPKY43+q6LdThtHPepnL4CZM1VstDXuGLBfkK5bN1YCPNV4GCFEDtBO+gZ/
         QdBYUW+lTkfJMULq8XHeq3hwAUHnQA+iTmvxgLKkhUXo9TQPY2rLGqdnzrVjIDrbMkPH
         lKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005280; x=1703610080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WLVOVeutPpE/o943uN9J0cWjrEPzXhsU4YUzCWYMJxA=;
        b=hd3fn2zBgVV96wbwLkzNc7+BCaxWb0KkYd47yWh4o9WFHBAWnSUicfn5KRbEOdYkzu
         xS+dda1I1dNDqE6FRhVkI54zNTjgBnXmROk+TgsvEyyVu5VRss2EC6K/hixRHoWoY2Wo
         6reDV93BUh6JOo0rWhMV/KN1Y9dEW71GfzdO7ssPwP8w6HNZCsE2JKaCxdpMu2fieTwR
         W+kemyTbNTIUKdVb6WlWl0htV2VEQtotLOiIYqqhqweNavgaui371Ra09tgo+FLJBhe6
         MhO9uDtEndZ01ZIPgZdMIMW+5gqoFUKHAEaK2hyu9Nnbglw7PxDBg4IEcFHR4Vf/vswk
         gq9A==
X-Gm-Message-State: AOJu0YxUVK4TmP5jtkjQQPWoNHUqLmgIPmbPSYjS2qZlme7dd7E8d8+v
	4ytXz0wDtiLnFZGVoqRe4Q==
X-Google-Smtp-Source: AGHT+IGRlC9Raac+QygKKLDkdfOeiYrk+nrbVIe+Lff6n3kh+jfvi6jEh6b9PVLAsBO1Ls90F8sAzQ==
X-Received: by 2002:a05:600c:808e:b0:40b:5e59:c581 with SMTP id ew14-20020a05600c808e00b0040b5e59c581mr9903834wmb.171.1703005279654;
        Tue, 19 Dec 2023 09:01:19 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:19 -0800 (PST)
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
Subject: [PATCH v3 14/29] drm/rockchip: inno_hdmi: Move infoframe disable to separate function
Date: Tue, 19 Dec 2023 18:00:44 +0100
Message-ID: <20231219170100.188800-15-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090121_390771_A932011C 
X-CRM114-Status: GOOD (  18.31  )
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

The code to upload infoframes to the controller uses a weird construct
which, based on the previous function call return code, will either
disable or enable that infoframe.

In order to get rid of that argument, let's split the function to
disable the infoframe into a separate function and make it obvious what
we are doing in the error path.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - added my SoB

 drivers/gpu/drm/rockchip/inno_hdmi.c | 46 ++++++++++++++++++----------
 1 file changed, 30 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 5c9f1325441f..10466c2aa520 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -205,34 +205,44 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
-static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi, int setup_rc,
-				  union hdmi_infoframe *frame, u32 frame_index)
+static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi, u32 frame_index)
 {
 	struct drm_connector *connector = &hdmi->connector;
 
 	if (frame_index != INFOFRAME_AVI) {
 		drm_err(connector->dev,
 			"Unsupported infoframe type: %u\n", frame_index);
-		return 0;
+		return;
 	}
 
 	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, frame_index);
+}
 
-	if (setup_rc >= 0) {
-		u8 packed_frame[HDMI_MAXIMUM_INFO_FRAME_SIZE];
-		ssize_t rc, i;
-
-		rc = hdmi_infoframe_pack(frame, packed_frame,
-					 sizeof(packed_frame));
-		if (rc < 0)
-			return rc;
+static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi,
+				  union hdmi_infoframe *frame, u32 frame_index)
+{
+	struct drm_connector *connector = &hdmi->connector;
+	u8 packed_frame[HDMI_MAXIMUM_INFO_FRAME_SIZE];
+	ssize_t rc, i;
 
-		for (i = 0; i < rc; i++)
-			hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i,
-				    packed_frame[i]);
+	if (frame_index != INFOFRAME_AVI) {
+		drm_err(connector->dev,
+			"Unsupported infoframe type: %u\n", frame_index);
+		return 0;
 	}
 
-	return setup_rc;
+	inno_hdmi_disable_frame(hdmi, frame_index);
+
+	rc = hdmi_infoframe_pack(frame, packed_frame,
+				 sizeof(packed_frame));
+	if (rc < 0)
+		return rc;
+
+	for (i = 0; i < rc; i++)
+		hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i,
+			    packed_frame[i]);
+
+	return 0;
 }
 
 static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
@@ -244,6 +254,10 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 	rc = drm_hdmi_avi_infoframe_from_display_mode(&frame.avi,
 						      &hdmi->connector,
 						      mode);
+	if (rc) {
+		inno_hdmi_disable_frame(hdmi, INFOFRAME_AVI);
+		return rc;
+	}
 
 	if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV444)
 		frame.avi.colorspace = HDMI_COLORSPACE_YUV444;
@@ -252,7 +266,7 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
-	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI);
+	return inno_hdmi_upload_frame(hdmi, &frame, INFOFRAME_AVI);
 }
 
 static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
