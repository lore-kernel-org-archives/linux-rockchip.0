Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37E41C54E68
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Mar 2024 13:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MdcpqK1Iy6E75SYuzSSYfnfy0hceiBejLPRle9aMDsg=; b=qWgs/pXDWKXY+H
	pZhsaZ/7XlvwrAe2zriLqxN/J8i8Tnlu6vwqs41tYnc3O0iiPhAWpxGsaXv4XFGPocO66Q067u7Qr
	ToveaekT5bbR0pHARmTkL6HT7M1KmV11aITQ2QMB6dKcnECKYGuSQwNwYBI45DWMe6/1kK+iMyok1
	aU2sk3Klbl9lwQF11rg1JHYDB9uX+6QYH9MjrpFcIisRg4aQVwJH6H+g3j8AoKxVskxhD68AxhgdM
	tJUtrLy28Yy+J9tSoIJfhtEFgDxlMSaSS4I6fuoZIreu3FFSSwVzJt4zgC7n41qE9lz65pr8HMKg3
	9hc+JV0jTRqa1B7+1Nvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmDMj-00000008iK9-1pdj;
	Mon, 18 Mar 2024 13:49:25 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmDMU-00000008iEK-2GCg
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Mar 2024 13:49:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710769746;
	bh=JLG8sukgDM2O23Tr0HIpeWmUSEr+XlkIyVAeaAqkV9w=;
	h=From:To:Cc:Subject:Date:From;
	b=abOwOHg1MxXA9XUrHhafmXL36GzADANXBqlafBo90/SEwYHmogN5aclvdhIWQ/FE7
	 ZM2Hi5vA0vCJv+XQaYLWaGhmF/SsLXHZ5k3uNf2KPLTdnZKWM76LHu6w1AQCyvMC5v
	 NHszyuYNY5oQkwZXBPzbujX6NPX5A6DpS2wr6p6KAi3xpZLv94/TOlakQFbGhc+enj
	 ldebTtMNhSTnbQe1Qz3NQOWGV9Uv+uGwCgJbGTv0oIMe+Lnb7VwF5onbeTrFd8UptC
	 rHL0GU6aOSPH27LUwjaAYQa5B7v1qwEqgt/LIHOGmBkrHfMXUKMCqKLjs2iZb38ix9
	 KXScahMujO8wQ==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2A6EB3781183;
	Mon, 18 Mar 2024 13:49:06 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	hverkuil-cisco@xs4all.nl,
	nicolas@ndufresne.ca
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v21.1 3/9] media: test-drivers: Set REQBUFS minimum number of buffers
Date: Mon, 18 Mar 2024 14:48:56 +0100
Message-Id: <20240318134856.110687-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_064911_494831_16D963E3 
X-CRM114-Status: GOOD (  15.81  )
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

Instead of using 'min_queued_buffers' field to specify the
minimum number of buffers to be allocated when calling REQBUF
use 'min_reqbufs_allocation' field which is dedicated to this
purpose.

Change the minimum requested buffers to 2 for vivid-meta-out
and vivid-touch-cap drivers when creating the queues.
That allows to remove code which prohibe to allocate only
one buffer in their respective queue setup functions.

While at it rename vivid_create_queue() parameter.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 21.1:
- Change min requested buffers for vivid-meta-out and vivid-touch-cap.
- Remove useless call in their queue setup functions.

 drivers/media/test-drivers/vimc/vimc-capture.c     | 2 +-
 drivers/media/test-drivers/vivid/vivid-core.c      | 8 ++++----
 drivers/media/test-drivers/vivid/vivid-meta-out.c  | 4 ----
 drivers/media/test-drivers/vivid/vivid-touch-cap.c | 4 ----
 4 files changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/media/test-drivers/vimc/vimc-capture.c b/drivers/media/test-drivers/vimc/vimc-capture.c
