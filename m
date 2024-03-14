Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97CC3C54E67
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Mar 2024 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVA0/tcpycr88VkuNxUVaAzd4Yw+hrPtyhkeSvety0E=; b=49bWWFWSBuJY+G
	WzVZx1Z2NjiAt0wFiNriCUlMALl1y95KjWxXwIlwKRTh+wCkvdRJ37BTB9W/4yDLwwobosXk85w9F
	XhGSaTfCkJ1qF6HHaOCC1/cDtENUtLPv5awsJ+cvKvhL84yEl/HsxP2go6jXubJ9TaHpyK3TvSkOR
	xq9ufTvFRFRoVnBeGdnaRkpzBUufFuSz183Zk8vxh6bpaTocBKgVCiC02ldgZ/v7ub9EdcRjJadwt
	0GSM/UzYIMhZ6cVWsVqRPNbyVfhbmVHJzeM7NPmlnQGEYrcPvgNFCfHcon55BPRa64NdrBF5S5X8o
	k/+BX6Z12Lc4+HhKADbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkn4X-0000000ErO1-2dU5;
	Thu, 14 Mar 2024 15:32:45 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkn4P-0000000ErGd-1qs6
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Mar 2024 15:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710430354;
	bh=N3rnu1TmY3k6wbtelOYee/CdzF0xUD+mi+uZbUMnoKk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sVTs57DZ9qUSowSL1icrzBSodQAEwsbR0SiVRw9FaNKa2MQ9FfzQCfLd3ieLvCWuB
	 nTHyOLXLT6Mz4a9egPEzjrHXe9SXI9LRLUHkojKeMqD+pWJwGmEeW3+pZVP984BcGU
	 oEcpsVQBAHCc/vO5fO0o2gsBPlElvvXv5znRmjbyWyWWZzR/aDp4EESmTtXGEP/TJI
	 JOo6ZQCRYiR5EhBQfcBqCDc/GnoKjtGA+hrrt0h0Sui4Su6RZrkEEPJaKv5t81hn0S
	 BIT4Dr8yliQTm2GYQaO3n/aDmbMLUlKAwikRLPepMkfLzs51iRqRps5LyyrNtg49IK
	 RLzsuxwA0Lv9Q==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0CAAD37820F7;
	Thu, 14 Mar 2024 15:32:34 +0000 (UTC)
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
Subject: [PATCH v21 2/9] videobuf2: Add min_reqbufs_allocation field to vb2_queue structure
Date: Thu, 14 Mar 2024 16:32:19 +0100
Message-Id: <20240314153226.197445-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_083237_699850_7168AB44 
X-CRM114-Status: GOOD (  24.76  )
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

Add 'min_reqbufs_allocation' field in the vb2_queue structure so drivers
can specify the minimum number of buffers to allocate when calling
VIDIOC_REQBUFS.
When initializing the queue, v4l2 core makes sure that the following
constraints are respected:
- the minimum number of buffers to allocate must be at least 2 because
one buffer is used by the hardware while the other is being processed
by userspace.
-if the driver needs 'min_queued_buffers' in the queue before calling
start_streaming(), then the minimum requirement is 'min_queued_buffers + 1'
to keep at least one buffer available for userspace.

Simplify __vb2_init_fileio() by using 'min_reqbufs_allocation' directly
to avoid duplicating the minimum number of buffers to allocate computation.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/common/videobuf2/videobuf2-core.c   | 38 +++++++++++--------
 include/media/videobuf2-core.h                | 15 +++++++-
 2 files changed, 37 insertions(+), 16 deletions(-)

diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
index d8b3c04cb3b5..58c495b253ce 100644
--- a/drivers/media/common/videobuf2/videobuf2-core.c
+++ b/drivers/media/common/videobuf2/videobuf2-core.c
@@ -866,7 +866,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
 	/*
 	 * Make sure the requested values and current defaults are sane.
 	 */
-	num_buffers = max_t(unsigned int, *count, q->min_queued_buffers);
+	num_buffers = max_t(unsigned int, *count, q->min_reqbufs_allocation);
 	num_buffers = min_t(unsigned int, num_buffers, q->max_num_buffers);
 	memset(q->alloc_devs, 0, sizeof(q->alloc_devs));
 	/*
@@ -918,7 +918,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
 	 * There is no point in continuing if we can't allocate the minimum
 	 * number of buffers needed by this vb2_queue.
 	 */
