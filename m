Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 736BDCCA47B
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=992g+u1+P28l3YzdLXpNSm0wgVWdEFA+7l3o1tKaONk=; b=zM3AOpMm/osAzJ
	KLYvKaVIfNQqwzqbDEpLS9lflurU2cZvuLupuZVWDHLMuPCz4xt+kbgSMjuw3BgFwhlM0lKxio6UL
	zdJP9CJTBNFEu9ndx/gP1cF8wG6maC48LpxafHeNJZr9s45Fc7FuK+kKvIGNFawPROFuixNa2seHt
	sEHCJkPiqgTsScPQHRM5KQi3UsfhMdgCkhho3/kRx4R3zDpG460tQ6PPKv3Jec8+PGQEXnl7bRQyF
	LecIjeOr1accknrsym2F5z8vENQRjy8kMbca0av2RQDcsKAU4FgJfB53kHWonm9hxREWBSmlWyZxN
	Ue5f7CR2cS/r2R+KcpcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ByZ-00Atl9-JX; Tue, 14 Jun 2022 19:13:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bxu-00AtXv-NN
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:40 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 06A29825;
	Tue, 14 Jun 2022 21:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233957;
	bh=rIl2U/uSQ4qjK1oJdx1HUIdq6XV0PrNBBMDId1R+hqI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oEbAtAeFuR6hQJPaF8PDn+1P0B8v3LHhIz1jraiTq0pDAvx0uxpm9EUWUMgFvwGaG
	 qC7jw0Chyqit0UG3HvJp5Ei/V5mPlEPBr6rUyeV15QrGyTvRQhzfrDsADqsQ9eLzTX
	 pHXfkHBBXiatQYYCYlkGfFZKi5QCv64AIOxBk84o=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 12/55] media: rkisp1: Reject sensors without pixel rate control at bound time
Date: Wed, 15 Jun 2022 04:10:44 +0900
Message-Id: <20220614191127.3420492-13-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121238_958038_DE74B2DB 
X-CRM114-Status: UNSURE (   9.25  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The rkisp1 driver requires the sensor to implement the pixel rate
control. Trying to operate without it will cause an error when starting
streaming. Catch the issue earlier, at bound time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 6 ++++++
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 5 -----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 39ae35074062..7fc617d51f44 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -190,6 +190,12 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
 
 	s_asd->pixel_rate_ctrl = v4l2_ctrl_find(sd->ctrl_handler,
 						V4L2_CID_PIXEL_RATE);
+	if (!s_asd->pixel_rate_ctrl) {
+		dev_err(rkisp1->dev, "No pixel rate control in subdev %s\n",
+			sd->name);
+		return -EINVAL;
+	}
+
 	s_asd->sd = sd;
 	s_asd->dphy = devm_phy_get(rkisp1->dev, "dphy");
 	if (IS_ERR(s_asd->dphy)) {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 58cf6d21f1eb..81138c676ac0 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -823,11 +823,6 @@ static int rkisp1_mipi_csi2_start(struct rkisp1_isp *isp,
 	struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
 	s64 pixel_clock;
 
-	if (!sensor->pixel_rate_ctrl) {
-		dev_warn(rkisp1->dev, "No pixel rate control in sensor subdev\n");
-		return -EPIPE;
-	}
-
 	pixel_clock = v4l2_ctrl_g_ctrl_int64(sensor->pixel_rate_ctrl);
 	if (!pixel_clock) {
 		dev_err(rkisp1->dev, "Invalid pixel rate value\n");
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
