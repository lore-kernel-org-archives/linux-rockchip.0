Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57611EEAA42
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 13:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqQac5U9QGzNWlTg9Mm/AGfzlrFjhSSMVMZf0mhFSUY=; b=Ki2uWT+jC6/y5E
	w0uwqSuZu1BddgidFN7dx8V61frPAbQD7vjFESLvufQ6Vz0oa2TeAht175rFTkwAn8ydFq5i7re1I
	L5t/1AD6rLMNayHRkSng+wIGPI5DLJtbsvozdQ4UnTH4LXq22tWNwIA4Z68dvhpqjp1O8W9WIa0J+
	F44TKJ8QAQl4N5/OORq23TbbwmxgQdRj7mpChvQD/Aqt7vaeQKPYytynSi7mmHM4Y1Ke0b0x+GDyE
	NSWCx6k2Ml+FypLAS9MR9LcIfnvPytOioNaSG5n+r0q1s3UcLl8y+znn/cy8SjPZmbcOPGj367yVa
	57mq9UxN9cz/bgskGM5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmWX-008VRg-0p;
	Thu, 14 Sep 2023 13:36:49 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmTb-008SLO-1D;
	Thu, 14 Sep 2023 13:33:50 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:36f2:37bd:ccbb:373f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BADF56607354;
	Thu, 14 Sep 2023 14:33:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694698426;
	bh=r/+dARFgLlqIYPCNsTNg9ylalWpmLzdptnRKI8OWLEk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YvjvRTk2FQuuuUs3HNGiHLDrwCbLyrYMWAL9JKval+qun6XwuAj6wgBBBfYt4IfYc
	 xbmXCiUoxGZ4dVyag8AP0dCKYveSLx8N/9qEJjjg7/AK+32irfARE5BXXCdaPQ8C5q
	 eGm/YqgIEkTHpr2n7umROLKbceFmejEHZwmhe+YMQAbkP64MrVDmu7NcqXZqiiff9W
	 gVkhsgGZ27DQpJjT0kvrPuk/Hz8Gqd2Apyrf407pV8PK+uLskqE/XxU8YrO4ActwJl
	 Rgku5Vrd3E+aZf9DjbXETUSohr6bM123BAC87DsXQcitdM/BcaI8PjCHJvYVe/Z4+1
	 7FpdiNtI5tZ0w==
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
Subject: [PATCH v7 28/49] media: amphion: Stop direct calls to queue num_buffers field
Date: Thu, 14 Sep 2023 15:33:02 +0200
Message-Id: <20230914133323.198857-29-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_063347_578613_891DFA6B 
X-CRM114-Status: GOOD (  12.31  )
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

Use vb2_get_num_buffers() to avoid using queue num_buffer field directly.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/amphion/vpu_dbg.c  | 8 ++++----
 drivers/media/platform/amphion/vpu_v4l2.c | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/amphion/vpu_dbg.c b/drivers/media/platform/amphion/vpu_dbg.c
index a462d6fe4ea9..61530ef92ff0 100644
--- a/drivers/media/platform/amphion/vpu_dbg.c
+++ b/drivers/media/platform/amphion/vpu_dbg.c
@@ -87,7 +87,7 @@ static int vpu_dbg_instance(struct seq_file *s, void *data)
 	num = scnprintf(str, sizeof(str),
 			"output (%2d, %2d): fmt = %c%c%c%c %d x %d, %d;",
 			vb2_is_streaming(vq),
-			vq->num_buffers,
+			vb2_get_num_buffers(vq),
 			inst->out_format.pixfmt,
 			inst->out_format.pixfmt >> 8,
 			inst->out_format.pixfmt >> 16,
@@ -111,7 +111,7 @@ static int vpu_dbg_instance(struct seq_file *s, void *data)
 	num = scnprintf(str, sizeof(str),
 			"capture(%2d, %2d): fmt = %c%c%c%c %d x %d, %d;",
 			vb2_is_streaming(vq),
-			vq->num_buffers,
+			vb2_get_num_buffers(vq),
 			inst->cap_format.pixfmt,
 			inst->cap_format.pixfmt >> 8,
 			inst->cap_format.pixfmt >> 16,
@@ -139,7 +139,7 @@ static int vpu_dbg_instance(struct seq_file *s, void *data)
 		return 0;
 
 	vq = v4l2_m2m_get_src_vq(inst->fh.m2m_ctx);
-	for (i = 0; i < vq->num_buffers; i++) {
+	for (i = 0; i < vq->max_allowed_buffers; i++) {
 		struct vb2_buffer *vb;
 		struct vb2_v4l2_buffer *vbuf;
 
@@ -161,7 +161,7 @@ static int vpu_dbg_instance(struct seq_file *s, void *data)
 	}
 
 	vq = v4l2_m2m_get_dst_vq(inst->fh.m2m_ctx);
-	for (i = 0; i < vq->num_buffers; i++) {
+	for (i = 0; i < vq->max_allowed_buffers; i++) {
 		struct vb2_buffer *vb;
 		struct vb2_v4l2_buffer *vbuf;
 
diff --git a/drivers/media/platform/amphion/vpu_v4l2.c b/drivers/media/platform/amphion/vpu_v4l2.c
index 0f6e4c666440..87afb4a18d5d 100644
--- a/drivers/media/platform/amphion/vpu_v4l2.c
+++ b/drivers/media/platform/amphion/vpu_v4l2.c
@@ -439,7 +439,7 @@ int vpu_get_num_buffers(struct vpu_inst *inst, u32 type)
 	else
 		q = v4l2_m2m_get_dst_vq(inst->fh.m2m_ctx);
 
-	return q->num_buffers;
+	return vb2_get_num_buffers(q);
 }
 
 static void vpu_m2m_device_run(void *priv)
@@ -587,7 +587,7 @@ static int vpu_vb2_start_streaming(struct vb2_queue *q, unsigned int count)
 		  fmt->sizeimage[0], fmt->bytesperline[0],
 		  fmt->sizeimage[1], fmt->bytesperline[1],
 		  fmt->sizeimage[2], fmt->bytesperline[2],
-		  q->num_buffers);
+		  vb2_get_num_buffers(q));
 	vb2_clear_last_buffer_dequeued(q);
 	ret = call_vop(inst, start, q->type);
 	if (ret)
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
