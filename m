Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EA79CE7A91
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 00:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KWrEbqQAhdcBLTCgHrCHVhCqyrG5iW2bJ5AtphPnMg=; b=z9t9RPhHJ1SxKL
	1hbszIt+4MKaTyTjHCa4TIr9iIRG2TH2DDKqwR+q9Khtos9zHvZAHo9B+ce/G6+PedbQeeeFL9hLl
	CS//phHoMQqEGdC/mbWPVq2kMemoh6ebuLCc8PX4XCcFl+VMKWWinmOjfrtar5wojrHTsm8bSZEsG
	rOvHvCftKrn8hHSQOjzYC5pLeVxCW+C0LabM48vaviFLNgnmS4itouu9X8zfJUFHqG5fJohvKNLL0
	WfzIlIgKCv5u+iB0TOodr/MdP3hjYF+/GxwqpitolIUsvR5rehuzCDmrkorXl0M7HKn+OIUZOsqtO
	hrI4Jg0lcXDilx+7LNlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf8-00D23e-28;
	Mon, 25 Sep 2023 00:41:22 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf3-00D1yi-2u
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 00:41:19 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F1CCF3354;
	Mon, 25 Sep 2023 02:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695602377;
	bh=HXadBDWRlBMZmOR752TvSjpgL7wm3+fD905ljEkokkY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CmvyY6JX/PuObspW+EeB0KIXYladvaJonO6t0/Vgjh+fZaGcw2kDvqc4zg3KefDDu
	 l51/VfEmaPMZEqHQCPTAHOCsqYgNQA80qKnceqQ7YQSTAcmdfeiIpjqtiBrBJ0Vp/Z
	 6xMgrF5wzSnyvWeDeGOPgJndWZ1m7hooHGflQgMY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 10/14] media: rkisp1: resizer: Constify argument and local variables
Date: Mon, 25 Sep 2023 03:41:08 +0300
Message-ID: <20230925004112.22797-11-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
References: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_174118_098047_1A658E7D 
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

Pointers to v4l2_mbus_framefmt and v4l2_rect instances don't need to be
modified when configuring the resizer. Make them const.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-resizer.c  | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index bca111711cee..26f9c16ccc3e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -206,10 +206,10 @@ static void rkisp1_rsz_disable(struct rkisp1_resizer *rsz,
 }
 
 static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
-				   struct v4l2_rect *sink_y,
-				   struct v4l2_rect *sink_c,
-				   struct v4l2_rect *src_y,
-				   struct v4l2_rect *src_c,
+				   const struct v4l2_rect *sink_y,
+				   const struct v4l2_rect *sink_c,
+				   const struct v4l2_rect *src_y,
+				   const struct v4l2_rect *src_c,
 				   enum rkisp1_shadow_regs_when when)
 {
 	u32 ratio, rsz_ctrl = 0;
@@ -270,9 +270,9 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 			      enum rkisp1_shadow_regs_when when)
 {
 	const struct rkisp1_rsz_yuv_mbus_info *sink_yuv_info, *src_yuv_info;
+	const struct v4l2_mbus_framefmt *src_fmt, *sink_fmt;
+	const struct v4l2_rect *sink_crop;
 	struct v4l2_rect sink_y, sink_c, src_y, src_c;
-	struct v4l2_mbus_framefmt *src_fmt, *sink_fmt;
-	struct v4l2_rect *sink_crop;
 
 	sink_fmt = v4l2_subdev_get_pad_format(&rsz->sd, sd_state,
 					      RKISP1_RSZ_PAD_SINK);
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
