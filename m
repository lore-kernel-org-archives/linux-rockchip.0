Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56881C25B5C
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utubCtHAKRqQY1EVcXR1nTlIMrM1A0wUjkvXMF4b+NA=; b=UDJ9P7u/vRxhBL
	ljzIgU+SvC4w2L/hU+N8grjZjNkCGz511cggaUBb2xmMHw5K+orZHwQWqUqxzqRz8ld3Kys6AUIDt
	sRuTEYWxioL58OsaTnBXs4rHlVgipw+SZDNy+5gw2Tuy3AzdRWNn5Sne2etBTWeAb9ba8xAX0wL71
	rL3Y/tODYwxTzOE+40Ll8ZFazKnHbqpmc3oouBMZKJ4ndOZXtdPgbOozCHFveRdkenmROkJm9mqoC
	nBvgBA6UFzgN/epxOO66iV0iRqzVJ/5zuboi0MK+cE6Clr7IsbINLBCCVJGejPu0mWqBCynlqfZZN
	c8W0tJoiZrc6FLj7xsUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaW-0000000GzTj-1IA4;
	Fri, 03 May 2024 15:12:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uZx-0000000GyyU-0Wvp
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:12:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZR-0004C0-K6; Fri, 03 May 2024 17:11:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZN-00FjHY-Qs; Fri, 03 May 2024 17:11:29 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	kernel@pengutronix.de,
	patchwork-lst@pengutronix.de
Subject: [PATCH 05/14] drm/bridge: analogix_dp: remove unused analogix_dp_remove
Date: Fri,  3 May 2024 17:11:20 +0200
Message-Id: <20240503151129.3901815-6-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_081205_261609_59A8C99A 
X-CRM114-Status: GOOD (  12.88  )
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

Now that the clock is handled dynamically through
analogix_dp_resume/suspend and it isn't statically enabled in the
driver probe routine, there is no need for the remove function anymore.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 5 -----
 drivers/gpu/drm/exynos/exynos_dp.c                 | 3 ---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    | 9 +--------
 include/drm/bridge/analogix_dp.h                   | 1 -
 4 files changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 9e3308257586..9f1dfa6f2175 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1813,11 +1813,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
 }
 EXPORT_SYMBOL_GPL(analogix_dp_unbind);
 
-void analogix_dp_remove(struct analogix_dp_device *dp)
-{
-}
-EXPORT_SYMBOL_GPL(analogix_dp_remove);
-
 int analogix_dp_start_crc(struct drm_connector *connector)
 {
 	struct analogix_dp_device *dp = to_dp(connector);
diff --git a/drivers/gpu/drm/exynos/exynos_dp.c b/drivers/gpu/drm/exynos/exynos_dp.c
index 30c8750187ad..097f8c4617de 100644
--- a/drivers/gpu/drm/exynos/exynos_dp.c
+++ b/drivers/gpu/drm/exynos/exynos_dp.c
@@ -251,10 +251,7 @@ static int exynos_dp_probe(struct platform_device *pdev)
 
 static void exynos_dp_remove(struct platform_device *pdev)
 {
-	struct exynos_dp_device *dp = platform_get_drvdata(pdev);
-
 	component_del(&pdev->dev, &exynos_dp_ops);
-	analogix_dp_remove(dp->adp);
 }
 
 static int exynos_dp_suspend(struct device *dev)
diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 8214265f1497..362c7951ca4a 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -414,21 +414,14 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 
 	ret = component_add(dev, &rockchip_dp_component_ops);
 	if (ret)
-		goto err_dp_remove;
+		return ret;
 
 	return 0;
-
-err_dp_remove:
-	analogix_dp_remove(dp->adp);
-	return ret;
 }
 
 static void rockchip_dp_remove(struct platform_device *pdev)
 {
-	struct rockchip_dp_device *dp = platform_get_drvdata(pdev);
-
 	component_del(&pdev->dev, &rockchip_dp_component_ops);
-	analogix_dp_remove(dp->adp);
 }
 
 static int rockchip_dp_suspend(struct device *dev)
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 8709b6a74c0f..6002c5666031 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -44,7 +44,6 @@ struct analogix_dp_device *
 analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data);
 int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev);
 void analogix_dp_unbind(struct analogix_dp_device *dp);
-void analogix_dp_remove(struct analogix_dp_device *dp);
 
 int analogix_dp_start_crc(struct drm_connector *connector);
 int analogix_dp_stop_crc(struct drm_connector *connector);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
