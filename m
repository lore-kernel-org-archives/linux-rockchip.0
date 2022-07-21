Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20B2FC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jul 2022 06:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2r2i+iVn5OFRPxadm3XHmFS0d5k/p0QvuTtBVx+OyX8=; b=ApT47r/gvkTcX+
	NCeWn/jcfjgklHe/geE8ZrCD09siX6mcT4mmhxZoP3nJn/lWP92/ecs5cKroniLv27VPuUFwrYJIv
	//W2w+tbztx6JXsbG1+3w8nNQJsZ02r4HBjMFb41ZBLcZAo/dY+FSu2AtJz1kdzXXIZ5qoCZJAmGQ
	yycBlJ62x3oLMf5v9+r/jzpBl7O285QgCF7fS6eEh9ms9Bxi3VuUnpxCSq9v1gqAzMuaOsvK7rr79
	n1HGkAL0Z4mnsJzK400FSY/F5cYAy9ivPdmTahfljCf6NN8mWA3042v62Ck6JBzOJEmmCgmfqeHK9
	m5VoxWDjB0hycnlbNW3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEQ7Y-001LLJ-7W; Thu, 21 Jul 2022 06:57:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEQ7V-001LHm-Nk
	for linux-rockchip@lists.infradead.org; Thu, 21 Jul 2022 06:57:15 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E22DA496;
	Thu, 21 Jul 2022 08:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1658386631;
	bh=rre2EFq+a/iXK3MjyFHjjC/DQtSAI9OIMUGABD57OFU=;
	h=From:To:Cc:Subject:Date:From;
	b=GjOdOCC8014vLsl5mAO/xKH6ZT9uouhMFsWFUyIsLv/WIhzr47PVy7tmE5DAD9hmk
	 HJC78pZYyNmBJPCE/6uynL0+FFC+KoK3f5mIrF44+Qnv2TH+HCeuOksZSfC/5eFZFJ
	 +Yy1/x/5Uz4kdrma8ZqI45EWWf5X9JtxpC14mimY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] media: rkisp1: Make local immutable array variables static const
Date: Thu, 21 Jul 2022 09:57:06 +0300
Message-Id: <20220721065706.31710-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_235713_967630_9ABB6E63 
X-CRM114-Status: UNSURE (   8.88  )
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

The max_widths and max_heights variables in rkisp1_try_fmt() are
immutable and don't need to be allocated on the stack every time the
function is called. Make them static.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index ef3c9389d684..81177ad08cf0 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1162,13 +1162,17 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
 			   const struct rkisp1_capture_fmt_cfg **fmt_cfg,
 			   const struct v4l2_format_info **fmt_info)
 {
+	static const unsigned int max_widths[] = {
+		RKISP1_RSZ_MP_SRC_MAX_WIDTH,
+		RKISP1_RSZ_SP_SRC_MAX_WIDTH,
+	};
+	static const unsigned int max_heights[] = {
+		RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
+		RKISP1_RSZ_SP_SRC_MAX_HEIGHT,
+	};
 	const struct rkisp1_capture_config *config = cap->config;
 	const struct rkisp1_capture_fmt_cfg *fmt;
 	const struct v4l2_format_info *info;
-	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
-					    RKISP1_RSZ_SP_SRC_MAX_WIDTH };
-	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
-					     RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
 
 	fmt = rkisp1_find_fmt_cfg(cap, pixm->pixelformat);
 	if (!fmt) {
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
