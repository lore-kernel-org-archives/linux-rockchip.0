Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B270DC25B10
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGoaXFgouno/h0JOQowR/zEMvSrNmFk8B1apISsbpig=; b=OrFgwcqN4CRuG3
	JZx/SIp7Y49ZUfKA8OlEeHB+FvtJs6RxLIc1a6C3ofQQW3QsfC/0iqWsga6iYl2bdg3cZCXUjSz5t
	rtBtyzDnPyxnPDCFEI9BZtheYviYmMLQZKGea5l7S/+OjRG/4rTMOeEQ2G/+wyavnvHJDtdIDqKrT
	ouC2vERYuae4Z6MXLojWAMrwzL+isxJDGCk7G4ops4vfQfhz8HKpyGTqSRiczl5tQTSJH5xdfeEGD
	qscPNdfgAcJB9CTebeDkygXpuKj/2pZYCbgQrcBTOZmQFP2eD+DsFhGR8F5FxmvHT1xNjPKRVfIHY
	5NAruV7CHeb036XRaR0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ubZ-0000000H0M1-22sP;
	Fri, 03 May 2024 15:13:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uac-0000000GzZp-0JPE
	for linux-rockchip@bombadil.infradead.org;
	Fri, 03 May 2024 15:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=1irguNubnh+072zSr9aTLFeyOWbUMXZBd7Wmgpylh50=; b=qxnYEGAEWILroKUlOa38UJz5zX
	qx9eNwSRYh09XXrqF0J+mEkvQAGep36PFya3ResiIpa0pBTblSBSQR+FPNsQXwuEbN8oTQlhts2DL
	3muc1MVifpvuc2rQJzBepME43IllDrnrmSENZsJHhVFvg6dVpTqNlvZXHte1Nx0gknL8qCWfFpzlJ
	kRnKBpuxA8k4BLUVqh9gfrOTRaCUp6GuRjDDX0qJ8LKWNuhZpMAmTGZw2Bb8OzkCbA9qVauIhuuR/
	tC8JME203owxEcShY4WtIXM+RU2WAeVF0g7JuOB/C5wihHmGesAqUg0YgpO4grnDX8tVXAchVFylm
	AvdbD2tQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaY-00000000aes-2QFe
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:12:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uaM-0004zn-Ir; Fri, 03 May 2024 17:12:30 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZO-00FjHY-Hp; Fri, 03 May 2024 17:11:30 +0200
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
Subject: [PATCH 12/14] drm/bridge: analogix_dp: simplify and correct PLL lock checks
Date: Fri,  3 May 2024 17:11:27 +0200
Message-Id: <20240503151129.3901815-13-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_161242_726755_35A5B60F 
X-CRM114-Status: GOOD (  13.75  )
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

