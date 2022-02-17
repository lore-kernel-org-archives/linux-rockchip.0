Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FF61C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 22:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDxH1WWQUluBqirXZvtFdPABCVsVfCQsO6BRbn7IPgs=; b=KdnPff5pgHF8Wh
	j1qlyxQCIDSdOp7u3U722+haip1aWbv3jshBajdSMvbO/Ljpvw5r7trzQo21S2AMGxoCEUabUB23d
	foPJTGQBsXri/VTqRIFSm60OBZ08X7tMdna6jBuEe1YZFdtvgH0Llir7yu0YZ8l+/y6m9QJy+1DRM
	ejlX1Sp33ZhRtEhbFTpV1zxkLai+ELHOrZhsOsFdafNd3q5BggGl1mDadOvCxfleoddLMpNVIqvhb
	iVGwoiOJNsYfE/3SivPjvPn2gWWtzHuncH9j4G2EF4WfzRgsVovZ3kw/nR27vHZM9rcPU8f0XAIJb
	j4At7D/pAVFs45dldaQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKpTY-00CNiR-22; Thu, 17 Feb 2022 22:42:12 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKpTV-00CNgw-9L
 for linux-rockchip@lists.infradead.org; Thu, 17 Feb 2022 22:42:11 +0000
Received: by mail-pj1-x102d.google.com with SMTP id v4so6987946pjh.2
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Feb 2022 14:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5mmtHfGvX3QTdzLz6j/Nu6tjim8GE4bCKl/5zpm/NAQ=;
 b=BzfZpeq3rZdStoI1Wr0xcS8Cf55hQJ/D+7O5l60/MUPozDdqMR3PzVwSfYraa+nLNT
 NyD7gmG5bjFJAZvQjb+UrhHZ97vZIwQxC6do5y2+9SD9RrVdz/VEfZyfLpsRW5Svhs3y
 0aDXxqIAti6kqYHFQ6CBjV1g6soYBlxXwNrSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5mmtHfGvX3QTdzLz6j/Nu6tjim8GE4bCKl/5zpm/NAQ=;
 b=wQrUvn8RZw3f9BC6c+5D/uDdFb/GzLMm3iDmqKleHZqJx8hrp2LdnmAv+IfK81LCAC
 Of2NtO7zmN/txlOGbCt769nmZHNs11RiHZ1sgpsIqedCN8gp5bhoP8G9RobTbXsl8x+e
 +1KwXdgPz7GGOMGzCFRn16Neuf+KTBiT4h4L+yVgctrzwS8q8kcDEIVxy/zN01rldo9L
 t11ZNILiAOiQDjB1ou/oZ019Sgy6hmmueuRn06XVjUwkI7d+OTaIshNhGYLdWwlTJ4UN
 tyko15H7/h0X/5V5wAftl7BgfPVRF/RJoi5813UikGmhj/xI+kJnq/N0E4fNgg2zoyKI
 oOmA==
X-Gm-Message-State: AOAM531k/e9nvw1xQ3RsMSjE0T+RibFOwUq0nNI2LaLFZN4Pv6wduSiA
 Ol26s5zzwJNTIQloIfiODgqVfg==
X-Google-Smtp-Source: ABdhPJz3bf7M0OSxfziRldKe7HpMouFMO9Ur2/1DPJi+T1EoIE3EpMv4yzP/J7CTVuwGmI1BEieWyg==
X-Received: by 2002:a17:902:bd85:b0:14d:c29b:d534 with SMTP id
 q5-20020a170902bd8500b0014dc29bd534mr4651443pls.99.1645137728224; 
 Thu, 17 Feb 2022 14:42:08 -0800 (PST)
Received: from localhost ([2620:15c:202:201:677e:1914:4c14:1662])
 by smtp.gmail.com with UTF8SMTPSA id 4sm574985pfh.125.2022.02.17.14.42.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Feb 2022 14:42:07 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Doug Anderson <dianders@chromium.org>, Sean Paul <sean@poorly.run>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, dri-devel@lists.freedesktop.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 2/2] drm/bridge: analogix_dp: Enable autosuspend
Date: Thu, 17 Feb 2022 14:41:46 -0800
Message-Id: <20220217144136.v3.2.I48b18ab197c9b649d376cf8cfd934e59d338f86d@changeid>
X-Mailer: git-send-email 2.35.1.265.g69c8d7142f-goog
In-Reply-To: <20220217144136.v3.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
References: <20220217144136.v3.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_144209_346622_B1F5A6AB 
X-CRM114-Status: GOOD (  11.33  )
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

DP AUX transactions can consist of many short operations. There's no
need to power things up/down in short intervals.

I pick an arbitrary 100ms; for the systems I'm testing (Rockchip
RK3399), runtime-PM transitions only take a few microseconds.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v3:
 - New in v3

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 16be279aed2c..d82a4ddf44e7 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1121,7 +1121,7 @@ static int analogix_dp_get_modes(struct drm_connector *connector)
 
 		pm_runtime_get_sync(dp->dev);
 		edid = drm_get_edid(connector, &dp->aux.ddc);
-		pm_runtime_put(dp->dev);
+		pm_runtime_put_autosuspend(dp->dev);
 		if (edid) {
 			drm_connector_update_edid_property(&dp->connector,
 							   edid);
@@ -1642,7 +1642,7 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 
 	ret = analogix_dp_transfer(dp, msg);
 out:
-	pm_runtime_put(dp->dev);
+	pm_runtime_put_autosuspend(dp->dev);
 
 	return ret;
 }
@@ -1775,6 +1775,8 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 	if (ret)
 		return ret;
 
+	pm_runtime_use_autosuspend(dp->dev);
+	pm_runtime_set_autosuspend_delay(dp->dev, 100);
 	pm_runtime_enable(dp->dev);
 
 	ret = analogix_dp_create_bridge(drm_dev, dp);
-- 
2.35.1.265.g69c8d7142f-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
