Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCAAEC46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFG7jaLohEQkNixV/xxf9JEUTar9x+7f3evn4ut3Gug=; b=MnCqBovC2XG4B2
	jlszTchmvszDDzaaFgN+VFa1zw4MJ9+rGnaKz/ymxuYCyDiOTlGf7Dd4Pm3FJZ6gfWO/EuxST6vN0
	LeMM0D+6cB+0Ohy3OvSuhoY+ll4yqI6o1e1tSpu0yS1zD/lj0aXKgIH84pZDww28pEesJbnYZSSuE
	ia2OVY6m2ergWVcJq+2zzucfvzh3yAQhYNQKLgskH16YQypF8ztcjEOg9TfO3FsN7jyQi/G78Ell/
	XDzgLrb1tyI4j+g65/uM3uRp4nv0ybIaTAjo3C//I1XlUR/84S1PexHTBINYqV3g8W3Z2/zArwUQU
	mt9m5oEJRGxQI9KlLA3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjYA-006WyW-1P;
	Fri, 22 Dec 2023 17:43:06 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXY-006WLK-1n;
	Fri, 22 Dec 2023 17:42:30 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-336990fb8fbso479657f8f.1;
        Fri, 22 Dec 2023 09:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266947; x=1703871747; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s3GkVjgO7xCOhsoyA3/cHuRL2/Yb9XCTkkYsuRn5/o8=;
        b=cbjpgs5lkZ7xRHXxw0S2jlEuDwmpaA7RWhDSemPr/9X5nJlFy39ZfI/ojvElUj+P8b
         DH7M4o4lkekc3IXn6KqpoOlEJ7TA2D5KDVFrPs7RLfWRZTnl28LJTEMsqEe1HixKTUnB
         WlGZbppuZu6CA0SkEbCDW08cMtj8DkG9Ldj0Hz5riBN4HmUmvP7VDE3rbr8nm6z95sSU
         d2zC2PHaZUo4nUf80YX9iU2pqq7OSXuTH/Pqe3D1YB4VYf62a4vZ3K+si7DeY3kaxzDe
         w/d1HdyU3fO19eqs2+1lb9pwyZjxJK9XIMMLkFhhmcvqIQToHtosnbPgl6Zt/qf0uAMG
         0Iaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266947; x=1703871747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s3GkVjgO7xCOhsoyA3/cHuRL2/Yb9XCTkkYsuRn5/o8=;
        b=ZKIXFrfrKz7697wpHhN9pPj1pxfdTOVA/BdFcNg2tYPGpLBCzpUOYf53i0SW+Rjeei
         UFDS6h1sNSM3FqECHGMh2d3MHLMV9D3fX8ZtiLQ6YVFSRGaAMeFVNvKSPJqaj8YlMvj0
         Jogke9Wk5psZssqc8pg6+D5WceO01s1IDFEpKa3/+k5lKvBWAIVnpliAkfQZ1hHZxC0m
         o6CRsafRCpOVQWhitV6akQ2vg5C/DNml4upJtR56TwMILnG/GRn522nw+W+eZKNwQ+2k
         vMUmTB5cCQ3Gmv+BSCMgPJoWSMJY4rFmsneKTEvCj8HmvN5DJu+bngkiDHUmwMIUYPnR
         v84Q==
X-Gm-Message-State: AOJu0Yw2+Xu49anUshE2q61WAjKC9b/gqVAqLfC6ynydy1RqOvWB/u4F
	oWexx0ANSprJVxsr/BsuWw==
X-Google-Smtp-Source: AGHT+IHX+9/MPXHlLJ3T80hITMDfMHWCaU/WAybii+j6ocgFvzMfV97yoJKax2k3/7nsxxV6QrfASA==
X-Received: by 2002:a5d:4cc3:0:b0:336:788b:f064 with SMTP id c3-20020a5d4cc3000000b00336788bf064mr959130wrt.23.1703266947305;
        Fri, 22 Dec 2023 09:42:27 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:27 -0800 (PST)
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
Subject: [PATCH v4 07/29] drm/rockchip: inno_hdmi: Get rid of mode_set
Date: Fri, 22 Dec 2023 18:41:58 +0100
Message-ID: <20231222174220.55249-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094228_628938_A1004D25 
X-CRM114-Status: GOOD (  14.55  )
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

We're not doing anything special in atomic_mode_set so we can simply
merge it into atomic_enable.

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

 drivers/gpu/drm/rockchip/inno_hdmi.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 48c4f010b260..299770e481b7 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -490,21 +490,22 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	return 0;
 }
 
-static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
-				       struct drm_crtc_state *crtc_state,
-				       struct drm_connector_state *conn_state)
-{
-	struct drm_display_mode *adj_mode = &crtc_state->adjusted_mode;
-	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
-
-	inno_hdmi_setup(hdmi, adj_mode);
-}
-
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
 				     struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
+	struct drm_connector_state *conn_state;
+	struct drm_crtc_state *crtc_state;
+
+	conn_state = drm_atomic_get_new_connector_state(state, &hdmi->connector);
+	if (WARN_ON(!conn_state))
+		return;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
+	if (WARN_ON(!crtc_state))
+		return;
 
+	inno_hdmi_setup(hdmi, &crtc_state->adjusted_mode);
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
@@ -533,7 +534,6 @@ static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.atomic_check	= inno_hdmi_encoder_atomic_check,
 	.atomic_enable	= inno_hdmi_encoder_enable,
 	.atomic_disable	= inno_hdmi_encoder_disable,
-	.atomic_mode_set	= inno_hdmi_encoder_mode_set,
 };
 
 static enum drm_connector_status
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