-	if (allocated_buffers < q->min_queued_buffers)
+	if (allocated_buffers < q->min_reqbufs_allocation)
 		ret = -ENOMEM;
 
 	/*
@@ -2524,6 +2524,25 @@ int vb2_core_queue_init(struct vb2_queue *q)
 	if (WARN_ON(q->supports_requests && q->min_queued_buffers))
 		return -EINVAL;
 
+	/*
+	 * The minimum requirement is 2: one buffer is used
+	 * by the hardware while the other is being processed by userspace.
+	 */
+	if (q->min_reqbufs_allocation < 2)
+		q->min_reqbufs_allocation = 2;
+
+	/*
+	 * If the driver needs 'min_queued_buffers' in the queue before
+	 * calling start_streaming() then the minimum requirement is
+	 * 'min_queued_buffers + 1' to keep at least one buffer available
+	 * for userspace.
+	 */
+	if (q->min_reqbufs_allocation < q->min_queued_buffers + 1)
+		q->min_reqbufs_allocation = q->min_queued_buffers + 1;
+
+	if (WARN_ON(q->min_reqbufs_allocation > q->max_num_buffers))
+		return -EINVAL;
+
 	INIT_LIST_HEAD(&q->queued_list);
 	INIT_LIST_HEAD(&q->done_list);
 	spin_lock_init(&q->done_lock);
@@ -2717,7 +2736,6 @@ static int __vb2_init_fileio(struct vb2_queue *q, int read)
 	struct vb2_fileio_data *fileio;
 	struct vb2_buffer *vb;
 	int i, ret;
-	unsigned int count = 0;
 
 	/*
 	 * Sanity check
@@ -2738,18 +2756,8 @@ static int __vb2_init_fileio(struct vb2_queue *q, int read)
 	if (q->streaming || vb2_get_num_buffers(q) > 0)
 		return -EBUSY;
 
-	/*
-	 * Start with q->min_queued_buffers + 1, driver can increase it in
-	 * queue_setup()
-	 *
-	 * 'min_queued_buffers' buffers need to be queued up before you
-	 * can start streaming, plus 1 for userspace (or in this case,
-	 * kernelspace) processing.
-	 */
-	count = max(2, q->min_queued_buffers + 1);
-
 	dprintk(q, 3, "setting up file io: mode %s, count %d, read_once %d, write_immediately %d\n",
-		(read) ? "read" : "write", count, q->fileio_read_once,
+		(read) ? "read" : "write", q->min_reqbufs_allocation, q->fileio_read_once,
 		q->fileio_write_immediately);
 
 	fileio = kzalloc(sizeof(*fileio), GFP_KERNEL);
@@ -2763,7 +2771,7 @@ static int __vb2_init_fileio(struct vb2_queue *q, int read)
 	 * Request buffers and use MMAP type to force driver
 	 * to allocate buffers by itself.
 	 */
-	fileio->count = count;
+	fileio->count = q->min_reqbufs_allocation;
 	fileio->memory = VB2_MEMORY_MMAP;
 	fileio->type = q->type;
 	q->fileio = fileio;
diff --git a/include/media/videobuf2-core.h b/include/media/videobuf2-core.h
index 667bf9ee1101..4a8b9135cec8 100644
--- a/include/media/videobuf2-core.h
+++ b/include/media/videobuf2-core.h
@@ -549,9 +549,21 @@ struct vb2_buf_ops {
  *		@start_streaming can be called. Used when a DMA engine
  *		cannot be started unless at least this number of buffers
  *		have been queued into the driver.
- *		VIDIOC_REQBUFS will ensure at least @min_queued_buffers
+ *		VIDIOC_REQBUFS will ensure at least @min_queued_buffers + 1
  *		buffers will be allocated. Note that VIDIOC_CREATE_BUFS will not
  *		modify the requested buffer count.
+ * @min_reqbufs_allocation: the minimum number of buffers to be allocated when
+ *		calling VIDIOC_REQBUFS. Note that VIDIOC_CREATE_BUFS will *not*
+ *		modify the requested buffer count and does not use this field.
+ *		Drivers can set this if there has to be a certain number of
+ *		buffers available for the hardware to work effectively.
+ *		This allows calling VIDIOC_REQBUFS with a buffer count of 1 and
+ *		it will be automatically adjusted to a workable	buffer count.
+ *		If set, then @min_reqbufs_allocation must be larger than
+ *		@min_queued_buffers + 1.
+ *		If this field is > 3, then it is highly recommended that the
+ *		driver implements the V4L2_CID_MIN_BUFFERS_FOR_CAPTURE/OUTPUT
+ *		control.
  * @alloc_devs:	&struct device memory type/allocator-specific per-plane device
  */
 /*
@@ -622,6 +634,7 @@ struct vb2_queue {
 	u32				timestamp_flags;
 	gfp_t				gfp_flags;
 	u32				min_queued_buffers;
+	u32				min_reqbufs_allocation;
 
 	struct device			*alloc_devs[VB2_MAX_PLANES];
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
