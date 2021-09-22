Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F00EBC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 20:18:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B36BA60F13
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 20:18:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B36BA60F13
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9GofFR7qMUb+qURjXLUIBfm2QWDz/6BPQTQyEVLyiAg=; b=ZjR8dGSWt0Frsu
	dwOtuOxK6Ovn7lYUnlXPtPFKeH6TIecOKMHeSz8DGmnugJAEHselDnSm5WUBB+4NIy0kyKjdY976l
	VnJvCyKGv3iK1EHztpneUk8SdhNCxa1GNIV5+qc8O0SZLtXbLNlE8zNK4HAjothyyB/2v7v8xwR6L
	QfrG4FiK4g4lSLQoz5W8oP5gYTz+5VmNI3kI1HVL3HcuZjvyCRJXdRkJv9Jidvq4KOj6chU+0+Qrj
	0f4mYfPHF92C2U0qsilplz3W+9xucfAPXW5OfO+LXoBvkryLQUEnwax/lb79nmGRaiwKnDJNrR2IR
	xutG1zkshEHhnVe3UpxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT8hY-009agI-AI; Wed, 22 Sep 2021 20:18:44 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT8hL-009aeS-OD; Wed, 22 Sep 2021 20:18:33 +0000
Received: by mail-wr1-x42c.google.com with SMTP id g16so10537484wrb.3;
 Wed, 22 Sep 2021 13:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QCvTvkJUQlqkrEgBfGXbFyfCutXgnQcemIuNKLehIWY=;
 b=nkyrvfcPPhzu6NsTLf6nC9ipcld/bGYA1rhaaKHiAyGOenjoYmGFDHOuo06uhvXXg+
 hNm3/sc5CqXW/twKbz8vc8z2+TUagU/m/lervdQJy3iacEH8Ddq8dCarwq+V3mnpZu0a
 QU86UoRcEeqZuZbyU2bh3lmF3YQFGzpZKY5uSHIC+S6uzQeJtUq/tjh7q18ahUkRucOz
 nPieQdBC8QWykUaAOKTzUMqM7J083M4O/2kQDBKGnsIlxotVzFrB5Z4ND3PAUsM9NJQY
 dPxmvaZk+rpAu5LrAdUgqQnZ5bv0YlKCSi9GlRLw+TWQJFXM4Ts9osta/7S5idxr1pBL
 39JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QCvTvkJUQlqkrEgBfGXbFyfCutXgnQcemIuNKLehIWY=;
 b=sU54Jc8L2/j2Sc7N6sb45KoarJmFp0zoh7gLz/cP0tTFw+fateP+MOxxhvh9FPxE9m
 8wjF6xhTbpvM9WetXVgp3DQiwa1SP1sFSZIRdB8RWg/Lxn+gE1QSBzhkvrat597VxWHR
 mqu3z1pyeGbrhNg6n80FctoAb1MJ5BgnNJ7+mZnqigVqWvqSoJlKAUSwYX28ciRnWbjn
 yTgtet1CiD7LwCoMMq9khZ0yaUOuWl7rpxDrfNFdzETd6VWJ1KtY8eAmI1eHUjI9uZqH
 tAt5xm4e+DvARA2IaU5IHQhEVJffFsLBM6F32ZoaeXiJOGkXJGg1CwSM0ZIWPxTi0Xgf
 KKbQ==
X-Gm-Message-State: AOAM532OxPq2gWu+sJE59nFu2TSAgresC60l+OBPvzMf5TMEWZTHpQ+k
 guYFJBeWRRpTlPmclbh/AQ==
X-Google-Smtp-Source: ABdhPJypIchsBJzI6Lxf0kWAKhQx89UYepmgXRdZtW4mKvLSeVWLGLRt3qS3redFXcNxxjVK0n+NTA==
X-Received: by 2002:adf:e684:: with SMTP id r4mr931057wrm.229.1632341908964;
 Wed, 22 Sep 2021 13:18:28 -0700 (PDT)
Received: from alex-ThinkPad-E480.. (ip5b434083.dynamic.kabel-deutschland.de.
 [91.67.64.131])
 by smtp.googlemail.com with ESMTPSA id v8sm3147188wrt.12.2021.09.22.13.18.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 13:18:28 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>, Colin Ian King <colin.king@canonical.com>
Subject: [PATCH] drm/rockchip: rgb: make connector a pointer in struct
 rockchip_rgb
Date: Wed, 22 Sep 2021 22:17:58 +0200
Message-Id: <20210922201758.7204-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_131831_837261_82CC61E0 
X-CRM114-Status: GOOD (  13.49  )
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

As reported at [1] Coverity complains about an used value.

Let's make drm_connector a pointer in struct rockchip_rgb and "remove
redundant assignment of pointer connector".

[1] https://lkml.org/lkml/2021/9/22/432

Fixes: 2e87bf389e13 ("drm/rockchip: add DRM_BRIDGE_ATTACH_NO_CONNECTOR flag to drm_bridge_attach")
Addresses-Coverity: ("Unused value")
Reported-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_rgb.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index 09be9678f2bd..fe932c26c3e0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -28,7 +28,7 @@ struct rockchip_rgb {
 	struct drm_device *drm_dev;
 	struct drm_bridge *bridge;
 	struct drm_encoder encoder;
-	struct drm_connector connector;
+	struct drm_connector *connector;
 	int output_mode;
 };
 
@@ -82,7 +82,6 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 	int ret = 0, child_count = 0;
 	struct drm_panel *panel;
 	struct drm_bridge *bridge;
-	struct drm_connector *connector;
 
 	rgb = devm_kzalloc(dev, sizeof(*rgb), GFP_KERNEL);
 	if (!rgb)
@@ -150,17 +149,16 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 	if (ret)
 		goto err_free_encoder;
 
-	connector = &rgb->connector;
-	connector = drm_bridge_connector_init(rgb->drm_dev, encoder);
-	if (IS_ERR(connector)) {
+	rgb->connector = drm_bridge_connector_init(rgb->drm_dev, encoder);
+	if (IS_ERR(rgb->connector)) {
 		DRM_DEV_ERROR(drm_dev->dev,
 			      "failed to initialize bridge connector: %pe\n",
-			      connector);
-		ret = PTR_ERR(connector);
+			      rgb->connector);
+		ret = PTR_ERR(rgb->connector);
 		goto err_free_encoder;
 	}
 
-	ret = drm_connector_attach_encoder(connector, encoder);
+	ret = drm_connector_attach_encoder(rgb->connector, encoder);
 	if (ret < 0) {
 		DRM_DEV_ERROR(drm_dev->dev,
 			      "failed to attach encoder: %d\n", ret);
@@ -170,7 +168,7 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 	return rgb;
 
 err_free_connector:
-	drm_connector_cleanup(connector);
+	drm_connector_cleanup(rgb->connector);
 err_free_encoder:
 	drm_encoder_cleanup(encoder);
 	return ERR_PTR(ret);
@@ -180,7 +178,7 @@ EXPORT_SYMBOL_GPL(rockchip_rgb_init);
 void rockchip_rgb_fini(struct rockchip_rgb *rgb)
 {
 	drm_panel_bridge_remove(rgb->bridge);
-	drm_connector_cleanup(&rgb->connector);
+	drm_connector_cleanup(rgb->connector);
 	drm_encoder_cleanup(&rgb->encoder);
 }
 EXPORT_SYMBOL_GPL(rockchip_rgb_fini);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
