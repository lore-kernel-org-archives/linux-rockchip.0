Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32F44E784B3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Oct 2023 12:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2ELUpzAkEU8yES9dwiEAnRW2uYtz6ONfhRJJIhWFI4=; b=bPGPYWPj2ygdN2
	+2tM8oGHs52fXVSTybck+1axqBokpj65KfYSqfKNS4ZalMyvbfacqKAChLtIJ7noEnHELD2xMtZeD
	4YT32SUDDkX5UNKpas5JN1hxAtgNEL+ZsU+r6NOH+s3Xr1YqCjML4MlTwalQFmeOvl74VPo7VzOsD
	eLZjy5WI8L1rFQ8TQa5ICnHKMkbgk1wPF5NWbx1lyPdpWFtqmNyE8D9d+YDwVB6kVD0EkyvhhkXk+
	X6HXrj+BFE/Lt4M+zFAWpXHQx8Eazg2lqvjgXBs+P3aLr7+66/UJCnHMwAoNTn421m053ZpGmlofB
	YXwsxOu+jipZy8gANUww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnHkX-00CfcA-0v;
	Mon, 02 Oct 2023 12:10:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnHhZ-00CbiZ-1W;
	Mon, 02 Oct 2023 12:07:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=T3Gk3vQKsEUZbl24nlYwB/xb8UprcBLJQHT2uhMpszk=; b=Jehh3Pd0ENVxvYAq8eGlRVM2Q4
	sXMS6sqRwuIVqLG9Edn5Q4IpmK4S7/UPaczPgNXFG6XzFVo8rdeXPnSgCqfjBG8mIeFZk//mMP5kG
	xntun9bH2OLPHFDVtsUP5IvB1rh5pGHI/3dGjwl3cdoGI89lk6/4LZCN41SLpFIdxfMj4Vc2ttb0D
	uUQ4IXtgPPE2+s7rcUhPQDhsPGgaajZseRSAU1w+L4PCtl492sf/QBc9f5wSc2XN0RkmR342yQCBG
	L0v9ZGOETyM2MeXiTMIrVj5uVGg8hq7CrgUnmjZPVhII82OsfSFVf1Sv3izTRaI2q7h+eV5i+PHgJ
	27onhsIA==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnHhP-0090UN-0Z;
	Mon, 02 Oct 2023 12:07:03 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:9537:67ca:c85e:d0ae])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3CB2F6607395;
	Mon,  2 Oct 2023 13:06:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696248411;
	bh=xNwpnkBcVLj30pw8lyVYd9bN7x+vY+ofwKdCBF1FVjY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YpeFIL7JIK2sBuiBJeqIUMq/T9mu7AuXzYTMmA75Z5f2Fya2e9eGYxNE8pNtaNgfD
	 /mVaov7mfwbWb+gqfHA9kUc54+FLKV4BrdYfRERvkQoEFl1lPTFmiilAQD3OIaG3no
	 DyeHnE+HweP4yu+l7kqW8FAl5OR3DI2Uhjg40cOVx87hvops7xP9usNmrz02JqIgEq
	 Vs6GJJpsc4g4Sy7hDjQl3USFwVErKbaAkMP/xpvNuZEA0W98Y+2zZgxDJ+KKqmwCmQ
	 qXhV7fECtGdwOEouKJhgYYx77tRFUHTXtv0vuOfSufuIVC5trEhFMxsr0qZlAwJUCw
	 Be/99JakqD3Bg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v9 50/53] media: core: Free range of buffers
Date: Mon,  2 Oct 2023 14:06:14 +0200
Message-Id: <20231002120617.119602-51-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002120617.119602-1-benjamin.gaignard@collabora.com>
References: <20231002120617.119602-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_130659_607861_CCC9F193 
X-CRM114-Status: GOOD (  17.08  )
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
Intoduce starting index to be flexible on range and change the loops
according to this parameters.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 9:
- fix compilation issue

 .../media/common/videobuf2/videobuf2-core.c   | 40 ++++++++-----------
 1 file changed, 17 insertions(+), 23 deletions(-)

diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
index 4cbc17e8b53e..b9b8a44b378c 100644
--- a/drivers/media/common/videobuf2/videobuf2-core.c
+++ b/drivers/media/common/videobuf2/videobuf2-core.c
@@ -515,13 +515,12 @@ static int __vb2_queue_alloc(struct vb2_queue *q, enum vb2_memory memory,
 /*
  * __vb2_free_mem() - release all video buffer memory for a given queue
  */
-static void __vb2_free_mem(struct vb2_queue *q, unsigned int buffers)
+static void __vb2_free_mem(struct vb2_queue *q, unsigned int start, unsigned int count)
 {
-	unsigned int buffer = 0;
-	long i = q->max_num_buffers;
+	unsigned int i;
 	struct vb2_buffer *vb;
 
-	for (i = q->max_num_buffers; i >= 0 && buffer < buffers; i--) {
+	for (i = start; i < q->max_num_buffers && i < start + count; i++) {
 		vb = vb2_get_buffer(q, i);
 		if (!vb)
 			continue;
@@ -533,36 +532,32 @@ static void __vb2_free_mem(struct vb2_queue *q, unsigned int buffers)
 			__vb2_buf_dmabuf_put(vb);
 		else
 			__vb2_buf_userptr_put(vb);
-		buffer++;
 	}
 }
 
 /*
- * __vb2_queue_free() - free buffers at the end of the queue - video memory and
+ * __vb2_queue_free() - free count buffers from start index of the queue - video memory and
  * related information, if no buffers are left return the queue to an
  * uninitialized state. Might be called even if the queue has already been freed.
  */
-static void __vb2_queue_free(struct vb2_queue *q, unsigned int buffers)
+static void __vb2_queue_free(struct vb2_queue *q, unsigned int start, unsigned int count)
 {
-	unsigned int buffer;
-	long i = q->max_num_buffers;
+	unsigned int i;
 
 	lockdep_assert_held(&q->mmap_lock);
 
 	/* Call driver-provided cleanup function for each buffer, if provided */
-	for (i = q->max_num_buffers, buffer = 0; i >= 0 && buffer < buffers; i--) {
+	for (i = start; i < q->max_num_buffers && i < start + count; i++) {
 		struct vb2_buffer *vb = vb2_get_buffer(q, i);
 
 		if (!vb)
 			continue;
-		if (vb->planes[0].mem_priv) {
+		if (vb->planes[0].mem_priv)
 			call_void_vb_qop(vb, buf_cleanup, vb);
-			buffer++;
-		}
 	}
 
 	/* Release video buffer memory */
-	__vb2_free_mem(q, buffers);
+	__vb2_free_mem(q, start, count);
 
 #ifdef CONFIG_VIDEO_ADV_DEBUG
 	/*
@@ -595,8 +590,8 @@ static void __vb2_queue_free(struct vb2_queue *q, unsigned int buffers)
 		q->cnt_stop_streaming = 0;
 		q->cnt_unprepare_streaming = 0;
 	}
-	for (buffer = 0; buffer < q->max_num_buffers; buffer++) {
-		struct vb2_buffer *vb = vb2_get_buffer(q, buffer);
+	for (i = 0; i < q->max_num_buffers; i++) {
+		struct vb2_buffer *vb = vb2_get_buffer(q, i);
 		bool unbalanced;
 
 		if (!vb)
@@ -613,7 +608,7 @@ static void __vb2_queue_free(struct vb2_queue *q, unsigned int buffers)
 
 		if (unbalanced) {
 			pr_info("unbalanced counters for queue %p, buffer %d:\n",
-				q, buffer);
+				q, i);
 			if (vb->cnt_buf_init != vb->cnt_buf_cleanup)
 				pr_info("     buf_init: %u buf_cleanup: %u\n",
 					vb->cnt_buf_init, vb->cnt_buf_cleanup);
@@ -647,7 +642,7 @@ static void __vb2_queue_free(struct vb2_queue *q, unsigned int buffers)
 #endif
 
 	/* Free vb2 buffers */
-	for (i = q->max_num_buffers, buffer = 0; i >= 0 && buffer < buffers; i--) {
+	for (i = start; i < q->max_num_buffers && i < start + count; i++) {
 		struct vb2_buffer *vb = vb2_get_buffer(q, i);
 
 		if (!vb)
@@ -655,7 +650,6 @@ static void __vb2_queue_free(struct vb2_queue *q, unsigned int buffers)
 
 		vb2_queue_remove_buffer(vb);
 		kfree(vb);
-		buffer++;
 	}
 
 	if (!vb2_get_num_buffers(q)) {
@@ -849,7 +843,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
 		 * queued without ever calling STREAMON.
 		 */
 		__vb2_queue_cancel(q);
-		__vb2_queue_free(q, q_num_bufs);
+		__vb2_queue_free(q, 0, q_num_bufs);
 		mutex_unlock(&q->mmap_lock);
 
 		/*
@@ -959,7 +953,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
 		 * from already queued buffers and it will reset q->memory to
 		 * VB2_MEMORY_UNKNOWN.
 		 */
-		__vb2_queue_free(q, allocated_buffers);
+		__vb2_queue_free(q, first_index, allocated_buffers);
 		mutex_unlock(&q->mmap_lock);
 		return ret;
 	}
@@ -1099,7 +1093,7 @@ int vb2_core_create_bufs(struct vb2_queue *q, enum vb2_memory memory,
 		 * from already queued buffers and it will reset q->memory to
 		 * VB2_MEMORY_UNKNOWN.
 		 */
-		__vb2_queue_free(q, allocated_buffers);
+		__vb2_queue_free(q, *first_index, allocated_buffers);
 		mutex_unlock(&q->mmap_lock);
 		return -ENOMEM;
 	}
@@ -2565,7 +2559,7 @@ void vb2_core_queue_release(struct vb2_queue *q)
 	__vb2_cleanup_fileio(q);
 	__vb2_queue_cancel(q);
 	mutex_lock(&q->mmap_lock);
-	__vb2_queue_free(q, q->max_num_buffers);
+	__vb2_queue_free(q, 0, q->max_num_buffers);
 	kfree(q->bufs);
 	q->bufs = NULL;
 	bitmap_free(q->bufs_bitmap);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
