Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85776C54E5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Mar 2024 15:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/wpX5DTS9p7T+x4eyp0xFhHO6flPqWK5Kqd58uU4974=; b=sFBbyPN40m/M61
	E0AJP9GBfM2jDDZsY/tMOEcBGid3tustUOs61ckkiOt0NAITW5LQB88+4Nt9Rtk2kus7vNgrpfFqc
	6lZNl+E0OLot/BAj8A4o80CX2mCi+LwiFORsFBO/PM8WJ/1j3Prvoqs06rISPW/UJners/kbRn52h
	jRhvu9C/cQDp9KsBm1Xba+omK1VApn1Wdm0POn6BAjYBYrFUnuhR9fSLJfEwVJp2qf/Xo7nXIyf2t
	gtkog/jXsf+XtJf4wBkQiK52tEfsLxZvvozsnGWwCsIJFfqjjJEOecB4kZ4KUkT3YGOcK2VSSlPM1
	4r4e9DncU0nWlyBqE/jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkn4b-0000000ErQl-2nMU;
	Thu, 14 Mar 2024 15:32:49 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkn4P-0000000ErGY-1zqv
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Mar 2024 15:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710430353;
	bh=kghUcSURPBJoB0fmxL1r0Y9N1XZdT/r3cDKOOvYVX9w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=j/kf/jVrjp7W2NII/rxpmOhKm8oAJ5alSNrSLUM1dPrOPrGAS9lTzjBU+b+uSFPjD
	 GlBl1UPD2sunY0CLxTT1nDRnzFPZNu5LlQEVa7hIBMIMMr+FSaMrncG1yxa/lWfmUx
	 L1njzmWkj7eIN/SiUc4GmfGbdTwaI2EJq7zhswG+BgmDtTuFx3PzYXeF1A1TjjSSET
	 KHEigPFabFHa0zuVgHEIYXuFJNFmnvW0t5/f6xoBZJsiPNCORrBR0ddFFYlvtVgmWg
	 M4R8uBrYqPOzbPZ4XrbnJ/OHIRaV06ImJaavEaRwCdvg+Nchsd44/ldZqYJ0w5hqQr
	 P5eTgB4Hd2kjg==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 4B30037820F5;
	Thu, 14 Mar 2024 15:32:33 +0000 (UTC)
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
Subject: [PATCH v21 1/9] media: videobuf2: Update vb2_is_busy() logic
Date: Thu, 14 Mar 2024 16:32:18 +0100
Message-Id: <20240314153226.197445-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_083237_757387_D241FB5C 
X-CRM114-Status: GOOD (  15.84  )
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

Do not rely on the number of allocated buffers to know if the
queue is busy but on a flag set when at least one buffer has been allocated
by REQBUFS or CREATE_BUFS ioctl.
The flag is reset when REQBUFS is called with count = 0 or the file
handle is closed.
This is needed because remove buffers feature will be able to remove
all the buffers from a queue while streaming so relying on the number
of allocated buffers in the queue won't be possible.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/common/videobuf2/videobuf2-core.c | 4 ++++
 include/media/videobuf2-core.h                  | 4 +++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
index b6bf8f232f48..d8b3c04cb3b5 100644
--- a/drivers/media/common/videobuf2/videobuf2-core.c
+++ b/drivers/media/common/videobuf2/videobuf2-core.c
@@ -854,6 +854,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
 		__vb2_queue_free(q, q_num_bufs);
 		mutex_unlock(&q->mmap_lock);
 
+		q->is_busy = 0;
 		/*
 		 * In case of REQBUFS(0) return immediately without calling
 		 * driver's queue_setup() callback and allocating resources.
@@ -966,6 +967,7 @@ int vb2_core_reqbufs(struct vb2_queue *q, enum vb2_memory memory,
 	 */
 	*count = allocated_buffers;
 	q->waiting_for_buffers = !q->is_output;
+	q->is_busy = 1;
 
 	return 0;
 
@@ -1091,6 +1093,7 @@ int vb2_core_create_bufs(struct vb2_queue *q, enum vb2_memory memory,
 	 * to the userspace.
 	 */
 	*count = allocated_buffers;
+	q->is_busy = 1;
 
 	return 0;
 
@@ -2555,6 +2558,7 @@ void vb2_core_queue_release(struct vb2_queue *q)
 	__vb2_queue_free(q, vb2_get_num_buffers(q));
 	kfree(q->bufs);
 	q->bufs = NULL;
+	q->is_busy = 0;
 	mutex_unlock(&q->mmap_lock);
 }
 EXPORT_SYMBOL_GPL(vb2_core_queue_release);
diff --git a/include/media/videobuf2-core.h b/include/media/videobuf2-core.h
index 8b86996b2719..667bf9ee1101 100644
--- a/include/media/videobuf2-core.h
+++ b/include/media/videobuf2-core.h
@@ -582,6 +582,7 @@ struct vb2_buf_ops {
  *		released. Used to prevent destroying the queue by other threads.
  * @is_multiplanar: set if buffer type is multiplanar
  * @is_output:	set if buffer type is output
+ * @is_busy:	set if at least one buffer has been allocated at some time.
  * @copy_timestamp: set if vb2-core should set timestamps
  * @last_buffer_dequeued: used in poll() and DQBUF to immediately return if the
  *		last decoded buffer was already dequeued. Set for capture queues
@@ -647,6 +648,7 @@ struct vb2_queue {
 	unsigned int			waiting_in_dqbuf:1;
 	unsigned int			is_multiplanar:1;
 	unsigned int			is_output:1;
+	unsigned int			is_busy:1;
 	unsigned int			copy_timestamp:1;
 	unsigned int			last_buffer_dequeued:1;
 
@@ -1166,7 +1168,7 @@ static inline unsigned int vb2_get_num_buffers(struct vb2_queue *q)
  */
 static inline bool vb2_is_busy(struct vb2_queue *q)
 {
-	return vb2_get_num_buffers(q) > 0;
+	return !!q->is_busy;
 }
 
 /**
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
