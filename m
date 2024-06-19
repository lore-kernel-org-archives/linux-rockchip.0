Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02197C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 18:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+zTsL77YU74gDEY5K3zF6Ka6BtuDHqBLkg5/tNzrTM=; b=WMMIMJarBzcsmf
	OZ834sSuoeMUMS4NKYpMIn5L1lrAG6YxTj6Bt1NyEDUp/k1hcWLFlKxp55dMmTdN15rfyx4VHueCE
	frRlVL09kNlqv17937Rp5Q9BMGYNfmTkAMAZAXi47PK19I8ndpVdaX45RvmBzfqTKYcy1vlnxxBrO
	I23DLsIoABPw8MqDrTa3fzS/F5bgHUuwXxnE3S9ImYD2gVbc4Pb1rgWOeLLi1pV/BrWhivgQw7hoK
	wo8KF/52/PS+coX2ZQ54YHNlFTznXexRYWDV16T7CqTiz8696eRF45kNc2gqGcIeeLmp7pnGUcEsz
	JeI/Q2IXwj8onhDjXLkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK0HQ-00000002PkW-34zs;
	Wed, 19 Jun 2024 18:43:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK0HL-00000002Pg4-2OTY
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 18:43:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sK0H6-0005c6-VO; Wed, 19 Jun 2024 20:43:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sJzwX-003WTo-5J; Wed, 19 Jun 2024 20:22:01 +0200
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
Subject: [PATCH v2 11/14] drm/bridge: analogix_dp: don't wait for PLL lock too early
Date: Wed, 19 Jun 2024 20:21:57 +0200
Message-Id: <20240619182200.3752465-11-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240619182200.3752465-1-l.stach@pengutronix.de>
References: <20240619182200.3752465-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_114331_728795_54EC93F8 
X-CRM114-Status: GOOD (  10.79  )
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

The PLL will be reconfigured later, which may cause it to go out of lock
anyway, so there is no point in waiting for the PLL to lock here. Instead
we can continue execution of the link setup, which will properly set the
PLL parameters and will wait for the PLL to lock at the appropriate times.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Robert Foss <rfoss@kernel.org>
Tested-by: Heiko Stuebner <heiko@sntech.de> (rk3288-veyron and rk3399-gru)
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index d267cf05cbca..e9c643a8b6fc 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -356,7 +356,6 @@ void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
 int analogix_dp_init_analog_func(struct analogix_dp_device *dp)
 {
 	u32 reg;
-	int timeout_loop = 0;
 
 	analogix_dp_set_analog_power_down(dp, POWER_ALL, 0);
 
@@ -368,18 +367,7 @@ int analogix_dp_init_analog_func(struct analogix_dp_device *dp)
 	writel(reg, dp->reg_base + ANALOGIX_DP_DEBUG_CTL);
 
 	/* Power up PLL */
-	if (analogix_dp_get_pll_lock_status(dp) == PLL_UNLOCKED) {
-		analogix_dp_set_pll_power_down(dp, 0);
-
-		while (analogix_dp_get_pll_lock_status(dp) == PLL_UNLOCKED) {
-			timeout_loop++;
-			if (DP_TIMEOUT_LOOP_COUNT < timeout_loop) {
-				dev_err(dp->dev, "failed to get pll lock status\n");
-				return -ETIMEDOUT;
-			}
-			usleep_range(10, 20);
-		}
-	}
+	analogix_dp_set_pll_power_down(dp, 0);
 
 	/* Enable Serdes FIFO function and Link symbol clock domain module */
 	reg = readl(dp->reg_base + ANALOGIX_DP_FUNC_EN_2);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
