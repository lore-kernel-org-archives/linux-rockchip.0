Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79151C197A0
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 14:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kD2Q9M5bBxP003bKUfKU3PF6RtNny7kYnlKzB7XcGFE=; b=4bKjjes8firaSz
	TkEtBJH3plU6NItYDFlwY+ZdVqmRQHOwUoGcPYvE4TACp9DZi99aYQo+PNs1mKF4J0VUr+axLhY9f
	WB2LrLHZhIJWwP4EXMmX1HYpoQDWg7fibrmW/uYJYZoUxOvekeAJLNtw1aogLLwpQ2ek3U8H2dHmo
	6yRgD0felmuHOzGtpTXL2Ea75rwbhSJpDXzOYn70/o73lYHGZ70pUsNesLcNOynh8ddmdR4ghEs+g
	UtdRWKnuykpdcPU9I8xAHWPCJ4b/fa78tN6m7hkPgL5VS5mP8+bWST4ojt7t8rqwG8lHAdyaBIUjw
	IBFUBma9xvAtsRFHk2kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3zhO-006itk-1o;
	Fri, 17 Nov 2023 14:19:58 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3zhL-006is2-0i;
	Fri, 17 Nov 2023 14:19:56 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 68975FF811;
	Fri, 17 Nov 2023 14:19:45 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: Sandy Huang <hjc@rock-chips.com>,
	=?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Mark Yao <markyao0591@gmail.com>
Cc: Quentin Schulz <foss+kernel@0leil.net>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH] drm/rockchip: lvds: do not print error message when
  deferring probe
Date: Fri, 17 Nov 2023 15:19:32 +0100
Message-ID: <20231117-rk-lvds-defer-msg-v1-1-1e6894cf9a74@theobroma-systems.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Mailer: b4 0.12.4
X-GND-Sasl: foss@0leil.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_061955_417659_D2B3AF52 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

This scary message may happen if the panel or bridge is not probed
before the LVDS controller is, resulting in some head scratching because
the LVDS panel is actually working, since a later try will eventually
find the panel or bridge.

Therefore let's demote this error message into a debug message to not
scare users unnecessarily.

Fixes: 34cc0aa25456 ("drm/rockchip: Add support for Rockchip Soc LVDS")
Cc: Quentin Schulz <foss+kernel@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index f0f47e9abf5a..52e2ce2a61a8 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -577,7 +577,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		ret = -EINVAL;
 		goto err_put_port;
 	} else if (ret) {
-		DRM_DEV_ERROR(dev, "failed to find panel and bridge node\n");
+		DRM_DEV_DEBUG(dev, "failed to find panel and bridge node\n");
 		ret = -EPROBE_DEFER;
 		goto err_put_port;
 	}

---
base-commit: 7475e51b87969e01a6812eac713a1c8310372e8a
change-id: 20231117-rk-lvds-defer-msg-b2944b73d791

Best regards,
-- 
Quentin Schulz <quentin.schulz@theobroma-systems.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
