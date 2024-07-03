Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03F88C2BD09
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jul 2024 23:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s4swSLd6NBV+gdUqzY4YixUfyAEdUnEN2pA8UOss9T0=; b=2prems7wYJk/0e
	U1gzSWq9+zvF4zyr026+k94qRTClww725JNCi9AdzeAZ7FzDnwBcCESKLOkW6Pn7IenYlmtedAsZw
	TZzsg5WTzHAKPBvqXrISw0FsZE688GhbBil60E9ZZAfyFTkdB6gmdfEu+xdnnqrvf7rCFCs+nBEHJ
	S5pIL0sU7Ufs0JolyYpq400ZQZ7lHdBWcNBOeynrRR2XC3KUazC+PJi+7ctr0b2iIIGHfqNzNrlNl
	K8hnhqNOZaXnlNReQKOEqkAyVoNxgYuzYznHf+cMRSHnl1sykjf+hCa7bum1hMd3zr0FabpYkN97I
	eF5CXkDGa7SKrvNKqP7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP9Sp-0000000Bjw8-0F2K;
	Wed, 03 Jul 2024 23:32:39 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP9Sa-0000000BjqW-1S2A;
	Wed, 03 Jul 2024 23:32:25 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720049542;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lZlEw+Fn9hl8WVVU5TGBdkPfXk1IUsyRsh6CxIbbcHo=;
	b=RFFHRHL/BIMNa+DJmfGc3RiA6ssbcnwsNILQ5RSm+yVVf+MIQc37InYfNhMEbA0Kwc/UJM
	Y4SzsE2LedBnsxnSsA1EIHLblLXP45j3Dfc+AebWa3PYWFu0YkbzdoP29WKobyieSTAmtL
	rllL+pjdULYQwPC+98TvkIgliMkqcr5zmCuXdtS90UCbdi7i1wNuiM+QzRHPOIxdY6sXeE
	My4UesB4b8ECB7zZ2xHw78T1UIWPiz+fBFGlEEJjZdpIKhypS7ZT+RnaeotvVwWy8PSSGM
	TqgmWqB12TqLdTLMq3OKOvQHSpBgSJhbOaeboYqWYBmrhl86dlCQBgk427Ds0A==
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Cc: heiko@sntech.de,
	hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: cdn-dp: Clean up a few logged messages
Date: Thu,  4 Jul 2024 01:32:20 +0200
Message-Id: <92db74a313547c087cc71059428698c4ec37a9ae.1720048818.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_163224_698739_90E0B012 
X-CRM114-Status: GOOD (  10.53  )
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

Clean up a few logged messages, which were previously worded as rather
incomplete sentences separated by periods.  This was both a bit unreadable
and grammatically incorrect, so convert them into partial sentences separated
(or connected) by semicolons, together with some wording improvements.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index bd7aa891b839..ee9def197095 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -969,46 +969,44 @@ static void cdn_dp_pd_event_work(struct work_struct *work)
 
 	/* Not connected, notify userspace to disable the block */
 	if (!cdn_dp_connected_port(dp)) {
-		DRM_DEV_INFO(dp->dev, "Not connected. Disabling cdn\n");
+		DRM_DEV_INFO(dp->dev, "Not connected; disabling cdn\n");
 		dp->connected = false;
 
 	/* Connected but not enabled, enable the block */
 	} else if (!dp->active) {
-		DRM_DEV_INFO(dp->dev, "Connected, not enabled. Enabling cdn\n");
+		DRM_DEV_INFO(dp->dev, "Connected, not enabled; enabling cdn\n");
 		ret = cdn_dp_enable(dp);
 		if (ret) {
-			DRM_DEV_ERROR(dp->dev, "Enable dp failed %d\n", ret);
+			DRM_DEV_ERROR(dp->dev, "Enabling dp failed: %d\n", ret);
 			dp->connected = false;
 		}
 
 	/* Enabled and connected to a dongle without a sink, notify userspace */
 	} else if (!cdn_dp_check_sink_connection(dp)) {
-		DRM_DEV_INFO(dp->dev, "Connected without sink. Assert hpd\n");
+		DRM_DEV_INFO(dp->dev, "Connected without sink; assert hpd\n");
 		dp->connected = false;
 
 	/* Enabled and connected with a sink, re-train if requested */
 	} else if (!cdn_dp_check_link_status(dp)) {
 		unsigned int rate = dp->max_rate;
 		unsigned int lanes = dp->max_lanes;
 		struct drm_display_mode *mode = &dp->mode;
 
-		DRM_DEV_INFO(dp->dev, "Connected with sink. Re-train link\n");
+		DRM_DEV_INFO(dp->dev, "Connected with sink; re-train link\n");
 		ret = cdn_dp_train_link(dp);
 		if (ret) {
 			dp->connected = false;
-			DRM_DEV_ERROR(dp->dev, "Train link failed %d\n", ret);
+			DRM_DEV_ERROR(dp->dev, "Training link failed: %d\n", ret);
 			goto out;
 		}
 
 		/* If training result is changed, update the video config */
 		if (mode->clock &&
 		    (rate != dp->max_rate || lanes != dp->max_lanes)) {
 			ret = cdn_dp_config_video(dp);
 			if (ret) {
 				dp->connected = false;
-				DRM_DEV_ERROR(dp->dev,
-					      "Failed to config video %d\n",
-					      ret);
+				DRM_DEV_ERROR(dp->dev, "Failed to configure video: %d\n", ret);
 			}
 		}
 	}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
