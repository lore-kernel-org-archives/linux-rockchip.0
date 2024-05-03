Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05C61C25B10
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYCiGtQA41KDx5absUIM30s92tIBgAmMUzfh7XcCRvE=; b=Cvb/j1dPIcd3Fg
	wZR5X2HSc1E4SO4R5JzRWneoRATjmloHSFWQWtDsCWUapD+Ap3OTO8g65u6EFsnQRrLefTRoBVhld
	LcgfK0c1fNWOk5UnApAzQTkZEbroeL27CzywX1omZnMolbFAoA2eXNJ1SdVvEB+9IVHbK8pB9XN+m
	JsSz+rt0NR81G5kkry115Bvj7WycMV04gaFrZoOe84FQXtJnhdz3h4LXEoEpR0WW/RwZaLXMxa43p
	uQ3aOuQ5FNGbGCDiPKVqAyTiLumNQj3siZyu4C0RJAEnVerxDZuUVrA+g+8G+fUbg2u3qqGiotWmi
	wfbfJ7hin4/cc6jLE4qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ubC-0000000H04V-2DEA;
	Fri, 03 May 2024 15:13:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaZ-0000000GzWy-2ZFb
	for linux-rockchip@bombadil.infradead.org;
	Fri, 03 May 2024 15:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gRb6/O32DoNFBc4odrUqVsDbmoKjFNO6cRM/p1lr/oY=; b=Wc+SGvoSM8XzVKunUSJnpa7NAN
	4tJEDF8bWEF1gw9/LV70TgmOeM3e7rgc6IzBsmLJXaRQS63y3iELSd61oQ3/F9xFPXo6DkRXuvgqp
	ScBUovvSboGeYuDrcLIPq5DjVeULl4qdoK+ULLUCnv7zhV3Lp+q4avlBU6IQq4pYsn/aAT2XPY6Km
	e/fxjYhxKq9KpzsqMYtuYs6AAAf/jxi9nywRsZ121JOJSgEJvseCwg6MKuJ0KFWXM50m9M6PoB+yr
	B5talMmiCWP1hbL0atcKr14bDhz58/CpJ34VQvcG5bSiOSvQUB9UI8Mx7YP5VWhLf8HtdlrdjxxgW
	B9m6vc+A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uaV-00000000adX-3K5t
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:12:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uaK-0004wr-Kz; Fri, 03 May 2024 17:12:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZO-00FjHY-KM; Fri, 03 May 2024 17:11:30 +0200
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
Subject: [PATCH 13/14] drm/bridge: analogix_dp: only read AUX status when an error occured
Date: Fri,  3 May 2024 17:11:28 +0200
Message-Id: <20240503151129.3901815-14-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240503151129.3901815-1-l.stach@pengutronix.de>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_161239_920120_5ABC15D5 
X-CRM114-Status: GOOD (  10.97  )
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

All AUX error responses raise the AUX_ERR interrupt, so there is no
need to read the AUX status register in normal operation. Only read
the status when an error occured and we can expect a different status
than OK.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index 143a78b1d156..0f016dca9f3d 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -924,7 +924,6 @@ ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
 			     struct drm_dp_aux_msg *msg)
 {
 	u32 reg;
-	u32 status_reg;
 	u8 *buffer = msg->buffer;
 	unsigned int i;
 	int ret;
@@ -1011,12 +1010,14 @@ ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
 
 	/* Clear interrupt source for AUX CH access error */
 	reg = readl(dp->reg_base + ANALOGIX_DP_INT_STA);
-	status_reg = readl(dp->reg_base + ANALOGIX_DP_AUX_CH_STA);
-	if ((reg & AUX_ERR) || (status_reg & AUX_STATUS_MASK)) {
+	if ((reg & AUX_ERR)) {
+		u32 aux_status = readl(dp->reg_base + ANALOGIX_DP_AUX_CH_STA) &
+				 AUX_STATUS_MASK;
+
 		writel(AUX_ERR, dp->reg_base + ANALOGIX_DP_INT_STA);
 
 		dev_warn(dp->dev, "AUX CH error happened: %#x (%d)\n",
-			 status_reg & AUX_STATUS_MASK, !!(reg & AUX_ERR));
+			 aux_status, !!(reg & AUX_ERR));
 		goto aux_error;
 	}
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
