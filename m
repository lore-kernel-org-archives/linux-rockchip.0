Return-Path: <SRS0=UDy9=OD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FA99C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 12:51:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 01FED60F5B
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Sep 2021 12:51:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 01FED60F5B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UxiUhuBDtdO4fIrdQGOd0/kW2XIAWYVHQ16FLWYNHbY=; b=G+Ls6/9wK3dneF
	TDcqgWtYvdT/rmzVYNJG4M5QAYlPmKs5Jhn6hD4YGl1TvrpYjyJ3b1EslSGnUOMOQ1t3Fgln4VEcO
	HzCOX281R/wMv8EBkMOH6G3Er/Ht7wCuYeVMB5u5Aml+86n99CeAdOpK2ajyr2opRQZ9wMk8deqqO
	b248UEk396no79VKFqIaDr9/OOPF/6xP92SmPO61254IqMpda3r1Q9Poz+GzILx/cj0KKPKJiydld
	WpbPdqseYWuSjvQTqFKGX7RXg2L9F6JR8dETtQeIIaG2M2lk7kER5QWSzIkZ1MDecnijsDMxVN3P/
	UeA5vZo0AHiiimyjCF1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPlQu-001ez6-8X; Mon, 13 Sep 2021 12:51:36 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPlQg-001ewe-81; Mon, 13 Sep 2021 12:51:23 +0000
Received: by mail-wr1-x429.google.com with SMTP id m9so14543502wrb.1;
 Mon, 13 Sep 2021 05:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wwDbi/F1yzMdGSzPisZP/TR90sy0EJXO0nvDjAz0B6Y=;
 b=g54zQBkc0ygeJjGKY66WSYgOIek2MabARkvMCD1ydHRDdOGI/mNWhtuw+gDwTIko3u
 cpwhkBQVQTdXSbP7AbFq5czpikXB753YMjlYptR3gO1OBxWUCCP7YmJhDFVDYMEl6q4n
 Fb1ympWZ/lpRtSW3VeLnQanKpUmB+bWAo3kBrUbA9qkLo4Uv9+cBFemBYpBpqK1trrC1
 oq/U6gTRy08r9KpatwSWdunihSZ4AjjLfG6qDIp8NZxFiYDET/Mt0vw4d3r/Jm+A44zT
 s1Hd5JH4Bx2peeDA6Par1SxtEyx85JkR9mmtoofiAXWxPMir6cdYHsudVZ9Bf42RgAO+
 AXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wwDbi/F1yzMdGSzPisZP/TR90sy0EJXO0nvDjAz0B6Y=;
 b=ySJYTKbAUdPT5JcYknguuuVpO3TVQLiNhiUZK4aQBDYJkR9VQcbEG82IluNP44oNfn
 RuFM46q6bP/DkdMc3jNNO4pAOVnrsrsgbSwPSe96YI7ixrUklvSHkXNXcLtmKt9nZwmk
 7wYpXiXTc/whixuJ6m9K+4eM4pNFRED6awfznNe+ETr90Sml26RbJd5vNTygZ2cgXz+T
 fRrj3RRyKgMDScrnUQyAdSsVe+KwJqGvcU2Oqjeh9/knQX8NfjF9ZudpF7LhnFV+fE6+
 DwbQY4iHXt0943zWdnLrxWFxF29YczrpJNUMtlNoRBFAnmt0BncNZjSor7WUM7xHmR8L
 qplw==
X-Gm-Message-State: AOAM532y58pRrdSPL2CiN5h/hn3vSA5/n3wxRlCXs+l/i2opRnc8KAuk
 0HjdUO/XIU2X+WNJSspp9A==
X-Google-Smtp-Source: ABdhPJxFg1Ha29Hbrj6P2UIpbQU+Lx2FIHYuJ78y+Zmnk3GykAhjnp18N9z3JGThly10GgNq25I4KA==
X-Received: by 2002:a5d:6b07:: with SMTP id v7mr8901817wrw.250.1631537479663; 
 Mon, 13 Sep 2021 05:51:19 -0700 (PDT)
Received: from alex-ThinkPad-E480.. ([2a02:810b:f40:4200:cd7c:5225:d3bf:f045])
 by smtp.googlemail.com with ESMTPSA id
 x21sm7145287wmc.14.2021.09.13.05.51.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 05:51:19 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] drm/rockchip: add DRM_BRIDGE_ATTACH_NO_CONNECTOR flag to
 drm_bridge_attach
