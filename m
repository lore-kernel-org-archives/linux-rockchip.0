Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F05E4C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 22:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N/D98IOsE/7406fFah7jMc64uME3VBSClY3077L5I4U=; b=rWhO96nnZTyBLo
	3/JEbkbua6B+Qq3xOApCYfojqGZhsQiRfeU3u3FhCKo40K/rnO7TDLXx4xwSs+pM3k2/2s9ASJL2S
	J0qYHg2+7icYYoICe+fnbnFmpoaTWuXlgtus8ljzKsH+mU0WpiwIMMAk+vP7kXyX50zApUgx4gdwK
	6zAaYkExa3sTIV3WuibN70RtzSy/orT4z2XogucF4DgH9ds8IpdmksUDmFTS/QlNGvkTqTMxdj4AW
	UwncbSDnvI6J4RqNlXjpMC5rLY+r2xv8LXUzL1B0tvzc2w9jFVZR4N4r/CDihBkq+kGe4dRCWkKF+
	XSGiSpOJjoGYlJmvT4tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKpTW-00CNhn-HW; Thu, 17 Feb 2022 22:42:10 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKpTU-00CNgh-O0
 for linux-rockchip@lists.infradead.org; Thu, 17 Feb 2022 22:42:10 +0000
Received: by mail-pg1-x529.google.com with SMTP id 132so6239836pga.5
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Feb 2022 14:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/pFhxh4a1mIJWKVvwWf0TWI0PzyzDNvxgd8MaYxtB4g=;
 b=DRjZUlF38aKhKGF1HEEXpShz5dNW4rV1EZ3PJsdeXyBLxzGJJMj2+9g6pi+MiKGhYt
 H+9E29WZ8V4Np9zsahnlGJmkvOu6FMFXZxC9SU+qF5bJdkcsbldinSAPqonRI6Ftb1Dz
 YKCtyN3JvqpZZ/nc5796hnay3gO0nfEdVSefs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/pFhxh4a1mIJWKVvwWf0TWI0PzyzDNvxgd8MaYxtB4g=;
 b=NSt4OX8DAZf2jRRifjjUdTogTDYI08nYNgMaKCZ69r5fVq70N0JzakCB4tRsgcDae2
 BTGpkrQEzZBKk0WoG0SFcoTefZvT6d+0LQvynd/jP3I+5nbnR0DZa8N6rIYBicw7dLTh
 GXM17DT0Z1lS4DxqFgveX6a6aZmjrq+1gZJb2W4ooj5N72I7XsEW0dCY/WygY1vyl4T4
 KF95HIoiJxgrI9T/MVof3eX6ZsUbLqGJ298DS6gpdfmPKYCsdSzqggkMqhg0ANk9baRr
 V3T+7TrDnnovPpaJPtDWs6AiZT6WnfFaCObd45m+cTNLeiLm8q+63kjSZflSR4xV/7qe
 y90A==
X-Gm-Message-State: AOAM5325zCEEwx+0ao70Tmr588rb0QkKIAPXogCrCAr5Afrph4n012Vz
 O33rFK5HfH7zM6SD40fBrAR5bQ==
X-Google-Smtp-Source: ABdhPJx0I/9dms8bGvA0MQ9aczlCf/u6f2qI/Tw9lU7d6SMBvt5gmujVGb3LwnbbS//bPCI4KYGOjg==
X-Received: by 2002:aa7:83c2:0:b0:4e0:91c1:6795 with SMTP id
 j2-20020aa783c2000000b004e091c16795mr4885484pfn.54.1645137726160; 
 Thu, 17 Feb 2022 14:42:06 -0800 (PST)
Received: from localhost ([2620:15c:202:201:677e:1914:4c14:1662])
 by smtp.gmail.com with UTF8SMTPSA id u1sm628435pfg.151.2022.02.17.14.42.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Feb 2022 14:42:05 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Doug Anderson <dianders@chromium.org>, Sean Paul <sean@poorly.run>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, dri-devel@lists.freedesktop.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Brian Norris <briannorris@chromium.org>,
 stable@vger.kernel.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: [PATCH v3 1/2] drm/bridge: analogix_dp: Grab runtime PM reference for
 DP-AUX
Date: Thu, 17 Feb 2022 14:41:45 -0800
Message-Id: <20220217144136.v3.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
X-Mailer: git-send-email 2.35.1.265.g69c8d7142f-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_144208_788490_2E856039 
X-CRM114-Status: GOOD (  13.58  )
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

If the display is not enable()d, then we aren't holding a runtime PM
reference here. Thus, it's easy to accidentally cause a hang, if user
space is poking around at /dev/drm_dp_aux0 at the "wrong" time.

Let's get a runtime PM reference, and check that we "see" the panel.
Don't force any panel power-up, etc., because that can be intrusive, and
that's not what other drivers do (see
drivers/gpu/drm/bridge/ti-sn65dsi86.c and
drivers/gpu/drm/bridge/parade-ps8640.c.)

Fixes: 0d97ad03f422 ("drm/bridge: analogix_dp: Remove duplicated code")
Cc: <stable@vger.kernel.org>
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v3:
- Avoid panel power-up; just check for HPD state, and let the rest
  happen "as-is" (e.g., time out, if the caller hasn't prepared things
  properly)

Changes in v2:
- Fix spelling in Subject
- DRM_DEV_ERROR() -> drm_err()
- Propagate errors from un-analogix_dp_prepare_panel()

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index b7d2e4449cfa..16be279aed2c 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1632,8 +1632,19 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 				       struct drm_dp_aux_msg *msg)
 {
 	struct analogix_dp_device *dp = to_dp(aux);
+	int ret;
+
+	pm_runtime_get_sync(dp->dev);
+
+	ret = analogix_dp_detect_hpd(dp);
+	if (ret)
+		goto out;
 
-	return analogix_dp_transfer(dp, msg);
+	ret = analogix_dp_transfer(dp, msg);
+out:
+	pm_runtime_put(dp->dev);
+
+	return ret;
 }
 
 struct analogix_dp_device *
-- 
2.35.1.265.g69c8d7142f-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
