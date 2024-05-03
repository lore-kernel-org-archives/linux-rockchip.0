Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51DACC10F16
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmhrydVEYwgudhPsn2/W6GQ+jK6T0VSAF476idIo4xs=; b=YDtN40Z9m6w3pk
	Q6vfAm8v4+oyMKGGbeDCCZXeEYEZ8WQ0V087lGnVn9m/etpMcdQNs6pHFf7d4oSp6xAJfmR36ck17
	aidkG4HQaiaJ2HkUyn1ud5FEHhW9ki+dExnFLZGO5kExMvIy4Qksme0cdodWu6s1z8cMFxZFGAnYT
	lfizh5RVxotnR2nrmcBj48u54r2LjyiQPFWrJoHS/RjgJ/O5lAjz7U6NeyhLFRA2/cVUb6TPsYHCp
	rzSbBR6uAvHxcMBWEB0MfZiqsje40lF03eOhZKaRWM6eKVlM610xr8FkeWVcCNi3CezfTRPvf0fjS
	kffF0NbxZ0qB0iKj9VIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaE-0000000GzCu-3sh4;
	Fri, 03 May 2024 15:12:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uZx-0000000GyyW-0T3N
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:12:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZR-0004Cj-K8; Fri, 03 May 2024 17:11:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZO-00FjHY-0o; Fri, 03 May 2024 17:11:30 +0200
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
Subject: [PATCH 07/14] drm/bridge: analogix_dp: move platform and PHY power handling into runtime PM
Date: Fri,  3 May 2024 17:11:22 +0200
Message-Id: <20240503151129.3901815-8-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
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

Platform and PHY power isn't only required when the actual display data
stream is active, but may be required earlier to support AUX channel
transactions. Move them into the runtime PM calls, so they are properly
managed whenever various other parts of the driver need them to be active.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 23 ++++++++-----------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 311e1e67486d..3281c00a39cd 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1258,11 +1258,6 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 
 	pm_runtime_get_sync(dp->dev);
 
-	if (dp->plat_data->power_on)
-		dp->plat_data->power_on(dp->plat_data);
-
-	phy_power_on(dp->phy);
-
 	ret = analogix_dp_init_dp(dp);
 	if (ret)
 		goto out_dp_init;
@@ -1288,10 +1283,6 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 	return 0;
 
 out_dp_init:
-	phy_power_off(dp->phy);
-	if (dp->plat_data->power_off)
-		dp->plat_data->power_off(dp->plat_data);
-
 	pm_runtime_put_sync(dp->dev);
 
 	return ret;
@@ -1354,11 +1345,7 @@ static void analogix_dp_bridge_disable(struct drm_bridge *bridge)
 
 	disable_irq(dp->irq);
 
-	if (dp->plat_data->power_off)
-		dp->plat_data->power_off(dp->plat_data);
-
 	analogix_dp_set_analog_power_down(dp, POWER_ALL, 1);
-	phy_power_off(dp->phy);
 
 	pm_runtime_put_sync(dp->dev);
 
@@ -1713,6 +1700,11 @@ EXPORT_SYMBOL_GPL(analogix_dp_probe);
 
 int analogix_dp_suspend(struct analogix_dp_device *dp)
 {
+	phy_power_off(dp->phy);
+
+	if (dp->plat_data->power_off)
+		dp->plat_data->power_off(dp->plat_data);
+
 	clk_disable_unprepare(dp->clock);
 
 	return 0;
@@ -1729,6 +1721,11 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
 		return ret;
 	}
 
+	if (dp->plat_data->power_on)
+		dp->plat_data->power_on(dp->plat_data);
+
+	phy_power_on(dp->phy);
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(analogix_dp_resume);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
