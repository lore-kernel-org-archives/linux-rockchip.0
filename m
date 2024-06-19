Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57B30C27C79
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 18:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kH5Hp19PicOSFs8Ytj/+Zfe781TvC8Aj8PsNFffcpU0=; b=R1RbuPQWx6xuL6
	I1TrxIjamokypY9J/G48Wblg9vyQzqQgEOmCWdDHcX0c1TSD+9DNanXa0az1WGv7sJBin2STiuBni
	c4svcLAFn9lLHcRZdL0u0ibez+L52r50OBo2WvdVjgq7rr3XQpPrNHVH5dJfBAyzB8P5Ok6uozZe9
	bOshnWITok+YgZq+R+Vh8newqSgRn1xQqPsUpZ0iSKHi5dLx/0KD4Cj3bCsivY58zz2BR+jtODDeI
	oIS+IHQc3y3RbycXQlz+OtQjwBHUe6w6ptnVxgqGsiudNBlRfOItaGII8sZS9lf0NPs/eRvuareRK
	UJP9SjthdhkuQGOqjQ2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzxj-00000002MCK-2zzb;
	Wed, 19 Jun 2024 18:23:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzws-00000002LmZ-2LYU
	for linux-rockchip@bombadil.infradead.org;
	Wed, 19 Jun 2024 18:22:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2E0sLAmQQ7C3dG145piref34JkhvWP+diYiej3cAlxY=; b=RvUdQtpLd+iOyJ1BAagESHwOsb
	7IoztA3pBIsIXTAdZDW8AOFsaM7dDfFotdgZQYuyv5ZhZGe+rm8GOcvA/MQ1VRVkGxfIMOo4lpmSz
	bzuWNzDSd8AuhVgmhYPEZZmuytUkW2x5bM/oGHOfqKlZZ6+o+dT9QPR1AEx3QFsCkwyk+fPgzn8sg
	TiuaF3dDZF96V3CrgHfmIMryX/J2fnnL+ZozPq0avmZjo373eoJmT3Y/4OhYLW0Thz/dsHI4WJxHW
	YXXvRPTe55utA+iMrKY5eVmU7GlALWbtddIufrxK1zWgw1rOuPhBBGOD7gbGFAL3O4qwW4lK3XQ/D
	l76VAXnw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzwo-00000007OlX-2FYl
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 18:22:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sJzwX-00049b-K4; Wed, 19 Jun 2024 20:22:01 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sJzwW-003WTo-GR; Wed, 19 Jun 2024 20:22:00 +0200
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
Subject: [PATCH v2 04/14] drm/bridge: analogix_dp: handle clock via runtime PM
Date: Wed, 19 Jun 2024 20:21:50 +0200
Message-Id: <20240619182200.3752465-4-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240619182200.3752465-1-l.stach@pengutronix.de>
References: <20240619182200.3752465-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_192218_938015_6335149E 
X-CRM114-Status: GOOD (  14.24  )
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

There is no reason to enable the controller clock in driver probe, as
there is no HW initialization done in this function. Instead rely on
either runtime PM to handle the controller clock or statically enable
it in the driver bind routine, after which real hardware access is
required to work.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Robert Foss <rfoss@kernel.org>
Tested-by: Heiko Stuebner <heiko@sntech.de> (rk3288-veyron and rk3399-gru)
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 77 +++++++++++--------
 1 file changed, 44 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index ae79802b62bb..4453d1672686 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1651,8 +1651,6 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 		return ERR_CAST(dp->clock);
 	}
 
-	clk_prepare_enable(dp->clock);
-
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 
 	dp->reg_base = devm_ioremap_resource(&pdev->dev, res);
@@ -1714,6 +1712,28 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 }
 EXPORT_SYMBOL_GPL(analogix_dp_probe);
 
+int analogix_dp_suspend(struct analogix_dp_device *dp)
+{
+	clk_disable_unprepare(dp->clock);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(analogix_dp_suspend);
+
+int analogix_dp_resume(struct analogix_dp_device *dp)
+{
+	int ret;
+
+	ret = clk_prepare_enable(dp->clock);
+	if (ret < 0) {
+		DRM_ERROR("Failed to prepare_enable the clock clk [%d]\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(analogix_dp_resume);
+
 int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 {
 	int ret;
@@ -1721,9 +1741,15 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 	dp->drm_dev = drm_dev;
 	dp->encoder = dp->plat_data->encoder;
 
-	pm_runtime_use_autosuspend(dp->dev);
-	pm_runtime_set_autosuspend_delay(dp->dev, 100);
-	pm_runtime_enable(dp->dev);
+	if (IS_ENABLED(CONFIG_PM)) {
+		pm_runtime_use_autosuspend(dp->dev);
+		pm_runtime_set_autosuspend_delay(dp->dev, 100);
+		pm_runtime_enable(dp->dev);
+	} else {
+		ret = analogix_dp_resume(dp);
+		if (ret)
+			return ret;
+	}
 
 	dp->aux.name = "DP-AUX";
 	dp->aux.transfer = analogix_dpaux_transfer;
@@ -1747,8 +1773,12 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 err_unregister_aux:
 	drm_dp_aux_unregister(&dp->aux);
 err_disable_pm_runtime:
-	pm_runtime_dont_use_autosuspend(dp->dev);
-	pm_runtime_disable(dp->dev);
+	if (IS_ENABLED(CONFIG_PM)) {
+		pm_runtime_dont_use_autosuspend(dp->dev);
+		pm_runtime_disable(dp->dev);
+	} else {
+		analogix_dp_suspend(dp);
+	}
 
 	return ret;
 }
@@ -1765,40 +1795,21 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
 	}
 
 	drm_dp_aux_unregister(&dp->aux);
-	pm_runtime_dont_use_autosuspend(dp->dev);
-	pm_runtime_disable(dp->dev);
+
+	if (IS_ENABLED(CONFIG_PM)) {
+		pm_runtime_dont_use_autosuspend(dp->dev);
+		pm_runtime_disable(dp->dev);
+	} else {
+		analogix_dp_suspend(dp);
+	}
 }
 EXPORT_SYMBOL_GPL(analogix_dp_unbind);
 
 void analogix_dp_remove(struct analogix_dp_device *dp)
 {
-	clk_disable_unprepare(dp->clock);
 }
 EXPORT_SYMBOL_GPL(analogix_dp_remove);
 
-#ifdef CONFIG_PM
-int analogix_dp_suspend(struct analogix_dp_device *dp)
-{
-	clk_disable_unprepare(dp->clock);
-	return 0;
-}
-EXPORT_SYMBOL_GPL(analogix_dp_suspend);
-
-int analogix_dp_resume(struct analogix_dp_device *dp)
-{
-	int ret;
-
-	ret = clk_prepare_enable(dp->clock);
-	if (ret < 0) {
-		DRM_ERROR("Failed to prepare_enable the clock clk [%d]\n", ret);
-		return ret;
-	}
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(analogix_dp_resume);
-#endif
-
 int analogix_dp_start_crc(struct drm_connector *connector)
 {
 	struct analogix_dp_device *dp = to_dp(connector);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