Move the wait loop into its own function, so it doesn't need to be
replicated in multiple locations. Also move the PLL lock checks between
setting the link bandwidth, which may cause the PLL to unlock, and the
MACRO_RST, which needs the PLL to be locked.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 34 +++++++------------
 .../drm/bridge/analogix/analogix_dp_core.h    |  7 +---
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 12 +++----
 3 files changed, 18 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 736b2ed745e1..7bbc3d8a85df 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -231,7 +231,7 @@ static int analogix_dp_training_pattern_dis(struct analogix_dp_device *dp)
 static int analogix_dp_link_start(struct analogix_dp_device *dp)
 {
 	u8 buf[4];
-	int lane, lane_count, pll_tries, retval;
+	int lane, lane_count, retval;
 
 	lane_count = dp->link_train.lane_count;
 
@@ -243,6 +243,11 @@ static int analogix_dp_link_start(struct analogix_dp_device *dp)
 
 	/* Set link rate and count as you want to establish*/
 	analogix_dp_set_link_bandwidth(dp, dp->link_train.link_rate);
+	retval = analogix_dp_wait_pll_locked(dp);
+	if (retval) {
+		DRM_DEV_ERROR(dp->dev, "Wait for pll lock failed %d\n", retval);
+		return retval;
+	}
 	/*
 	 * MACRO_RST must be applied after the PLL_LOCK to avoid
 	 * the DP inter pair skew issue for at least 10 us
@@ -270,18 +275,6 @@ static int analogix_dp_link_start(struct analogix_dp_device *dp)
 					DP_TRAIN_PRE_EMPH_LEVEL_0;
 	analogix_dp_set_lane_link_training(dp);
 
-	/* Wait for PLL lock */
-	pll_tries = 0;
-	while (analogix_dp_get_pll_lock_status(dp) == PLL_UNLOCKED) {
-		if (pll_tries == DP_TIMEOUT_LOOP_COUNT) {
-			dev_err(dp->dev, "Wait for PLL lock timed out\n");
-			return -ETIMEDOUT;
-		}
-
-		pll_tries++;
-		usleep_range(90, 120);
-	}
-
 	/* Set training pattern 1 */
 	analogix_dp_set_training_pattern(dp, TRAINING_PTN1);
 
@@ -634,9 +627,14 @@ static int analogix_dp_fast_link_train(struct analogix_dp_device *dp)
 {
 	int ret;
 	u8 link_align, link_status[2];
-	enum pll_status status;
 
 	analogix_dp_set_link_bandwidth(dp, dp->link_train.link_rate);
+	ret = analogix_dp_wait_pll_locked(dp);
+	if (ret) {
+		DRM_DEV_ERROR(dp->dev, "Wait for pll lock failed %d\n", ret);
+		return ret;
+	}
+
 	/*
 	 * MACRO_RST must be applied after the PLL_LOCK to avoid
 	 * the DP inter pair skew issue for at least 10 us
@@ -645,14 +643,6 @@ static int analogix_dp_fast_link_train(struct analogix_dp_device *dp)
 	analogix_dp_set_lane_count(dp, dp->link_train.lane_count);
 	analogix_dp_set_lane_link_training(dp);
 
-	ret = readx_poll_timeout(analogix_dp_get_pll_lock_status, dp, status,
-				 status != PLL_UNLOCKED, 120,
-				 120 * DP_TIMEOUT_LOOP_COUNT);
-	if (ret) {
-		DRM_DEV_ERROR(dp->dev, "Wait for pll lock failed %d\n", ret);
-		return ret;
-	}
-
 	/* source Set training pattern 1 */
 	analogix_dp_set_training_pattern(dp, TRAINING_PTN1);
 	/* From DP spec, pattern must be on-screen for a minimum 500us */
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
index 382b2f068ab9..774d11574b09 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
@@ -95,11 +95,6 @@ enum dynamic_range {
 	CEA
 };
 
-enum pll_status {
-	PLL_UNLOCKED,
-	PLL_LOCKED
-};
-
 enum clock_recovery_m_value_type {
 	CALCULATED_M,
 	REGISTER_M
@@ -191,7 +186,7 @@ void analogix_dp_swreset(struct analogix_dp_device *dp);
 void analogix_dp_config_interrupt(struct analogix_dp_device *dp);
 void analogix_dp_mute_hpd_interrupt(struct analogix_dp_device *dp);
 void analogix_dp_unmute_hpd_interrupt(struct analogix_dp_device *dp);
-enum pll_status analogix_dp_get_pll_lock_status(struct analogix_dp_device *dp);
+int analogix_dp_wait_pll_locked(struct analogix_dp_device *dp);
 void analogix_dp_set_pll_power_down(struct analogix_dp_device *dp, bool enable);
 void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
 				       enum analog_power_block block,
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index e9c643a8b6fc..143a78b1d156 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -217,15 +217,13 @@ void analogix_dp_unmute_hpd_interrupt(struct analogix_dp_device *dp)
 	writel(reg, dp->reg_base + ANALOGIX_DP_INT_STA_MASK);
 }
 
-enum pll_status analogix_dp_get_pll_lock_status(struct analogix_dp_device *dp)
+int analogix_dp_wait_pll_locked(struct analogix_dp_device *dp)
 {
-	u32 reg;
+	u32 val;
 
-	reg = readl(dp->reg_base + ANALOGIX_DP_DEBUG_CTL);
-	if (reg & PLL_LOCK)
-		return PLL_LOCKED;
-	else
-		return PLL_UNLOCKED;
+	return readl_poll_timeout(dp->reg_base + ANALOGIX_DP_DEBUG_CTL, val,
+				  val & PLL_LOCK, 120,
+				  120 * DP_TIMEOUT_LOOP_COUNT);
 }
 
 void analogix_dp_set_pll_power_down(struct analogix_dp_device *dp, bool enable)
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
