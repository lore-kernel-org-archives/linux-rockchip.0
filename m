Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AA3DD5B166
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Oct 2024 08:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WmHIJejW8XYV9b/x3RM90rX3sNxeX0/RSZmejI6ak7M=; b=L44EmF2BcAi0/O
	lS4Yegqn2jgv+4+RRHno3mv+DGuLf8d4+E5EwiomhE2hn3gSKSqiJ+TP8+0Nn21CrfBDRmnuCnmgv
	FgJs72YWIEFNZ6MkQ1/Qwhv8uRhX+41Orfhy9Afw075CFJQtzmD31uRyZk1fzCYcs2FCAowXfKQMA
	Cd1tmXlw10oqSfw0Jo7jwxneoa9YhzyzRroFkEGzMorZE7NNDdnnIILIddVp9NdJOAaQLNLfRK3b2
	odvANnw2IZcrSjDvZKwf2gwQXJaZtxYkeRti9MXEdXPVswjL6MurQ9YXuWN2DSoqXfh2XCxN24Tnl
	ivezBhP4A1Day/IRjPNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5hV1-0000000Df4u-1lu2;
	Tue, 29 Oct 2024 08:22:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5hTn-0000000Dev0-2XWL
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Oct 2024 08:21:33 +0000
Received: from ideasonboard.com (mob-5-90-50-182.net.vodafone.it [5.90.50.182])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BC5D44D4;
	Tue, 29 Oct 2024 09:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1730190087;
	bh=gY8gAnJmjmAm1iIjaHWycvChikO7TknVEVxU2X2bhko=;
	h=From:To:Cc:Subject:Date:From;
	b=TeG6JMJCnpdI8pGSB8j6/TKnkCgJJKt5ERu65UgZJWzWaVYl4sH0aKjsSX9VBN5SY
	 ePKxUq99hVTT2dYsm1JfscjX18u8X3KSr7on62cDKiumgy7rO+heUsG/TIBi+D473x
	 cDVEKqzoSRp0Pa2mzP+TLXdOm2nOiN2Mv3GLPta8=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	linux-media@vger.kernel.org (open list:ROCKCHIP ISP V1 DRIVER)
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org (open list:ROCKCHIP ISP V1 DRIVER),
	Adam Pigg <adam@piggz.co.uk>
Subject: [PATCH v3] media: rkisp1: Remove min_queued_buffers
Date: Tue, 29 Oct 2024 09:21:16 +0100
Message-ID: <20241029082117.55385-1-jacopo.mondi@ideasonboard.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_012132_035270_F6A6A82D 
X-CRM114-Status: GOOD (  11.62  )
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

There apparently is no reason to require 3 queued buffers for RkISP1,
as the driver operates with a scratch buffer where data can be
directed to if there's no available buffer provided by userspace.

Reduce the number of required buffers to 0 by removing the
initialization of min_queued_buffers, to allow applications to operate
by queueing capture buffers on-demand.

Tested with libcamera, by operating with a single capture request. The
same request (and the associated capture buffer) gets recycled once
completed. This of course causes a frame rate drop but doesn't hinder
operations.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
v2->v3:
- Remove min_queued_buffers initialization

v1->v2:
The first version of this patch set min_queued_buffers to 1, but setting it
to 0 doesn't compromise operations and it's even better as it allows application
to queue buffers to the capture devices on-demand. If a buffer is not provided
to the DMA engines, image data gets directed to the driver's internal scratch
buffer.
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 2bddb4fa8a5c..2f0c610e74b9 100644
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
@@ -1563,7 +1561,6 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
 	q->ops = &rkisp1_vb2_ops;
 	q->mem_ops = &vb2_dma_contig_memops;
 	q->buf_struct_size = sizeof(struct rkisp1_buffer);
-	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;
 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 	q->lock = &node->vlock;
 	q->dev = cap->rkisp1->dev;
--
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
