Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02EC4C54E60
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Mar 2024 15:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRY7+JvZWvBgoe0gj8Ddy0XfAcFYiy47onX3xJkNJYM=; b=SykHgwS+ykuDMh
	rK+YQ3WwxHCmnqOnEqmFjaIEkYvhYEFWrBz7zm3SspseFc1Szscv/Tl0tcySwxS7zqhivyh1XqucQ
	fUvkb0BjERFQxQrxjD6tLe3TwaycoBHvbNTPfgcrzYcPldMqVJ6AdC2YHR+Q8C6Y6pOQ1vE+roFK7
	eULezfRVW79kYnC+PH7WhEjQabEnd0Y5jLhrVxxiPaMa2jzIO6+8M4oiFxHcnrf8KH9igjWRVPzUZ
	A7NnEA3kb/WBaMt612pOnhufYGOhO45NHCILWR6mpisJEaPoRyd3BED5P40KD2OT74RxIWqsa1t+c
	o3eMYTSy/Heq1daLstxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkn4k-0000000ErXA-42zN;
	Thu, 14 Mar 2024 15:32:58 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkn4S-0000000ErJD-45uK
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Mar 2024 15:32:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710430357;
	bh=xBHj61ms77yh6TofIx3mWpzyvQ5wa//86PofqFg3BeI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=p7nYbKC3xSaooL0Nw/TKIywmhw4GrFuvAtutCivQm4yokjbdA9bEkmZO3zSURJ00L
	 2jaMEd7N0qo9yFI2SFMB88xRbrqd0YSvJf5FeQMlILOa5PWuHfgCJedCA68OMJYQXt
	 vJs454tzlVDwi32Tq9iSxnNJ3Vc7AtE1ZddXUkzGYoiSmnwps43JKdAAqm0x+8KM5B
	 0MR0TBRGkr7zJE7LFpkKwlEIfqHee1cPy8YcJFRanralcsukd4Av/XEVZkTt5gSTSk
	 SYQjYyBnLSh4y7egHB+h3SOlRbugk1btXz+uKPd8+kGrmoEWWVxEuxx7l+2PPWTiE5
	 g0/18KKvuV9IQ==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1E40837820FF;
	Thu, 14 Mar 2024 15:32:37 +0000 (UTC)
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
Subject: [PATCH v21 6/9] media: core: Free range of buffers
Date: Thu, 14 Mar 2024 16:32:23 +0100
Message-Id: <20240314153226.197445-7-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_083241_305998_EF48F2FD 
X-CRM114-Status: GOOD (  19.13  )
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

Improve __vb2_queue_free() and __vb2_free_mem() to free
range of buffers and not only the last few buffers.
Introduce starting index to be flexible on range and change the loops
according to this parameter.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/common/videobuf2/videobuf2-core.c   | 56 +++++++++----------
 1 file changed, 26 insertions(+), 30 deletions(-)

diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
index ec81426d4d79..009cea95d662 100644
--- a/drivers/media/common/videobuf2/videobuf2-core.c
+++ b/drivers/media/common/videobuf2/videobuf2-core.c
@@ -540,17 +540,16 @@ static int __vb2_queue_alloc(struct vb2_queue *q, enum vb2_memory memory,
 }
 
 /*
- * __vb2_free_mem() - release all video buffer memory for a given queue
+ * __vb2_free_mem() - release video buffer memory for a given range of
+ * buffers in a given queue
  */
