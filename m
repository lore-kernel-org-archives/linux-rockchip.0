Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15D82C46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNtfx8v9sr+e1YtucM4N7CCYgn/sWrD4/PuVDi0Yw0M=; b=jlFYEtVWbPLdct
	UvbPZJSm+Mco0iCAkGV2FlHpjSeTmMQ5Ki/b/5p8t6d+5JVtADN1L1fe+uAo5EwxX9vV5HrbCbjZo
	6DU/+VWu3o4wAPn1LKZaWh3siKaIVNpIwerWncAKtc4Qoa1LaKKHhMvGLPyTbGlFrtCJOaQYD4q0j
	dgiZJfS8USjRGep35vSppVlG5TR6+mzZl6LS4iOALICH/cHI7kv7AVnRZovBtOXEJ1P4pFwUFemxc
	YBv/whJJfdyde5XtS0IQaIocQcbJV4BUOKYxwcG9CyZlVGPX5FuQxsa6z/bfEcSZOjdEOY99CYrWJ
	kPUk1yW/YMUIFB9rxTjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTk-00Eon8-0x;
	Tue, 19 Dec 2023 17:02:00 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT2-00EnzR-1b;
	Tue, 19 Dec 2023 17:01:19 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40d2376db79so9386645e9.0;
        Tue, 19 Dec 2023 09:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005272; x=1703610072; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RIgfmp308cBqMuCcRmTUeRZ4zCPkbcPIGR4mbqru0jg=;
        b=FzhpErDlc4VJF1SqA5q9/46sSojuBSyyDXv+EyehswysAGGuMboAb8T7eg7pCBWMw5
         cWqOKJRDPYhwDxz/Vb8VlRSwh2Da4wgYzAy1jDH0Wv+IXVAN7h9HYvRObWx59dZfwlIi
         pulpnKvBsHSs34v2NO2ZfQIZNP6dfLR/tVkecgFky/Qc2/v69BbrJb0hJQeMvWVDL8mf
         tkMz9ezA6LXt86JwXMk5qqHAJHemgaU35LWedFBHMjyjB6N5no3zn//Hf3aUMo3+wn+P
         P5rX7xbI96dVPJZwM7wjOfkqCPguotK3dbqZ4jV/p5uRYyoRc0v3fOEMQk3KXtA0wMVO
         p/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005272; x=1703610072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RIgfmp308cBqMuCcRmTUeRZ4zCPkbcPIGR4mbqru0jg=;
        b=RAOTUCOi7XDlXG5Ww6HNQ1UUFg1KoygBi3K+9WXlw4eYmvDBQCZguhOYt7IHPPAsnK
         kDoQkxkh1hbr4Dws/CQqEEKhxkQhf0+DpJZNt9BLGIE0SPSxDJzPWpHMcyMkvchYaaMg
         +rIVIv7g7+f15b2I7woB01bklO7gFpJ7EfRmWF9rPsz8RRI3VGQCo987ojsi1asvvTzK
         dQpVRrBIPlQbNa5hp5itRvBgyWZHwyi4fFB194s39I+HhKyWXxMsvgjExJgrxXnX65aQ
         qbo2z9DPMkTQI545G2aqZHm8xFYRoJG9+cZoWVRqkz/zS8ZHUzqAbTW1Bn/Ov3TF/25A
         I/WA==
X-Gm-Message-State: AOJu0YyjspevEKuSKnHehporMdN8eF/tvWgkyIf0jU5RUBYZxbasfn0C
	3ETUdMm9OKS18wuGjppz7w==
X-Google-Smtp-Source: AGHT+IF3b1/JU9tAm07Sg1XZchb8/7FxPCLIba3ZjkniGfDHlfMXAWV5VO8s7wGCwYmnKH7GS0JXkA==
X-Received: by 2002:a7b:c7ca:0:b0:40b:5e1b:54ac with SMTP id z10-20020a7bc7ca000000b0040b5e1b54acmr11372528wmk.56.1703005272560;
        Tue, 19 Dec 2023 09:01:12 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:12 -0800 (PST)
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
Subject: [PATCH v3 06/29] drm/rockchip: inno_hdmi: Switch encoder hooks to atomic
Date: Tue, 19 Dec 2023 18:00:36 +0100
Message-ID: <20231219170100.188800-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090116_554031_1968B5DE 
X-CRM114-Status: GOOD (  12.85  )
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

The inno_hdmi encoder still uses the !atomic variants of enable, disable
and modeset. Convert to their atomic equivalents.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - added my SoB

 drivers/gpu/drm/rockchip/inno_hdmi.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 14d2ba92a606..48c4f010b260 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -491,22 +491,25 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 }
 
 static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
-				       struct drm_display_mode *mode,
-				       struct drm_display_mode *adj_mode)
+				       struct drm_crtc_state *crtc_state,
+				       struct drm_connector_state *conn_state)
 {
+	struct drm_display_mode *adj_mode = &crtc_state->adjusted_mode;
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_setup(hdmi, adj_mode);
 }
 
-static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)
+static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
+				     struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
-static void inno_hdmi_encoder_disable(struct drm_encoder *encoder)
+static void inno_hdmi_encoder_disable(struct drm_encoder *encoder,
+				      struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
@@ -527,10 +530,10 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 }
 
 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
-	.enable     = inno_hdmi_encoder_enable,
-	.disable    = inno_hdmi_encoder_disable,
-	.mode_set   = inno_hdmi_encoder_mode_set,
-	.atomic_check = inno_hdmi_encoder_atomic_check,
+	.atomic_check	= inno_hdmi_encoder_atomic_check,
+	.atomic_enable	= inno_hdmi_encoder_enable,
+	.atomic_disable	= inno_hdmi_encoder_disable,
+	.atomic_mode_set	= inno_hdmi_encoder_mode_set,
 };
 
 static enum drm_connector_status
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
