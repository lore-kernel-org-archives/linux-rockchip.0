Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF512C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 18:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uu2mzd/NGSNDQ1IOeenxAYoNVEct3p0iGCck+YiZIM=; b=BMID1K4xyvReJP
	j6zcHExdIjye1XkdvY9tnAMKcZ07oavZALAAg1FeLiOYaSf3dvupU6EurTRukW2vEryMX020YYa2u
	Is/7NcmXEAouu11gDIDsutuLhfcOqYldjQ0uwlDqNgwj4NmeHjR8l/ZHjjghHfDtSVI34BgM/XYXf
	MihnMHdD/uNMiX04ri+xj1yKIhtOznfe9q3hDyBFKZQstx6N+sSke8i+zj9fFK4bvpKhfPjmmtuQn
	vHPXSgYn4MVdafEwHcTmF32dWWr/XdgFzjMUu2gj1GxeUAfjzgys/7PurQ3n9wrQVjkTFr4a5EZDc
	dCJOLNUKqNQRE+Yp9kWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK0Hd-00000002Poa-3wOY;
	Wed, 19 Jun 2024 18:43:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK0HL-00000002Pg7-2Oqs
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 18:43:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sK0H6-0005bs-HP; Wed, 19 Jun 2024 20:43:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sJzwX-003WTo-CF; Wed, 19 Jun 2024 20:22:01 +0200
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
Subject: [PATCH v2 14/14] drm/bridge: analogix_dp: handle AUX transfer timeouts
Date: Wed, 19 Jun 2024 20:22:00 +0200
Message-Id: <20240619182200.3752465-14-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240619182200.3752465-1-l.stach@pengutronix.de>
References: <20240619182200.3752465-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_114331_835153_AAAE5EBD 
X-CRM114-Status: UNSURE (   9.72  )
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

Timeouts on the AUX bus are to be expected in certain normal operating
conditions. There is no need to raise an error log or re-initialize the
whole AUX state machine. Simply acknowledge the AUX_ERR interrupt and
let upper layers know about the timeout.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Robert Foss <rfoss@kernel.org>
Tested-by: Heiko Stuebner <heiko@sntech.de> (rk3288-veyron and rk3399-gru)
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c | 3 +++
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h | 9 +++++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index 0f016dca9f3d..3afc73c858c4 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -1016,6 +1016,9 @@ ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
 
 		writel(AUX_ERR, dp->reg_base + ANALOGIX_DP_INT_STA);
 
+		if (aux_status == AUX_STATUS_TIMEOUT_ERROR)
+			return -ETIMEDOUT;
+
 		dev_warn(dp->dev, "AUX CH error happened: %#x (%d)\n",
 			 aux_status, !!(reg & AUX_ERR));
 		goto aux_error;
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
index e284ee8da58b..12735139046c 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.h
@@ -361,6 +361,15 @@
 /* ANALOGIX_DP_AUX_CH_STA */
 #define AUX_BUSY				(0x1 << 4)
 #define AUX_STATUS_MASK				(0xf << 0)
+#define AUX_STATUS_OK				(0x0 << 0)
+#define AUX_STATUS_NACK_ERROR			(0x1 << 0)
+#define AUX_STATUS_TIMEOUT_ERROR		(0x2 << 0)
+#define AUX_STATUS_UNKNOWN_ERROR		(0x3 << 0)
+#define AUX_STATUS_MUCH_DEFER_ERROR		(0x4 << 0)
+#define AUX_STATUS_TX_SHORT_ERROR		(0x5 << 0)
+#define AUX_STATUS_RX_SHORT_ERROR		(0x6 << 0)
+#define AUX_STATUS_NACK_WITHOUT_M_ERROR		(0x7 << 0)
+#define AUX_STATUS_I2C_NACK_ERROR		(0x8 << 0)
 
 /* ANALOGIX_DP_AUX_CH_DEFER_CTL */
 #define DEFER_CTRL_EN				(0x1 << 7)
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
