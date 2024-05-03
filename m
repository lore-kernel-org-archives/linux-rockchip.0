Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97C00C25B10
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXTBCtCVApgod1esdAhjVUCJ/0EpGcxktr8iC+QtIM0=; b=YMSa6De82hOkkh
	zeMRNRwG6f3oTfZn/VB2LhEBZ1FcNDeojfuQtKJowmcW9TLtaJnHM1pNwb+2+3q3K/YamEVIX3Asg
	iXfmraebQlQYtvvV5ooRPk2gj0C66f9CSQ5yOCQcowrs6AYIMjGPozsDYcHPhXyzzjnZQaJyX0gOY
	q1g3ioGUve9af3B328vPrVaSzsVKynvAA0T9Gdh5ccRrHBg5NYvFT1C5JBKQXPKHwwrhOcWJMrTWC
	7CGYVUx/8JB/TmQKluAdPRCNbCTw2k6U7Bi3U/davYm68J6137pTt9WH/bLZXtm7tfNyo1bezF47q
	S7QjUxOaallEsukbnOAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ub6-0000000GzzC-0bYm;
	Fri, 03 May 2024 15:13:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaY-0000000GzW8-43tj
	for linux-rockchip@bombadil.infradead.org;
	Fri, 03 May 2024 15:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dW0F2LDMJiTZ+GHL9rtI/E36tdA6UKhObPocWL9Ndjk=; b=YXalQOze+MOfF4no0pknazZLvr
	GhwtLGE+QKrKivqoq2qB6DY0Nb4QqCrJnrI0ekEmu2z6W+7LbuCuCtDif/7Yo3Acn6iIy5xPWEfLD
	l5C6w0lyx2kdGi0hZZ5q12AdypvqGIL/wQN9h8dzg8y6YAQKaz/9kk4lpmcZAg1aUcylzIyX1VdhL
	WV8dpV6ofwYX2lIqdMLjtJkrHP1IGuQtyYZxm7VEkycsf2CFI//2nxacxsKCHMQDHCExLrmohjLcn
	fEIZ/+C+4JuODPOG0j39ruIw81fSPzr/rGhD+XoPbjoRYooc2Q5mBuZHeVsNE/Ac5aM3jGjpCHaZM
	ALbhytFA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaV-00000000adT-297n
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:12:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uaK-0004vQ-6W; Fri, 03 May 2024 17:12:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZO-00FjHY-Bq; Fri, 03 May 2024 17:11:30 +0200
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
Subject: [PATCH 10/14] drm/bridge: analogix_dp: move macro reset after link bandwidth setting
Date: Fri,  3 May 2024 17:11:25 +0200
Message-Id: <20240503151129.3901815-11-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_161239_686119_9431F503 
X-CRM114-Status: GOOD (  10.63  )
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

Setting the link bandwidth may change the PLL parameters, which will cause
the PLL to go out of lock, so make sure to apply the MACRO_RST, which
according to the comment is required to be pulsed after the PLL is locked.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../gpu/drm/bridge/analogix/analogix_dp_core.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index b4a47311cfe8..736b2ed745e1 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -243,6 +243,11 @@ static int analogix_dp_link_start(struct analogix_dp_device *dp)
 
 	/* Set link rate and count as you want to establish*/
 	analogix_dp_set_link_bandwidth(dp, dp->link_train.link_rate);
+	/*
+	 * MACRO_RST must be applied after the PLL_LOCK to avoid
+	 * the DP inter pair skew issue for at least 10 us
+	 */
+	analogix_dp_reset_macro(dp);
 	analogix_dp_set_lane_count(dp, dp->link_train.lane_count);
 
 	/* Setup RX configuration */
@@ -565,12 +570,6 @@ static int analogix_dp_full_link_train(struct analogix_dp_device *dp,
 	int retval = 0;
 	bool training_finished = false;
 
-	/*
-	 * MACRO_RST must be applied after the PLL_LOCK to avoid
-	 * the DP inter pair skew issue for at least 10 us
-	 */
-	analogix_dp_reset_macro(dp);
-
 	/* Initialize by reading RX's DPCD */
 	analogix_dp_get_max_rx_bandwidth(dp, &dp->link_train.link_rate);
 	analogix_dp_get_max_rx_lane_count(dp, &dp->link_train.lane_count);
@@ -637,9 +636,12 @@ static int analogix_dp_fast_link_train(struct analogix_dp_device *dp)
 	u8 link_align, link_status[2];
 	enum pll_status status;
 
-	analogix_dp_reset_macro(dp);
-
 	analogix_dp_set_link_bandwidth(dp, dp->link_train.link_rate);
+	/*
+	 * MACRO_RST must be applied after the PLL_LOCK to avoid
+	 * the DP inter pair skew issue for at least 10 us
+	 */
+	analogix_dp_reset_macro(dp);
 	analogix_dp_set_lane_count(dp, dp->link_train.lane_count);
 	analogix_dp_set_lane_link_training(dp);
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
