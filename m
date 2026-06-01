Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 993CBCD6E67
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 22:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNW8dF14PcB7YqB2vQItWPGGrUAF+IkgpnD78ii+EUY=; b=2YX50hZKCd+5tn
	eWVOvt2G9K7NEMzJ4rXonrYaQYH+24HG1G3/z4QUdBpWiLGSOPmblJHPcs9IuUexFaKNDm0ib8VZs
	jOyLrztAv+naoasEA+1tFYR29361OdVuUL9T6sbRBzzxS/dm71ducwi7MwoYlwKeB/uezEM6q6kS8
	5WSZVN2p9PUm3fqCwbKYch+IDWXLfqMTbDekBrqBeQIZyVwPd9ch03XaZ0+E9n6uLt8raRGOiXE1W
	waint9QVWMOimTzo7yVCQPcuyl5nCb7rZ2GhQQcN/r3qgzs77Ccmxf/gL5F0rRj941FGrndk+luck
	l3ppa6hh95Lm/kEzwmfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUBON-0000000BzO4-1qCI;
	Mon, 01 Jun 2026 22:45:55 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUBNw-0000000ByMM-3zGT;
	Mon, 01 Jun 2026 22:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780353927;
	bh=EOy1hBtmV/oLRhDhHglDR1BtGwYAUjW4vfi4FuA2Xr8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=M0ZqzIgj4WCm7FRTKUrerbJ2UAwMqUVL77prB+lCynle8tGQ31UlKLIx/nQdgkjhv
	 5tj8y8o5M101KCDLgvxGoE5cDSAlb9ibt8Y24h0JDrC0iPDzKvLJOL7xZ4pmholeww
	 0QYG7yTWWyIn2dJEAp+ivWjb8qCNuVNeoG3XlbdxCS8DswdNmegJMIKa6ZXkpK257K
	 C1F1aLvtnnSpqLqptJH6mf74DxoN6EOO5ICKkmr65X5kO5dnLReweRr4F2aT/4KxO2
	 8jJfGIGR2f+h18cQsgU0Nh3lNd8/q6jdQmNBaAzItbuLkpGEAL1ARXtr5V1o34HZ67
	 IX+dgRhbwbyMw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DFADF17E0A6C;
	Tue,  2 Jun 2026 00:45:26 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 02 Jun 2026 01:44:22 +0300
Subject: [PATCH v7 22/30] drm/rockchip: dw_hdmi_qp: Switch to
 dw_hdmi_qp_hpd_notify()
MIME-Version: 1.0
Message-Id: <20260602-dw-hdmi-qp-scramb-v7-22-445eb54ee1ed@collabora.com>
References: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
In-Reply-To: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Daniel Stone <daniels@collabora.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_154529_186613_E7DD070A 
X-CRM114-Status: GOOD (  11.55  )
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

Switch from drm_helper_hpd_irq_event(), which polls all connectors, to
the recently introduced dw_hdmi_qp_hpd_notify() helper, which runs the
detect cycle only on the affected connector.

This avoids unnecessary work and redundant detect calls on unrelated
connectors.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index b9e0ea56efd8..666631fc9162 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -23,7 +23,6 @@
 #include <drm/drm_bridge_connector.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
-#include <drm/drm_probe_helper.h>
 
 #include "rockchip_drm_drv.h"
 
@@ -273,14 +272,8 @@ static void dw_hdmi_qp_rk3588_hpd_work(struct work_struct *work)
 	struct rockchip_hdmi_qp *hdmi = container_of(work,
 						     struct rockchip_hdmi_qp,
 						     hpd_work.work);
-	struct drm_device *drm = hdmi->encoder.encoder.dev;
-	bool changed;
 
-	if (drm) {
-		changed = drm_helper_hpd_irq_event(drm);
-		if (changed)
-			dev_dbg(hdmi->dev, "connector status changed\n");
-	}
+	dw_hdmi_qp_hpd_notify(hdmi->hdmi);
 }
 
 static irqreturn_t dw_hdmi_qp_rk3576_hardirq(int irq, void *dev_id)
@@ -645,8 +638,7 @@ static int __maybe_unused dw_hdmi_qp_rockchip_resume(struct device *dev)
 
 	dw_hdmi_qp_resume(dev, hdmi->hdmi);
 
-	if (hdmi->encoder.encoder.dev)
-		drm_helper_hpd_irq_event(hdmi->encoder.encoder.dev);
+	dw_hdmi_qp_hpd_notify(hdmi->hdmi);
 
 	return 0;
 }

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
