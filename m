Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A00FCDB474
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Oct 2023 14:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+2LH4SdItvS4eqVFEkXJ9PoaiuEOSaGagjy1vOD6hI=; b=NZyKvuZTNPGzOk
	BtHXwQ+TWB+FUoI70ahj5HPW/U9vcu24ehSZWCqsdqoMWLXLaPura9ISnWTqJ1NendZAyHGpjAxvl
	0o8VqXA3GpVuAoNTRZ3wihy/SxLDmt9OSlOq1WF9Q1ge8HsSHrXXNyo4/XzYwUFD/GTQFYI+wAPlV
	J/p3zrEqRufFwUTnqXXN4WpfXcScd3Hgu0n8F1z2DTN1w30+MP9kOKeEx1GJoiukullyCFueAlrJ4
	KBjUCfJYgtfD2A6yVHBmuizqf6ug13biK9suqwnXeeMKQxfeWmVkeGQ84FJa/Bxtss9RewHetZDOl
	qwEQjg1P9Uoj8W5sYNHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslNT-00CZlO-3C;
	Tue, 17 Oct 2023 14:49:00 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslMg-00CYpz-36;
	Tue, 17 Oct 2023 14:48:13 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7205:da49:a7e8:59f8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 47CE9660732E;
	Tue, 17 Oct 2023 15:48:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697554088;
	bh=QK6vBd/Ng3qHGes+E88MCZd+SSvPo4pf23W9jWiexEU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=O2WZLl5m09B0lLkU9IyEDTOiRlVLRPRRG1tUgYxmOaM7ZD5dvJ44K96gMRsMzLhHi
	 X0PQzRtc6NYw9Osq8WFIPVpUU1fH2vRZMJ8mgF+mfjmOtSIWwL8LbUiFhzpRFGf2ic
	 44Phe09NfUdEclc0w2PnmL1xDPrEIkuUzL7CCYyo0Sxj9Vbntbqhe/yzuzoloaYBjE
	 1aUzjcG/coRQiEw+6hPqRiWTsxoUe8cDofeeBRKlfNDtd8CIF/ML0G1+MOSE/nQRkQ
	 W7tLGe2V+gT5TS1HeYPentYZ1t+dvNUbD2u8BT7KQZs5EPB9hfT4SFt2fXtz1IiB4C
	 tgc/Se5JUT0MA==
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
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Zhou Peng <eagle.zhou@nxp.com>
Subject: [PATCH v12 10/56] media: amphion: Stop direct calls to queue num_buffers field
Date: Tue, 17 Oct 2023 16:47:10 +0200
Message-Id: <20231017144756.34719-11-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017144756.34719-1-benjamin.gaignard@collabora.com>
References: <20231017144756.34719-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_074811_169952_3E9E93E0 
X-CRM114-Status: GOOD (  13.15  )
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

Use vb2_get_num_buffers() to avoid using queue num_buffers field directly.
This allows us to change how the number of buffers is computed in the
futur.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
CC: Ming Qian <ming.qian@nxp.com>
CC: Zhou Peng <eagle.zhou@nxp.com>
---
 drivers/media/platform/amphion/vpu_dbg.c  | 8 ++++----
 drivers/media/platform/amphion/vpu_v4l2.c | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/amphion/vpu_dbg.c b/drivers/media/platform/amphion/vpu_dbg.c
index a462d6fe4ea9..940e5bda5fa3 100644
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
+	for (i = 0; i < vb2_get_num_buffers(vq); i++) {
 		struct vb2_buffer *vb;
 		struct vb2_v4l2_buffer *vbuf;
 
@@ -161,7 +161,7 @@ static int vpu_dbg_instance(struct seq_file *s, void *data)
 	}
 
 	vq = v4l2_m2m_get_dst_vq(inst->fh.m2m_ctx);
-	for (i = 0; i < vq->num_buffers; i++) {
+	for (i = 0; i < vb2_get_num_buffers(vq); i++) {
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
