Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7653FC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8pt0hMwUq1SF3Prb8p4M4J9Oebe7Sd1g2K8TLlnIh+s=; b=ZwLgyaJ0qhr/JQ
	1B1JByKvWP8ILzaAh+BrrqVMRZQEaykznQ+1p0iqAzEkBju+w41hZsbe7Qqsto03Mvff3y8G+reoM
	nj+QZ03KwIVnTcuBKDqQgFui3Cd6QahAtCNwE6ucJmWCEZyX+5MlK7G20UT+PCqBhz6h8zbg5Hki0
	klFCpiOusvwn5eN5kUt4KRLL6WOzNc59TYxgX+JiqZDEszWb5VF5Dv9pyYY/kKaMNXYvXOZkJjTOJ
	9Un8Ju+rDTQ9aR2qpwatbv73TmM5fAK0yrlzCV4zlGumK5N8n5Cam2DILEcuOGeTo2Rs+Ee54KzJ/
	07Nq6iRQ37g9GE7uB6cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ubE-0000000H06a-0lG2;
	Fri, 03 May 2024 15:13:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaa-0000000GzXm-1vll
	for linux-rockchip@bombadil.infradead.org;
	Fri, 03 May 2024 15:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=zf0dqjD4dfqKNu9+EdRW3LJyR8GJgh/WtPQWwik3etw=; b=pJf7FTeBW0WHOSGaTB6fPJVYnQ
	BgkRzty4kDZpFHUz1SsxcqgQBL5w1me5v/32urHPJoVKydXm52Eq27Ur16+fmrdLwkfdtgapbgR+k
	5qjfVLT5PvMuA31VVsypa3PW87nmEoLnTcrnBu43qDQK6QBxHvA0g4g3CA9g8uH9E1F3BdDddu1pp
	3xKrHFje1ZOq7QmpXVGxXexMHMhZe9R/RC517jAKhSxXuGtvpZGH5wXlWb2MOT22Yam2gdyJQUDoq
	AoGwytnIFeBIEyxE4bGpP8ZoIqOWMeOubIlazMZoFVNhbM1Zh1y8nUx+L0jx+JhbLjgM4WexHAI3i
	Gz01+YIQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaW-00000000ae3-12Q9
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:12:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uaL-0004xn-Bt; Fri, 03 May 2024 17:12:29 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZO-00FjHY-FX; Fri, 03 May 2024 17:11:30 +0200
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
Subject: [PATCH 11/14] drm/bridge: analogix_dp: don't wait for PLL lock too early
Date: Fri,  3 May 2024 17:11:26 +0200
Message-Id: <20240503151129.3901815-12-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_161240_399903_26DBBB70 
X-CRM114-Status: GOOD (  10.53  )
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
anyways, so there is no point in waiting for the PLL to lock here. Instead
we can continue execution of the link setup, which will properly set the
PLL parameters and will wait for the PLL to lock at the appropriate times.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
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
