Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8C06D33990
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 15:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xVbn/A9TyWh+UqA+HXZ5yjDHulpbzHJO9U6Zls4B5sw=; b=TG1sHEEnDgGCgr
	lpHsjuhuodLU4Fk7Um8CPh74z6YldNZV4mNNG7oRJ5l//+P7SnggnM13fCXDjDSUiI0m7KWccZMiq
	vLxUAbJEVWjkCltEDMHkPLkSKeppml0gsuUHcPof5w0Pl2g39/8FsEEx8Ayvgd+Tsguq3P2CWThOj
	dxtdbSHtAmHTPnBteMjvpML6i5epHOhLY+u+/hPykdJn3GkmGG5eHXA64U35ieFXqtXRV6EipI0WN
	UkobozyX+xsg8hgQCiieJ2bsaAQisWrbunhepzZmDq/lWA2OBAlBL6nF83b20r3pOKjIJ9YsMTygE
	3mpefFMj+TpQBslGH7mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5RHh-0000000BEb6-31bq;
	Mon, 28 Oct 2024 15:03:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Qqr-0000000B8w0-2z7Y
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Oct 2024 14:36:15 +0000
Received: from ideasonboard.com (mob-5-90-59-111.net.vodafone.it [5.90.59.111])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4B625743;
	Mon, 28 Oct 2024 15:36:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1730126167;
	bh=HPD8ZRLLtnHVf726wKWAdK5FV3gLOLtXJ8mQomeHB0c=;
	h=From:To:Cc:Subject:Date:From;
	b=ldDufEew9c6KgFzUw6zPdpI8LMrJHCwB0B48d3pctOwjGoHs/Pjoi34Q7/3AcfDB8
	 edb3TFSa60Ppe9PJB2DFSFAB+0khLDBCmiI+rWg/hvog/zEepm1XpV1yt8SN9zpbZw
	 45oLx2mY/MFT7HBkCmumy2rQBOae6tIJ90p4qdLE=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org (open list:ROCKCHIP ISP V1 DRIVER)
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org (open list:ROCKCHIP ISP V1 DRIVER),
	Adam Pigg <adam@piggz.co.uk>
Subject: [PATCH v2] media: rkisp1: Reduce min_queued_buffers to 0
Date: Mon, 28 Oct 2024 15:35:52 +0100
Message-ID: <20241028143553.36704-1-jacopo.mondi@ideasonboard.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_073613_914566_F07851D1 
X-CRM114-Status: GOOD (  12.26  )
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

There apparently is no reason to require 3 queued buffers to call
streamon() for the RkISP1 as the driver operates with a scratch buffer
where frames can be directed to if there's no available buffer provided
by userspace.

Reduce the number of required buffers to 0 to allow applications to
operate by queueing capture buffers on-demand.

Tested with libcamera, by operating with a single capture request. The
same request (and associated capture buffer) gets recycled once
completed. This of course causes a frame rate drop but doesn't hinder
operations.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
The first version of this patch set min_queued_buffers to 1, but setting it
to 0 doesn't compromise operations and it's even better as it allows application
to queue buffers to the capture devices on-demand. If a buffer is not provided
to the DMA engines, image data gets directed to the driver's internal scratch
buffer.
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 2bddb4fa8a5c..5fcf9731f41b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -35,8 +35,6 @@
 #define RKISP1_SP_DEV_NAME	RKISP1_DRIVER_NAME "_selfpath"
 #define RKISP1_MP_DEV_NAME	RKISP1_DRIVER_NAME "_mainpath"

-#define RKISP1_MIN_BUFFERS_NEEDED 3
-
 enum rkisp1_plane {
 	RKISP1_PLANE_Y	= 0,
 	RKISP1_PLANE_CB	= 1,
@@ -1563,7 +1561,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
 	q->ops = &rkisp1_vb2_ops;
 	q->mem_ops = &vb2_dma_contig_memops;
 	q->buf_struct_size = sizeof(struct rkisp1_buffer);
-	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;
+	q->min_queued_buffers = 0;
 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 	q->lock = &node->vlock;
 	q->dev = cap->rkisp1->dev;
--
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