-static void __vb2_free_mem(struct vb2_queue *q, unsigned int buffers)
+static void __vb2_free_mem(struct vb2_queue *q, unsigned int start, unsigned int count)
 {
-	unsigned int buffer;
+	unsigned int i;
 	struct vb2_buffer *vb;
-	unsigned int q_num_buffers = vb2_get_num_buffers(q);
 
-	for (buffer = q_num_buffers - buffers; buffer < q_num_buffers;
-	     ++buffer) {
-		vb = vb2_get_buffer(q, buffer);
+	for (i = start; i < start + count; i++) {
+		vb = vb2_get_buffer(q, i);
 		if (!vb)
 			continue;
 
@@ -565,35 +564,33 @@ static void __vb2_free_mem(struct vb2_queue *q, unsigned int buffers)
 }
 
 /*
- * __vb2_queue_free() - free buffers at the end of the queue - video memory and
+ * __vb2_queue_free() - free @count buffers from @start index of the queue - video memory and
  * related information, if no buffers are left return the queue to an
  * uninitialized state. Might be called even if the queue has already been freed.
  */
-static void __vb2_queue_free(struct vb2_queue *q, unsigned int buffers)
+static void __vb2_queue_free(struct vb2_queue *q, unsigned int start, unsigned int count)
 {
-	unsigned int buffer;
-	unsigned int q_num_buffers = vb2_get_num_buffers(q);
+	unsigned int i;
 
 	lockdep_assert_held(&q->mmap_lock);
 
 	/* Call driver-provided cleanup function for each buffer, if provided */
-	for (buffer = q_num_buffers - buffers; buffer < q_num_buffers;
-	     ++buffer) {
-		struct vb2_buffer *vb = vb2_get_buffer(q, buffer);
+	for (i = start; i < start + count; i++) {
+		struct vb2_buffer *vb = vb2_get_buffer(q, i);
 
 		if (vb && vb->planes[0].mem_priv)
 			call_void_vb_qop(vb, buf_cleanup, vb);
 	}
 
 	/* Release video buffer memory */
-	__vb2_free_mem(q, buffers);
+	__vb2_free_mem(q, start, count);
 
 #ifdef CONFIG_VIDEO_ADV_DEBUG
 	/*
 	 * Check that all the calls were balanced during the life-time of this
 	 * queue. If not then dump the counters to the kernel log.
 	 */
-	if (q_num_buffers) {
+	if (vb2_get_num_buffers(q)) {
 		bool unbalanced = q->cnt_start_streaming != q->cnt_stop_streaming ||
 				  q->cnt_prepare_streaming != q->cnt_unprepare_streaming ||
 				  q->cnt_wait_prepare != q->cnt_wait_finish;
@@ -619,8 +616,8 @@ static void __vb2_queue_free(struct vb2_queue *q, unsigned int buffers)
 		q->cnt_stop_streaming = 0;
 		q->cnt_unprepare_streaming = 0;
 	}
-	for (buffer = 0; buffer < vb2_get_num_buffers(q); buffer++) {
-		struct vb2_buffer *vb = vb2_get_buffer(q, buffer);
+	for (i = start; i < start + count; i++) {
+		struct vb2_buffer *vb = vb2_get_buffer(q, i);
 		bool unbalanced;
 
 		if (!vb)
@@ -637,7 +634,7 @@ static void __vb2_queue_free(struct vb2_queue *q, unsigned int buffers)
 
 		if (unbalanced) {
 			pr_info("unbalanced counters for queue %p, buffer %d:\n",
-				q, buffer);
+				q, i);
 			if (vb->cnt_buf_init != vb->cnt_buf_cleanup)
 				pr_info("     buf_init: %u buf_cleanup: %u\n",
 					vb->cnt_buf_init, vb->cnt_buf_cleanup);
@@ -671,9 +668,8 @@ static void __vb2_queue_free(struct vb2_queue *q, unsigned int buffers)
 #endif
 
 	/* Free vb2 buffers */
-	for (buffer = q_num_buffers - buffers; buffer < q_num_buffers;
-	     ++buffer) {
-		struct vb2_buffer *vb = vb2_get_buffer(q, buffer);
+	for (i = start; i < start + count; i++) {
+		struct vb2_buffer *vb = vb2_get_buffer(q, i);
 
 		if (!vb)
 			continue;
@@ -713,7 +709,7 @@ EXPORT_SYMBOL(vb2_buffer_in_use);
 static bool __buffers_in_use(struct vb2_queue *q)
 {
 	unsigned int buffer;
-	for (buffer = 0; buffer < vb2_get_num_buffers(q); ++buffer) {
+	for (buffer = 0; buffer < q->max_num_buffers; ++buffer) {
 		struct vb2_buffer *vb = vb2_get_buffer(q, buffer);
 
 		if (!vb)
@@ -899,7 +895,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
 		 * queued without ever calling STREAMON.
 		 */
 		__vb2_queue_cancel(q);
-		__vb2_queue_free(q, q_num_bufs);
+		__vb2_queue_free(q, 0, q->max_num_buffers);
 		mutex_unlock(&q->mmap_lock);
 
 		q->is_busy = 0;
@@ -1001,7 +997,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
 		 * from already queued buffers and it will reset q->memory to
 		 * VB2_MEMORY_UNKNOWN.
 		 */
-		__vb2_queue_free(q, allocated_buffers);
+		__vb2_queue_free(q, first_index, allocated_buffers);
 		mutex_unlock(&q->mmap_lock);
 		return ret;
 	}
@@ -1126,7 +1122,7 @@ int vb2_core_create_bufs(struct vb2_queue *q, enum vb2_memory memory,
 		 * from already queued buffers and it will reset q->memory to
 		 * VB2_MEMORY_UNKNOWN.
 		 */
-		__vb2_queue_free(q, allocated_buffers);
+		__vb2_queue_free(q, *first_index, allocated_buffers);
 		mutex_unlock(&q->mmap_lock);
 		return -ENOMEM;
 	}
@@ -1741,7 +1737,7 @@ static int vb2_start_streaming(struct vb2_queue *q)
 		 * Forcefully reclaim buffers if the driver did not
 		 * correctly return them to vb2.
 		 */
-		for (i = 0; i < vb2_get_num_buffers(q); ++i) {
+		for (i = 0; i < q->max_num_buffers; ++i) {
 			vb = vb2_get_buffer(q, i);
 
 			if (!vb)
@@ -2147,7 +2143,7 @@ static void __vb2_queue_cancel(struct vb2_queue *q)
 	 * to vb2 in stop_streaming().
 	 */
 	if (WARN_ON(atomic_read(&q->owned_by_drv_count))) {
-		for (i = 0; i < vb2_get_num_buffers(q); i++) {
+		for (i = 0; i < q->max_num_buffers; i++) {
 			struct vb2_buffer *vb = vb2_get_buffer(q, i);
 
 			if (!vb)
@@ -2191,7 +2187,7 @@ static void __vb2_queue_cancel(struct vb2_queue *q)
 	 * call to __fill_user_buffer() after buf_finish(). That order can't
 	 * be changed, so we can't move the buf_finish() to __vb2_dqbuf().
 	 */
-	for (i = 0; i < vb2_get_num_buffers(q); i++) {
+	for (i = 0; i < q->max_num_buffers; i++) {
 		struct vb2_buffer *vb;
 		struct media_request *req;
 
@@ -2618,7 +2614,7 @@ void vb2_core_queue_release(struct vb2_queue *q)
 	__vb2_cleanup_fileio(q);
 	__vb2_queue_cancel(q);
 	mutex_lock(&q->mmap_lock);
-	__vb2_queue_free(q, vb2_get_num_buffers(q));
+	__vb2_queue_free(q, 0, q->max_num_buffers);
 	vb2_core_free_buffers_storage(q);
 	q->is_busy = 0;
 	mutex_unlock(&q->mmap_lock);
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
