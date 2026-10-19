Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2325CCF2DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 08:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3S/sDRrJ0TXSk62DVr19iLI9DDtFJAG+0s08JOE7MQ=; b=1lNlBx6+Qqdz+n
	ctyFdNuamLF5XQ2QB959Q8cqD4LQwzu+4iQk6iSivSOcMNiEZBcs8oRtYLuhEeoh7t04I3oFInjZ4
	Z17/J5pb4jAhJxvT1nKD4+dl7Z3iJX2XjeiDuL9JvcBymfcidVrVoI2Rp0qx7u1Ie71dWlxkxl8bk
	5G4QllBnF/wCIdrCKiGvKhoaHNQ4WTLFIi6P7wDrzGkBqNYGKGpE2mpRKc9tIbM5rKo5dWnPyuaRP
	/rBUCihoSC3L1p/2u6iq8W40t0GymbApKIiBXYMqe3tGhy8xxomi4qSKowF4CWqNNaJVoUQx1O1+c
	h8RTOlsKI6MJjGSPM6mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjDL-00000006vUb-2ylr;
	Mon, 19 Oct 2026 08:59:27 +0000
Received: from mail-m121163.qiye.163.com ([115.236.121.163])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjD9-00000006vEz-0eXY;
	Mon, 19 Oct 2026 08:59:16 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5189b85d8;
	Mon, 19 Oct 2026 16:59:02 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Jingoo Han <jingoohan1@gmail.com>,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>,
	Sashiko <sashiko-bot@kernel.org>
Subject: [PATCH v4 02/14] drm/bridge: analogix_dp: Check all negative return values for &analogix_dp_device.irq
Date: Mon, 19 Oct 2026 16:58:24 +0800
Message-Id: <20261019085836.3065008-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261019085836.3065008-1-damon.ding@rock-chips.com>
References: <20261019085836.3065008-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0aa15362be5603a8kunm6ee755052eabf8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDGRkfVk1LGR0aGkMeTRhOQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	JDQkpVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=Rgy38Rxe8sSFyv4DxSF44Xrg5Put/bFOTb3fjWhyx4t/yDf3yZ1Z0EcICad4s07iVbPq+qxwT0hWkzLwNPEXmbMADS05EMN++q/d0YMesgXwQq23s3Jz3kiQf0iUQ4/jTRGiufyD5VMPbSWM4tEwKVH1ZYvHqNvfKly7nbG5DEg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=nLsz7932z7XAKnP+Q9VfpNYxFLgSWJSn220mna7ZMLI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_015915_408713_11692A0A 
X-CRM114-Status: GOOD (  10.88  )
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

Currently only -ENXIO is checked for dp->irq from gpiod_to_irq(),
which ignores other possible error codes like -EPROBE_DEFER, -ENOENT.

Check for any negative value instead, and propagate the actual error
code rather than hardcoding -ENODEV.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Link: https://lore.kernel.org/all/20260804083307.84ECA1F000E9@smtp.kernel.org/
Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Add Tested-by tag.
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 079f2f01f33b..27c9a764e25f 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1480,9 +1480,9 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 		irq_flags = IRQF_NO_AUTOEN;
 	}
 
-	if (dp->irq == -ENXIO) {
+	if (dp->irq < 0) {
 		dev_err(&pdev->dev, "failed to get irq\n");
-		return ERR_PTR(-ENODEV);
+		return ERR_PTR(dp->irq);
 	}
 
 	ret = devm_request_threaded_irq(&pdev->dev, dp->irq,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
