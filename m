Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D18CEC41513
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9TDz8GhPUJYjnF4SQluyLhP0wDvVUISUYOLj2VJYvE=; b=w9Z+jyeooRuoM+
	5g67GgY0MMz+rkshmWtK8+SCEGda4fBrfNo2PfyeOo0NCrTC5ug+aFKuaebQEYsBIgtmfF62JT+gq
	i9RKwI1QoclRqTy7BsGViay5oXt/+yiZC9iA5Sa3Ao5Cd0l1Rc/HWzEb4ckIjZ3G/pxleb9c6jbs0
	yZPF6zjaJcvT70NfkzaEkvy/IzM3Z56eqdLve0iRJXeQ4M2UcRTxSQKcMtd8MXqqVnfx2uJv7CIuu
	B+ZSUAi9Ns8oizvV/qs+dCI50LfwRZy94s4IO1f6pLXubsczLjRQgQDB773ct3/NyudfEy3KgP+oe
	PELnAY2b8m+B1trrB3rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ua6-0000000Gz66-3toQ;
	Fri, 03 May 2024 15:12:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ua0-0000000GyzD-2WPS
	for linux-rockchip@bombadil.infradead.org;
	Fri, 03 May 2024 15:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SwFg1uY48j7bSNrPla658SHM0feOd57zBuhiaE/NP1Q=; b=mHmnv/JG3OTHU3H3bsoI6eJYYr
	4575+r57n8vS9qMvzHLteG9KvU/IBQPL7I0Hxx25lILZHHTdErowCCaWumEqlHJC9uQHSUP1Un9J1
	3Xv/wSo9b8GXzfSE4AmYjGRR0avP4QU9sYu/a9TjCfHC2yQqmj+r6Wb6lzLUI3RpGozZC2P16a9lX
	PHwnclvrz0VcfMYlG09jyHvG4TFYerFjZcQXqEDPlOehcjUDFKkH6s/aDoJpo+MICxlm+1aW2vJ4i
	W8zB4GEUFANEKFpVIi1Lf8i9O0aeXF6qZoz+J9ewnAe6Fv6vwvgP9UKwbieMKKSoegWiB/wcLi2Ie
	rTjp9Nqw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uZu-00000000aaX-0Gpo
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:12:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZR-0004Cg-K5; Fri, 03 May 2024 17:11:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZN-00FjHY-Ud; Fri, 03 May 2024 17:11:29 +0200
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
Subject: [PATCH 06/14] drm/bridge: analogix_dp: remove clk handling from analogix_dp_set_bridge
Date: Fri,  3 May 2024 17:11:21 +0200
Message-Id: <20240503151129.3901815-7-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_161202_264854_B5F10415 
X-CRM114-Status: UNSURE (   9.77  )
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

The clock is already managed by runtime PM, which is properly invoked
from the analogix_dp_set_bridge function, so there is no need for an
additional reference.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 9f1dfa6f2175..311e1e67486d 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1258,12 +1258,6 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 
 	pm_runtime_get_sync(dp->dev);
 
-	ret = clk_prepare_enable(dp->clock);
-	if (ret < 0) {
-		DRM_ERROR("Failed to prepare_enable the clock clk [%d]\n", ret);
-		goto out_dp_clk_pre;
-	}
-
 	if (dp->plat_data->power_on)
 		dp->plat_data->power_on(dp->plat_data);
 
@@ -1297,8 +1291,7 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 	phy_power_off(dp->phy);
 	if (dp->plat_data->power_off)
 		dp->plat_data->power_off(dp->plat_data);
-	clk_disable_unprepare(dp->clock);
-out_dp_clk_pre:
+
 	pm_runtime_put_sync(dp->dev);
 
 	return ret;
@@ -1367,8 +1360,6 @@ static void analogix_dp_bridge_disable(struct drm_bridge *bridge)
 	analogix_dp_set_analog_power_down(dp, POWER_ALL, 1);
 	phy_power_off(dp->phy);
 
-	clk_disable_unprepare(dp->clock);
-
 	pm_runtime_put_sync(dp->dev);
 
 	ret = analogix_dp_prepare_panel(dp, false, true);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
