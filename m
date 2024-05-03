Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E152CC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bjL4nKYSj2t9sQ5/lXJIrxcxd2wypMb1nVE3/+rqCU=; b=DsPvs3u6I/VUcC
	vVtQnU2vztqqgPQ5RnMp7sDiDfU/2gMAlWGMkImoMJOQ0Zsl6xs+J5AQuw7DO9f1u4rA+WA6ZgMdU
	sKQnkuSnOCF0w/hJ7VUrWEw3q0XmgRDzkNoGlSdPwL8q4TK2RDRI6WA/zdnBTLzAnmhjjLhMomj2P
	3MbpLSpGQfTOy1DZfd+gkdJKgOr8e53HSNgTn/ffp2Mck1JIQPX8dsHGLNxM1CX8OAoYMJ8eQlxIt
	+zuAscDucuFI3O4XWtoK9Y74qC0cORKFVjrRh4dUw3k+O049CHXCbFotSq6IT8mft5bMAPOhz4XYs
	F6+nEtLBT1T6vAyQyUjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ubM-0000000H0Cq-1jIg;
	Fri, 03 May 2024 15:13:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaa-0000000GzXh-1LUn
	for linux-rockchip@bombadil.infradead.org;
	Fri, 03 May 2024 15:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TREWx8qBHAv4AbqT/XvwFJwtUhBu4gAhm8YsVDyLy+k=; b=kOU/+tTmtLL/9DFdC3od/rD1R8
	O5/NQuBQuDeJPCysBJceuy7EMgEYZxLPNdDnuZ6qB1caSLZ/TpcOhihCi6BNDjyZKBGHiR3FjANcS
	30nf2w6QGOHQQPSv9KfR3Z8PXzy4TOytOHHNZRa2UGRU/sFonLudSPL5ynpvgLD833ZF2LWB9d8B3
	JL3Iykt//PP6j8ARznioL5CRkU0wNb+fvo7wRbjUycbRaTFLpjMaDOuTcpf5XwEIWC0xhzYMoqTUJ
	vzBh1ck61Gt10nhgSLlKerg6SbgWQPI+8rTI1URYFbKsZ2eW02KK5nMYR9Qusglg/geiTdkd9500i
	bTfMr6eQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaW-00000000aeH-2d29
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:12:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uaL-0004y4-Qw; Fri, 03 May 2024 17:12:29 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZO-00FjHY-Mf; Fri, 03 May 2024 17:11:30 +0200
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
Subject: [PATCH 14/14] drm/bridge: analogix_dp: handle AUX transfer timeouts
Date: Fri,  3 May 2024 17:11:29 +0200
Message-Id: <20240503151129.3901815-15-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_161240_765596_4CF12990 
X-CRM114-Status: UNSURE (   9.45  )
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
