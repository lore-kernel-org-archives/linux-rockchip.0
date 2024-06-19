Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97287C2BB85
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 18:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OOAcY/mXNm7DoD/rf35Uq2ZpNhF3hc9qFMNa9kqg5TM=; b=upZkj4rBtlMcxI
	oNMekIK8+0zgGlbf05TVt/rnQm0Urz20SLHAShWXsn7tdhQdFwflRI9Sr802cf8nrZTSwy+1+K1fd
	0SfS9D0Ee+jN4CVpwoXAMg6/kadIRkxftraLuUu9VUIR3aN274yYqjafQ4bcWAhgEP11jva9aL6U9
	CiZtvR1ekikBaBRrU27iVX5ZmAmSmPFgJmKTn155hLnp56OST6BTdlDJeGDqzM3Tn0Qj/TH/lc3vO
	8QAayC7Ax7NfwwFQ6y0NiNeY/ojMF3eNm7esqp+pd7ElgtyAAuK2SbXzmC9AUOgIlKkfYQLutH3gL
	+JawiLCK5BO1K2h+v9Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzxk-00000002MDL-39Cd;
	Wed, 19 Jun 2024 18:23:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzwm-00000002LhF-3pSQ
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 18:22:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sJzwX-00049Y-K2; Wed, 19 Jun 2024 20:22:01 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sJzwW-003WTo-83; Wed, 19 Jun 2024 20:22:00 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Robert Foss <rfoss@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	patchwork-lst@pengutronix.de,
	kernel@pengutronix.de
Subject: [PATCH v2 01/14] drm/bridge: analogix_dp: remove unused platform power_on_end callback
Date: Wed, 19 Jun 2024 20:21:47 +0200
Message-Id: <20240619182200.3752465-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_112217_118648_DCCFDF68 
X-CRM114-Status: GOOD (  13.07  )
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

This isn't used, but gives the impression of the power on and power off
platform calls being non-symmetrical. Remove the unused callback and
rename the power_on_start to simply power_on.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Robert Foss <rfoss@kernel.org>
Tested-by: Heiko Stuebner <heiko@sntech.de> (rk3288-veyron and rk3399-gru)
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 7 ++-----
 drivers/gpu/drm/exynos/exynos_dp.c                 | 2 +-
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    | 4 ++--
 include/drm/bridge/analogix_dp.h                   | 3 +--
 4 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index b5dbff21c187..31fa67d966c7 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1257,8 +1257,8 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 		goto out_dp_clk_pre;
 	}
 
-	if (dp->plat_data->power_on_start)
-		dp->plat_data->power_on_start(dp->plat_data);
+	if (dp->plat_data->power_on)
+		dp->plat_data->power_on(dp->plat_data);
 
 	phy_power_on(dp->phy);
 
@@ -1283,9 +1283,6 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 		goto out_dp_init;
 	}
 
-	if (dp->plat_data->power_on_end)
-		dp->plat_data->power_on_end(dp->plat_data);
-
 	enable_irq(dp->irq);
 	return 0;
 
diff --git a/drivers/gpu/drm/exynos/exynos_dp.c b/drivers/gpu/drm/exynos/exynos_dp.c
index 3e6d4c6aa877..8ad2ec5c6455 100644
--- a/drivers/gpu/drm/exynos/exynos_dp.c
+++ b/drivers/gpu/drm/exynos/exynos_dp.c
@@ -233,7 +233,7 @@ static int exynos_dp_probe(struct platform_device *pdev)
 	/* The remote port can be either a panel or a bridge */
 	dp->plat_data.panel = panel;
 	dp->plat_data.dev_type = EXYNOS_DP;
-	dp->plat_data.power_on_start = exynos_dp_poweron;
+	dp->plat_data.power_on = exynos_dp_poweron;
 	dp->plat_data.power_off = exynos_dp_poweroff;
 	dp->plat_data.attach = exynos_dp_bridge_attach;
 	dp->plat_data.get_modes = exynos_dp_get_modes;
diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 7069a3d4d581..baeb41875a4b 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -92,7 +92,7 @@ static int rockchip_dp_pre_init(struct rockchip_dp_device *dp)
 	return 0;
 }
 
-static int rockchip_dp_poweron_start(struct analogix_dp_plat_data *plat_data)
+static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
 {
 	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
 	int ret;
@@ -397,7 +397,7 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 	dp->data = dp_data;
 	dp->plat_data.panel = panel;
 	dp->plat_data.dev_type = dp->data->chip_type;
-	dp->plat_data.power_on_start = rockchip_dp_poweron_start;
+	dp->plat_data.power_on = rockchip_dp_poweron;
 	dp->plat_data.power_off = rockchip_dp_powerdown;
 	dp->plat_data.get_modes = rockchip_dp_get_modes;
 
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index b0dcc07334a1..8709b6a74c0f 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -29,8 +29,7 @@ struct analogix_dp_plat_data {
 	struct drm_connector *connector;
 	bool skip_connector;
 
-	int (*power_on_start)(struct analogix_dp_plat_data *);
-	int (*power_on_end)(struct analogix_dp_plat_data *);
+	int (*power_on)(struct analogix_dp_plat_data *);
 	int (*power_off)(struct analogix_dp_plat_data *);
 	int (*attach)(struct analogix_dp_plat_data *, struct drm_bridge *,
 		      struct drm_connector *);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
