Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C94EC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdia1JJ+YhhC74V6Ea9C5DklV7VmbfwIgK6ucXAaE/U=; b=WmY5ltKNoSatcj
	s5fUbYJtABHPtEqkZeZKfEo+u5zDnbAsZKFl0ish0tHx+NgXLxhcdjicwafy/enl3pW///cUcXFp4
	dQ4hOEQoCuvgqDUhrsYtlxVK8m+WDZbPDB79YtVpkrT0WiL4RwqN48kweSDJN8V0qYiZZKktdk8rQ
	w77Q6ZgxUCliLFxVGd344fhKNyC2y+hMd+B5xnAhvFL3/JAJHMZct4sAfTtUJuPLlLDsn7c19et8h
	/pof0YfFvz+LdJY/DuvtrZlexP9rjYkEyqfGJFc723wL2elZOAbkK9t/wNMlqSwGOwT1CCdqY8AfJ
	zNeOXwXpFRb8MiMdQZkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjYV-006XJN-2c;
	Fri, 22 Dec 2023 17:43:27 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXc-006WOh-2z;
	Fri, 22 Dec 2023 17:42:35 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-33694bf8835so686293f8f.3;
        Fri, 22 Dec 2023 09:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266951; x=1703871751; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LfMKOfn5qhMsr90aHA0q/zpw4x0Di/ZdGH16UYVoiok=;
        b=NIaaMfTJRKCWO5KQ4gnGLzFRutgEIZBNe2hrNw5iRbCs9USxHgoBqgE5RJps56lora
         prMuDa3zV/wfm2ANMyMOckKoQKmIT+gXVJSGBur3/eYkUrEH++zf2GVgrbr1D75eSf2i
         h8crWCHYQcTDvEhLhut3mBlhdIjj+eqg0yafjCLtDfksijt4zoJcxsCOdmJq68nCb7pk
         y0Coa3p0W6xESaYn52CcNNPDMKMTjNcJBUq2ilVe83vKbDM4WT35DhUiQhPg85/yCFcf
         m2Gb3DDIEtsn0/OtyhKwa/Hv7LAzmj7PQW91B4hgN89jpWiMYzGW8ka2Jv6cZousJ/6I
         RIKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266951; x=1703871751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LfMKOfn5qhMsr90aHA0q/zpw4x0Di/ZdGH16UYVoiok=;
        b=SiNhuaBI+EV8INsRwFsooxHd5WMw1CzWQ4SDA8KnF8goy3GHh/kHtvXAzoLghsecTu
         wOxPgtR8eKXUKHr5OdbshxwC7zfP7HP1t3bfftWrNHXtPhnAWRoDnnWG3X7lXdzOvdYA
         3pLJA1DZ3vMo97KjKPLuwGpbHlyilyAmWSPL6HwH3hveciknzG7m67nzY5gbMb/7O+dB
         39tcg3pdphX+D1CWUYwTjMNNpLG9avyC0ISrRIB2RGhrsVJNc7lDRWuLGhoIZlj8+xYZ
         qgi5EA2EFrLeE7RhQ4SPGdN7JQLbOSwOpi2M1mw4BK21ykzTJBenRYiR62IbndgnrU4u
         bU4Q==
X-Gm-Message-State: AOJu0YzHP2pBvm34QCbuwpX7Gtkt2LP7jjFXGnPXh2Y7H1Q2fkuTOo/7
	gFJwNK/NKaCaWhPcqmCoZA==
X-Google-Smtp-Source: AGHT+IG3YWjTrYpe1ubpbeRtz8cVdvTTRZfBcpLPWcobSABejxp0JmC9wWRL1LNQLRIzXRY/WodRrQ==
X-Received: by 2002:a05:6000:235:b0:333:12a3:644a with SMTP id l21-20020a056000023500b0033312a3644amr946812wrz.18.1703266951663;
        Fri, 22 Dec 2023 09:42:31 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:31 -0800 (PST)
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
Subject: [PATCH v4 13/29] drm/rockchip: inno_hdmi: Drop HDMI Vendor Infoframe support
Date: Fri, 22 Dec 2023 18:42:04 +0100
Message-ID: <20231222174220.55249-14-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094232_995336_3E7EECAA 
X-CRM114-Status: GOOD (  14.74  )
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

changes in v4:
 - none

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
