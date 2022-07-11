Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF904C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wCN9zFE7u5p2ZWsk4zpm8oxH6zASJtbXxCTPR47Ghc=; b=0qgtq0Sl/PB0f6
	pZJU73e2sUVXBZbSycjjjuU0hu6p9aQuPsmFI4ksoSITsAhn37HgvuhKLZthlb+cb9R9rKgNp04Pz
	JloAF+hERPSmdWAGZkENmGudspCe9aCd5cLozaHb+V2W6AHGGWZXdV6VpG9GELFF/YxKmPCsGSzMn
	mAn/mj8XfBipP1B7tzA3yXV1XVge6K3EDb7twf5zscqzyi0l/6c4ruvZcEHwoCfWBqipCfW6KYfth
	4A1cDtNI4tImzY2dZoytZMJ+4aG+h6bCZJE8qfdN6DSBmiKBwlUuHc6l+IN8EvzcAOS2CLxrqxQEB
	/5f9OfgJLMB2UhM7CYsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsy5-001fYH-Ba; Mon, 11 Jul 2022 12:56:53 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsl7-001Y7X-IO
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:31 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B3F871C09;
	Mon, 11 Jul 2022 14:43:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543408;
	bh=4W5h8ZyhDD2s+cMAmd4iAng4SMJHn0OJPbEVgJX1vhQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B4lOjcfpk2YKpu3jKmNGGh57CkAhs1oRe7bDBdTyP0yHN9mET1/wPdCuFSjmIxbZG
	 yhll117W7bvxQaglvYadAxgdDwomqq+PqsT9EM8LpRaTqOM3RdwvRMrCnLRf0CsE5u
	 +PjdmxdkJYAfZn+8hcuE4Ve2mPjCFR3+luHKSmMI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 14/46] media: rkisp1: Reject sensors without pixel rate control at bound time
Date: Mon, 11 Jul 2022 15:42:16 +0300
Message-Id: <20220711124248.2683-15-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054329_900295_0B7596FF 
X-CRM114-Status: UNSURE (   9.59  )
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

The rkisp1 driver requires the sensor to implement the pixel rate
control. Trying to operate without it will cause an error when starting
streaming. Catch the issue earlier, at bound time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
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
index 689885ac2e84..56781b53dd83 100644
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
