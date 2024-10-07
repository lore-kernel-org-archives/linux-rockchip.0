Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 125BACFB441
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 13:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iJAFsdM8jq2EouejuWCHmLKK7xTx/werOhjmL9plpU8=; b=ZM8l/vSvKPY4e8
	0d+2Z/n2zRYWUhs3Nh/6vQ8yGNajLfZFvwkcbmdsxM9fiw+GnsShlo6FXnlDOCz+0X6fv3Jnb3oF3
	FJ23eq+WyWXoMrv6ya1Yrxn/XUVOn3g5WJZ6c6woatyNCVUUNReDgsbXSVlJO8zaohWE0rMLBOggk
	xruek20qGTNBXRyQWLrlPaI9EEiB14BfC6x2lStp6yLkZUwN9y0G/z1Horis4jzrit5fKthiCmZc4
	SPO22R6zg43fZN+gMj0pfRfh+P43KdbVVq3LU+oNX1I93Ns8IUyuncY1Zsv4sKT6xUqKDz0qNB4e2
	hA8FYdJxH/6n+jKhpk4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxnX1-00000002SQ2-0Dce;
	Mon, 07 Oct 2024 13:12:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxn4U-00000002NN6-0veb
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 12:42:43 +0000
Received: from ideasonboard.com (unknown [5.179.165.198])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 43A5649E;
	Mon,  7 Oct 2024 14:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1728304861;
	bh=cIgOXRu/QnyKT6Kc7YLPsAf05GbLiRTeiJs2EJHzoZw=;
	h=From:To:Cc:Subject:Date:From;
	b=W4eTM81ilY3L2TGxgvdaMvuH8JjevuQR494wC/1QEPbbWT9aM6oWPRNMlr/wDs8eZ
	 QjUsoorgF3tF3eMCKlw1P+yoZEu3ZAnlXpsIMlrDi8E/3WrYeVRXps2jiiUyVnjlrh
	 bHGCcmw3BMQIYGHsCxuZSE9GSYycDIcmOpO4Sy0o=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-media@vger.kernel.org (open list:ROCKCHIP ISP V1 DRIVER)
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org (open list:ROCKCHIP ISP V1 DRIVER),
	Adam Pigg <adam@piggz.co.uk>
Subject: [PATCH] media: rkisp1: Reduce min_queued_buffers to 1
Date: Mon,  7 Oct 2024 14:42:24 +0200
Message-ID: <20241007124225.63463-1-jacopo.mondi@ideasonboard.com>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_054242_443656_18815CFE 
X-CRM114-Status: GOOD (  10.50  )
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

Reduce the number of required buffers to 1 to allow applications to
operate with a single queued buffer.

Tested with libcamera, by operating with a single capture a request. The
same request (and associated capture buffer) gets recycled once
completed. This of course causes a frame rate drop but doesn't hinder
operations.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---

Adam,
   a few months ago you were exercizing your pinhole app with a single capture
request for StillCapture operations and you got the video device to hang because
no enough buffers where provided.

This small change should be enough to unblock you. Could you maybe give it a
spin if you're still working on this ?

Thanks
   j
---

 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 2bddb4fa8a5c..34adaecdee54 100644
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
+	q->min_queued_buffers = 1;
 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 	q->lock = &node->vlock;
 	q->dev = cap->rkisp1->dev;
--
2.46.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
