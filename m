Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 300BAC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIHJ9hoUXnQ+D/us1JAeqLnQJdYDgw/WhdAggsmTlM0=; b=oV1wOcwdrdSbI8
	Be90gD1YxQxpE/bk+XP9m6HEZK3R7t+Cd/9oXrIxuZZNA1opcwRMgj6F4lmmoXZXpGkJqo/RjQACO
	RJyXB+ezBvJIVTSfNctTjBAfFwo46eA0yD3mkCbMYpGFj6vxK2cT+EnPCRlZWel/EV2XWoYisUU/C
	CkI5fwhOnfFgsBA1dKMda41X4dhHUFDtzlsrWB0Q9rt+5vIrhrsVBzwpgWQLOKhdLfDV2NAUh7HSj
	6RzCTXanXQwTsJ6zvKVtoS1IdFGEza1I3B2IH/bV19K31ORbsb1aX52AkX3ii+T6O/jC0sNRPvD52
	aEG/ZolpTrjr0nvqZ6KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTY-00EoWa-0g;
	Tue, 19 Dec 2023 17:01:48 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT0-00Eo0y-2u;
	Tue, 19 Dec 2023 17:01:17 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40c3f68b69aso45412965e9.1;
        Tue, 19 Dec 2023 09:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005273; x=1703610073; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=15Kg5P/kPo3OprJxF+EVJ+2okgIdyNf3FbH+CrQD8yI=;
        b=ZKWH/+ubuPhnAMnF7qnFsiMs+ctm/bi2Y3nPCaNX4uk5UFV8SKg8nd/YRlfp68RYPl
         2OYbxzB+DhN0oKjDxzg9ZPmzfotLanilZ6J8iWDicvQtI0/8TMWVvGT2xHEIsMUJqlSh
         d0exGvsrazVXEueUNZKkcZbBxhhgiW6ghTnpUVHyLkiTt9cqEzVwOCQKydt1tJW1ZpnC
         ups7CZnTN5O0VhE8iKCdSDhZvmZ7OApci5scFnqTrhVEY8czuZ4su6FrHn4DfGgkddug
         NrVYdglYOQ9+ASAGNuJbC+worwmYVOarNxEzEmFUwz20Ganiq0wdj7+ftU7S599n/lbx
         OqwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005273; x=1703610073;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=15Kg5P/kPo3OprJxF+EVJ+2okgIdyNf3FbH+CrQD8yI=;
        b=U3Vh2l94tPisGjmEwBaUxdrUokBwsmxVQCbC6fjk/e6TSUajaJzprvGxf0EDThlRYc
         gLCbdYRYHWXiti0qFnZGh+hBWmtM1BTPenZ/WzNjxWCLPewsK8cmEJVS81j+Jaa7bsJK
         j2g8uYuhoLGRyqKO7te5kRL/o7njytTDwUZwbU5Yye2tSCUfEdG9EVQnP3V1qvqYFr7g
         MeKWbVEOr7XNCsXPJydcsC4CNJKw0uUqPDH5qR3HcwvDsfKyGWURVzOhMEKl1QOHJzgx
         +PRhspa+43oV1UqVkRQ7jLhvOaxLZ72md+aNiYF1w31kJWgvy5tBgnbhKb2SAv0Iu8um
         A2ww==
X-Gm-Message-State: AOJu0Yw7/0Hp3qzEU+jzAqKy1UunXUMe5ulnHNn/fmNhnpv6W4UVDaLs
	C17RtznRcmcPEgYNf+syFA==
X-Google-Smtp-Source: AGHT+IGqScOQaAnjGHqWFCShb5yiDE0Yh5BBJo/U5oIdxgSiH15NWOTLCcGXNGOGRQDcRHbogYVnVg==
X-Received: by 2002:a05:600c:4595:b0:40d:129f:d59c with SMTP id r21-20020a05600c459500b0040d129fd59cmr3033478wmo.79.1703005273480;
        Tue, 19 Dec 2023 09:01:13 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:13 -0800 (PST)
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
Subject: [PATCH v3 07/29] drm/rockchip: inno_hdmi: Get rid of mode_set
Date: Tue, 19 Dec 2023 18:00:37 +0100
Message-ID: <20231219170100.188800-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090114_946580_93C81A28 
X-CRM114-Status: GOOD (  15.06  )
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
