Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D5DCC27C79
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 18:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M84A48DPfPuoPmDG6cF5CCzM6XhJLg5yuw/QeNRTnMM=; b=EaR4bzKhWbs2jl
	ywfa91jssamrT1UXynI7muoawvZhQ7o3rYdnhlhJ0dS+6wMM7bH9W0ScT8PjYLzEGcRKcIGnQsGuU
	Y43tsnYHRvIJwVvsfsVGIb7JtZFVtv0Mm3Saf/9wsh6PJMfH6PxEnyplnM0FqMqq+JdyaGsGmtm78
	HhLGf72LiqJEI4rUDhEWsmauxYHOwfr05VXdHch52Cakwc0Ig8ZBXt+qmL3lrk46wZKig7Kvf/lbM
	I49bRe+WWWuw2Zjrq2NBvlEiLYTo3N0OsvoMJDjwZ9UG6e6Vc0AUIwjS45VEqei319V2nJt3UDKzT
	MbiyUjB4OmgvNSzEf77Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzy3-00000002MUs-3UKy;
	Wed, 19 Jun 2024 18:23:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJzwn-00000002LhL-1nKv
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 18:22:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sJzwX-00049f-KA; Wed, 19 Jun 2024 20:22:01 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sJzwW-003WTo-Rr; Wed, 19 Jun 2024 20:22:00 +0200
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
Subject: [PATCH v2 08/14] drm/bridge: analogix_dp: move basic controller init into runtime PM
Date: Wed, 19 Jun 2024 20:21:54 +0200
Message-Id: <20240619182200.3752465-8-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240619182200.3752465-1-l.stach@pengutronix.de>
References: <20240619182200.3752465-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_112217_472528_F343288B 
X-CRM114-Status: GOOD (  12.57  )
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

Make sure the controller is in a basic working state after runtime
resume. Keep the analog function enable in the mode set path as this
enables parts of the PHY that are only required to be powered when
there is a data stream being sent out.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Robert Foss <rfoss@kernel.org>
Tested-by: Heiko Stuebner <heiko@sntech.de> (rk3288-veyron and rk3399-gru)
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index d2b6d5a87188..c852d9517c27 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -41,10 +41,8 @@ struct bridge_init {
 	struct device_node *node;
 };
 
-static int analogix_dp_init_dp(struct analogix_dp_device *dp)
+static void analogix_dp_init_dp(struct analogix_dp_device *dp)
 {
-	int ret;
-
 	analogix_dp_reset(dp);
 
 	analogix_dp_swreset(dp);
@@ -56,13 +54,9 @@ static int analogix_dp_init_dp(struct analogix_dp_device *dp)
 	analogix_dp_enable_sw_function(dp);
 
 	analogix_dp_config_interrupt(dp);
-	ret = analogix_dp_init_analog_func(dp);
-	if (ret)
-		return ret;
 
 	analogix_dp_init_hpd(dp);
 	analogix_dp_init_aux(dp);
-	return 0;
 }
 
 static int analogix_dp_detect_hpd(struct analogix_dp_device *dp)
@@ -1251,9 +1245,9 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 
 	pm_runtime_get_sync(dp->dev);
 
-	ret = analogix_dp_init_dp(dp);
+	ret = analogix_dp_init_analog_func(dp);
 	if (ret)
-		goto out_dp_init;
+		return ret;
 
 	/*
 	 * According to DP spec v1.3 chap 3.5.1.2 Link Training,
@@ -1718,6 +1712,8 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
 
 	phy_power_on(dp->phy);
 
+	analogix_dp_init_dp(dp);
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
