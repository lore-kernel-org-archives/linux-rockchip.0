Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFB4CC46CD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKtIDLNWUv6lutXlkfKOIagRmBwonf4J6ybO7lIKMNA=; b=FvqCjt+F6/Vmyw
	YCSXJ8CXwIr+avo04sMnX5mNKrEhuZYeFUeoY+Y48JP92qRt2IWKs18S+ujGFD1SB/ll8XlorzSxE
	QMAg8WGGadD+5c5C1ypOxPysx7DzUA9i8sHv4GU7BxWe3YMvMDFcdifrFt1elriUz9pK9N07/Yy0I
	Vj+NdckpNcDT80wT5nLVFuvHvzWZ/ypju62BB+6bjaRT8hEYZS/SOX9Cxrmg4VmM8yy3p+v2qSgGz
	iUQMvbISsCJ9esuYfcprOSscFN3RYbSdwrulaJI7TYWzatSOhn2yXL/LLSXpKQH2Hbfn8TErnvvbO
	VsIUBxbj2Lr98J6Dbglg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVt-006KHs-0m;
	Sat, 16 Dec 2023 16:27:41 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVQ-006JnX-2e;
	Sat, 16 Dec 2023 16:27:14 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a2331caab22so26553466b.3;
        Sat, 16 Dec 2023 08:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744030; x=1703348830; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hqi83IjE0rGQjBdIOPd+5QjMZSA3M3R/UCn49KPkLl0=;
        b=CpqVMpzZ9Of1LYj9Q/Wp7asv3m2gUIP4pYR8RVZS/8YLCx01W+fF+/VeGT6ArJTAbb
         j2DnzJjeALDTVOzuS+c0AyxP94YlnS0oF2+7wWXg7zdEn2ZdbpGDRXHEf9emzdqVNbTH
         deoQ7Z3++39hpOEUQ6/ul6PUqjPAlok9eoAWOk26vrKV8EG1pHOsq1A5/8cbDAhpgSxA
         MArLqPdwQk1otOXBBCncquVQTtzklN4MLresWrbvS+H3K8p8RxmRPpai5hSqo+jEgUdY
         VGTLkRBPfA0CM5f+QDzS82wieGsq171xwnMOZrwvitKu5GaGaXA8KWiKwKTA+gASUryC
         eQOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744030; x=1703348830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hqi83IjE0rGQjBdIOPd+5QjMZSA3M3R/UCn49KPkLl0=;
        b=q47HkO/VeNgFLaKbb04uDiRpN3Wu/RJpJtqXS5pvXJgnc9bMnPQ9MGkwV4B4nnv2sn
         18R6zIMaNSdEIXNNOHeHNOCCBIVDC7G9hLJYs7LnEMdoQyasFqAbnji12iOScg2VfEOO
         2hc9i0L4mleCbQ5WmKuiMn4cU+rKPe3kLjr3gjUpmxav31FulIS1g476i9qiF8BdZ9Ma
         SfHP8ZQJE4aAmSe2/twW3f576qVqBOxOR79TJxL+ErIghBsH1JisYBkLL+6O4oR9EvYk
         3B1frSTNvkDW5tghyr5+pE+Fj7x/3hFfDYCQ9IDlngbqtWN16HKfg+CDk11Ob2/gNNgH
         XlBg==
X-Gm-Message-State: AOJu0YxQrVHTXX2eZ+Shcm/6WHAzG4rwSG7WU8AvAY2PPMb/uXdy8afa
	JC+8UUDnfp1sRUohVJUgzA==
X-Google-Smtp-Source: AGHT+IHHkaSV0PLeGLYtGjjthyyJAnEZDrIREkjriPjfZBjDTW6VbnTr3UAM7Dj/3F63T9YuXxGXpg==
X-Received: by 2002:a17:906:5352:b0:a1f:9617:99a with SMTP id j18-20020a170906535200b00a1f9617099amr4768328ejo.94.1702744029988;
        Sat, 16 Dec 2023 08:27:09 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:09 -0800 (PST)
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
Subject: [PATCH v2 06/27] drm/rockchip: inno_hdmi: Switch encoder hooks to atomic
Date: Sat, 16 Dec 2023 17:26:17 +0100
Message-ID: <20231216162639.125215-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082712_859805_7490A455 
X-CRM114-Status: GOOD (  12.03  )
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
---
changes in v2:
 - imported patch

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