Date: Mon, 13 Sep 2021 14:51:08 +0200
Message-Id: <20210913125108.195704-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_055122_347459_756EF06D 
X-CRM114-Status: GOOD (  17.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Commit a25b988ff83f ("drm/bridge: Extend bridge API to disable connector creation")
added DRM_BRIDGE_ATTACH_NO_CONNECTOR bridge flag and all bridges handle
this flag in some way since then.
Newly added bridge drivers must no longer contain the connector creation and
will fail probing if this flag isn't set.

In order to be able to connect to those newly added bridges as well,
make use of drm_bridge_connector API and have the connector initialized
by the display controller.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 29 ++++++++++++++++--------
 drivers/gpu/drm/rockchip/rockchip_rgb.c  | 26 ++++++++++++++++++++-
 2 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 551653940e39..e3953c72fbdb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -19,6 +19,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_bridge_connector.h>
 #include <drm/drm_dp_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
@@ -612,9 +613,9 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 	}
 
 	drm_encoder_helper_add(encoder, lvds->soc_data->helper_funcs);
+	connector = &lvds->connector;
 
 	if (lvds->panel) {
-		connector = &lvds->connector;
 		connector->dpms = DRM_MODE_DPMS_OFF;
 		ret = drm_connector_init(drm_dev, connector,
 					 &rockchip_lvds_connector_funcs,
@@ -627,17 +628,27 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 
 		drm_connector_helper_add(connector,
 					 &rockchip_lvds_connector_helper_funcs);
-
-		ret = drm_connector_attach_encoder(connector, encoder);
-		if (ret < 0) {
-			DRM_DEV_ERROR(drm_dev->dev,
-				      "failed to attach encoder: %d\n", ret);
-			goto err_free_connector;
-		}
 	} else {
-		ret = drm_bridge_attach(encoder, lvds->bridge, NULL, 0);
+		ret = drm_bridge_attach(encoder, lvds->bridge, NULL,
+					DRM_BRIDGE_ATTACH_NO_CONNECTOR);
 		if (ret)
 			goto err_free_encoder;
+
+		connector = drm_bridge_connector_init(lvds->drm_dev, encoder);
+		if (IS_ERR(connector)) {
+			DRM_DEV_ERROR(drm_dev->dev,
+				      "failed to initialize bridge connector: %pe\n",
+				      connector);
+			ret = PTR_ERR(connector);
+			goto err_free_encoder;
+		}
+	}
+
+	ret = drm_connector_attach_encoder(connector, encoder);
+	if (ret < 0) {
+		DRM_DEV_ERROR(drm_dev->dev,
+			      "failed to attach encoder: %d\n", ret);
+		goto err_free_connector;
 	}
 
 	pm_runtime_enable(dev);
diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index d691d9bef8e7..09be9678f2bd 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -10,6 +10,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_bridge_connector.h>
 #include <drm/drm_dp_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
@@ -27,6 +28,7 @@ struct rockchip_rgb {
 	struct drm_device *drm_dev;
 	struct drm_bridge *bridge;
 	struct drm_encoder encoder;
+	struct drm_connector connector;
 	int output_mode;
 };
 
@@ -80,6 +82,7 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 	int ret = 0, child_count = 0;
 	struct drm_panel *panel;
 	struct drm_bridge *bridge;
+	struct drm_connector *connector;
 
 	rgb = devm_kzalloc(dev, sizeof(*rgb), GFP_KERNEL);
 	if (!rgb)
@@ -142,12 +145,32 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 
 	rgb->bridge = bridge;
 
-	ret = drm_bridge_attach(encoder, rgb->bridge, NULL, 0);
+	ret = drm_bridge_attach(encoder, rgb->bridge, NULL,
+				DRM_BRIDGE_ATTACH_NO_CONNECTOR);
 	if (ret)
 		goto err_free_encoder;
 
+	connector = &rgb->connector;
+	connector = drm_bridge_connector_init(rgb->drm_dev, encoder);
+	if (IS_ERR(connector)) {
+		DRM_DEV_ERROR(drm_dev->dev,
+			      "failed to initialize bridge connector: %pe\n",
+			      connector);
+		ret = PTR_ERR(connector);
+		goto err_free_encoder;
+	}
+
+	ret = drm_connector_attach_encoder(connector, encoder);
+	if (ret < 0) {
+		DRM_DEV_ERROR(drm_dev->dev,
+			      "failed to attach encoder: %d\n", ret);
+		goto err_free_connector;
+	}
+
 	return rgb;
 
+err_free_connector:
+	drm_connector_cleanup(connector);
 err_free_encoder:
 	drm_encoder_cleanup(encoder);
 	return ERR_PTR(ret);
@@ -157,6 +180,7 @@ EXPORT_SYMBOL_GPL(rockchip_rgb_init);
 void rockchip_rgb_fini(struct rockchip_rgb *rgb)
 {
 	drm_panel_bridge_remove(rgb->bridge);
+	drm_connector_cleanup(&rgb->connector);
 	drm_encoder_cleanup(&rgb->encoder);
 }
 EXPORT_SYMBOL_GPL(rockchip_rgb_fini);

base-commit: 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
