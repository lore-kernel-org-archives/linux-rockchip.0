Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5E77C46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nPwA68kGCD5+bFtZsHtD6Fuv+hzfhX/GMcc7Mxlml4=; b=HVwvtr7sUSeUcY
	oHFkcDZoEU8i1FWBzhtu5OOzxsPcV01CBWTuI+/Njp8KbrUQMyV7dQm1UOPJmNNL9N8D6UVoSmNNn
	fJXwfdeMDi60+JTXcGnR+CueRY3uE6+o7rYUmQUjgZm7iJ+8VIX4/cuU1rKhkXxDKnDMR3V1z7yjx
	VRGx7jvbgzzojiRsoGyb9lB7z3TcNgruPxEXAqyK0ESfUnbz8qre16blQNDpkPfZ9dS0E3LuZQ2n9
	0iTn8eRHQkFn+D+RtuHNse7zWd6CTBnZL1/iIe/iBCwOBnY2tPzLUrvB9NEPTGPwuA9B9qDf9P17O
	kzqyRMsqVFCYTjbPMVHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXWL-006Kp9-2c;
	Sat, 16 Dec 2023 16:28:09 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVW-006Jtj-1Q;
	Sat, 16 Dec 2023 16:27:20 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c317723a8so19897155e9.3;
        Sat, 16 Dec 2023 08:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744036; x=1703348836; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mG1054x2y8+5VXwex9KrJL2EhA9y28dmW4DfXU50wTY=;
        b=RqoRVPu/Cu6qU4NaMR2gGIkJEAn0w+uMRLdaMFlltHkLCo2nOvR/Mn47DXPMwPhCMV
         HtLRKcyKtD+N/Qsd5NM+DKDCCmgw1yXEjaSSxV0cvx2P8PpqUZXxoVKF2kfEv/lnENgJ
         7HzSSfuFiFwYC8d/npgWH2K5dZQ1DA7MEJVzvGxcsU+t9lCC2p9uMo73ADfF+k8bX8zW
         ZKTvMx7qDMdpBk/0Q54vaZnG7YK0+X7UNR6Jw0k6nXembisS/2YmMJoSlMP7eS7kLTI3
         HZBIRkM8axuOe/9Rm79cabT5WWr0dEBhwG58snZtOfWkUtPqpij5Yj9kqyJd2Ek9N9GB
         Qeew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744036; x=1703348836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mG1054x2y8+5VXwex9KrJL2EhA9y28dmW4DfXU50wTY=;
        b=OMTEVd0mHzV95IxfHyH0W3pyjFAmgDkdswEgA1H7UHjkabOsKek8e/8tSHtDkBwa4E
         YfLILhLEpd3y3WKESGerLUzGv92urU9UjpoXJOVhu9p/bqCtwkQ7W18VQ+3NcgX3KEaX
         VDXiOBSooa/Mvsdk1faDdsa4+nk6bjXNZyDNEryxwIlanHXGoe6mc6KVrSSyYtByTqfT
         RMMAW1v+eJB++rdHZ3kG79gO3kYhzUsqZs64aihtzezGHEGj85zBP//ARQ8JjnU8vx2E
         lK6xGaCDxRrTtib1EFoI4uBnMcscgUEt0BX+ZZowsRodAs+FjJOkU1tOClOCoOLztSjg
         KUqg==
X-Gm-Message-State: AOJu0YxGvARNxaR2T+VnhpUia8OD2mCXInzdTGSIMcCko54VM6nTI+21
	xMcI5ZZs4vaFCiPYqXIY5A==
X-Google-Smtp-Source: AGHT+IF5X6IwmDt2ZPPo2v31K2XP7aYkHF2OwxSE29V+DEh/kHK4gFeglJFBDfi5S8oMxOTw9YPbPA==
X-Received: by 2002:a05:600c:3596:b0:40c:ab87:9d9c with SMTP id p22-20020a05600c359600b0040cab879d9cmr547390wmq.53.1702744036134;
        Sat, 16 Dec 2023 08:27:16 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:15 -0800 (PST)
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
Subject: [PATCH v2 14/27] drm/rockchip: inno_hdmi: Switch to infoframe type
Date: Sat, 16 Dec 2023 17:26:25 +0100
Message-ID: <20231216162639.125215-15-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082718_488107_2BCDCAEA 
X-CRM114-Status: GOOD (  12.75  )
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
---
changes in v2:
 - imported patch
 
 drivers/gpu/drm/rockchip/inno_hdmi.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 6354949bfd8e..b6b34f4b8cda 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -207,33 +207,34 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
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
@@ -257,7 +258,7 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 						      &hdmi->connector,
 						      mode);
 	if (rc) {
-		inno_hdmi_disable_frame(hdmi, INFOFRAME_AVI);
+		inno_hdmi_disable_frame(hdmi, HDMI_INFOFRAME_TYPE_AVI);
 		return rc;
 	}
 
@@ -268,7 +269,7 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
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