index 2a2d19d23bab..97693561f1e4 100644
--- a/drivers/media/test-drivers/vimc/vimc-capture.c
+++ b/drivers/media/test-drivers/vimc/vimc-capture.c
@@ -432,7 +432,7 @@ static struct vimc_ent_device *vimc_capture_add(struct vimc_device *vimc,
 	q->mem_ops = vimc_allocator == VIMC_ALLOCATOR_DMA_CONTIG
 		   ? &vb2_dma_contig_memops : &vb2_vmalloc_memops;
 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
-	q->min_queued_buffers = 2;
+	q->min_reqbufs_allocation = 2;
 	q->lock = &vcapture->lock;
 	q->dev = v4l2_dev->dev;
 
diff --git a/drivers/media/test-drivers/vivid/vivid-core.c b/drivers/media/test-drivers/vivid/vivid-core.c
index 159c72cbb5bf..e2d4f10003f3 100644
--- a/drivers/media/test-drivers/vivid/vivid-core.c
+++ b/drivers/media/test-drivers/vivid/vivid-core.c
@@ -861,7 +861,7 @@ static const struct media_device_ops vivid_media_ops = {
 static int vivid_create_queue(struct vivid_dev *dev,
 			      struct vb2_queue *q,
 			      u32 buf_type,
-			      unsigned int min_queued_buffers,
+			      unsigned int min_reqbufs_allocation,
 			      const struct vb2_ops *ops)
 {
 	if (buf_type == V4L2_BUF_TYPE_VIDEO_CAPTURE && dev->multiplanar)
@@ -898,7 +898,7 @@ static int vivid_create_queue(struct vivid_dev *dev,
 	q->mem_ops = allocators[dev->inst] == 1 ? &vb2_dma_contig_memops :
 						  &vb2_vmalloc_memops;
 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
-	q->min_queued_buffers = supports_requests[dev->inst] ? 0 : min_queued_buffers;
+	q->min_reqbufs_allocation = min_reqbufs_allocation;
 	q->lock = &dev->mutex;
 	q->dev = dev->v4l2_dev.dev;
 	q->supports_requests = supports_requests[dev->inst];
@@ -1364,7 +1364,7 @@ static int vivid_create_queues(struct vivid_dev *dev)
 	if (dev->has_meta_out) {
 		/* initialize meta_out queue */
 		ret = vivid_create_queue(dev, &dev->vb_meta_out_q,
-					 V4L2_BUF_TYPE_META_OUTPUT, 1,
+					 V4L2_BUF_TYPE_META_OUTPUT, 2,
 					 &vivid_meta_out_qops);
 		if (ret)
 			return ret;
@@ -1373,7 +1373,7 @@ static int vivid_create_queues(struct vivid_dev *dev)
 	if (dev->has_touch_cap) {
 		/* initialize touch_cap queue */
 		ret = vivid_create_queue(dev, &dev->vb_touch_cap_q,
-					 V4L2_BUF_TYPE_VIDEO_CAPTURE, 1,
+					 V4L2_BUF_TYPE_VIDEO_CAPTURE, 2,
 					 &vivid_touch_cap_qops);
 		if (ret)
 			return ret;
diff --git a/drivers/media/test-drivers/vivid/vivid-meta-out.c b/drivers/media/test-drivers/vivid/vivid-meta-out.c
index 4a569a6e58be..82ab3b26914e 100644
--- a/drivers/media/test-drivers/vivid/vivid-meta-out.c
+++ b/drivers/media/test-drivers/vivid/vivid-meta-out.c
@@ -18,7 +18,6 @@ static int meta_out_queue_setup(struct vb2_queue *vq, unsigned int *nbuffers,
 				struct device *alloc_devs[])
 {
 	struct vivid_dev *dev = vb2_get_drv_priv(vq);
-	unsigned int q_num_bufs = vb2_get_num_buffers(vq);
 	unsigned int size =  sizeof(struct vivid_meta_out_buf);
 
 	if (!vivid_is_webcam(dev))
@@ -31,9 +30,6 @@ static int meta_out_queue_setup(struct vb2_queue *vq, unsigned int *nbuffers,
 		sizes[0] = size;
 	}
 
-	if (q_num_bufs + *nbuffers < 2)
-		*nbuffers = 2 - q_num_bufs;
-
 	*nplanes = 1;
 	return 0;
 }
diff --git a/drivers/media/test-drivers/vivid/vivid-touch-cap.c b/drivers/media/test-drivers/vivid/vivid-touch-cap.c
index 4b3c6ea0afde..3888c21b4d0c 100644
--- a/drivers/media/test-drivers/vivid/vivid-touch-cap.c
+++ b/drivers/media/test-drivers/vivid/vivid-touch-cap.c
@@ -13,7 +13,6 @@ static int touch_cap_queue_setup(struct vb2_queue *vq, unsigned int *nbuffers,
 				 struct device *alloc_devs[])
 {
 	struct vivid_dev *dev = vb2_get_drv_priv(vq);
-	unsigned int q_num_bufs = vb2_get_num_buffers(vq);
 	struct v4l2_pix_format *f = &dev->tch_format;
 	unsigned int size = f->sizeimage;
 
@@ -24,9 +23,6 @@ static int touch_cap_queue_setup(struct vb2_queue *vq, unsigned int *nbuffers,
 		sizes[0] = size;
 	}
 
-	if (q_num_bufs + *nbuffers < 2)
-		*nbuffers = 2 - q_num_bufs;
-
 	*nplanes = 1;
 	return 0;
 }
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
