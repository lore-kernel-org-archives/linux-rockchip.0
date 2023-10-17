Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF035CDB482
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Oct 2023 14:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmkLKzFPEf+053P9vgYaNYLYIR9GZ5LvJSkEKzf7lro=; b=0PlzSaZYCprIZS
	XUeK9Y/GBrhi/THnfsQ7wOrp/LP/PANOd1H8VGUq5hmtV5KSMw8ULi190GL0EFOxX1H9letqd7ZDq
	FISHRCvIyPnxl9JRF/Nl15MAW3IUD2c9qlN8VnyTJLEjK2kJBdbDJOL9qGcpR+r3/Vi2hRF+h2aNf
	tLaSpzoThBTKZPqk9ZOoQKlBdwmO0O2T/FkGgml3z+ViUdIPxxU4T9hP3OUvSipKyZUu1Sje8wSzX
	Exb+yEVkkITFkCK1501jQdzIlIJsRHkPTN0dt6k+ZvpAkux+11KixvmWFu1ZzGwb9Gz7/Sw11vyKJ
	NFAABhk1o2XC5/l7ulbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslOm-00Cayj-26;
	Tue, 17 Oct 2023 14:50:20 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslMk-00CYux-0w;
	Tue, 17 Oct 2023 14:48:20 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7205:da49:a7e8:59f8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A10F46607331;
	Tue, 17 Oct 2023 15:48:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697554093;
	bh=/R1pnW8jfIuOE9V1pOiXWbvwVFtKNqZCCdQZpnNVq6E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Z9F2JI/WXF7yHwpusSAVWfFe1ysa+W/k/r6V08+hBvV+pEz4464hDx49g7nMWvf7r
	 y68ewAR6BYPcHLfhM6VSDCN7t/zruLDYsq67Rp7SEJaHYdQBONG9KxiJlcFTJYDcag
	 e0jeIdWRNI6w5fj9MKRZaOAfEV6IGC8FAF5tny4eOqoFitJcomd2ox7Z2aXRWEhbCY
	 okkLJiVpYOlIuxmvMg4gaEgm+RRCWi6CYQaCUrUbjB8A5Hd0WwguHg322DuSsIZ62u
	 mmJxtOkl8zj2WDuJWp6jBVUFTcroudLt9vAoOymAAtGx7lx9Iw2XrpUR/3y9OVxswP
	 QYeeyIRLpyaWA==
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
Subject: [PATCH v12 18/56] media: dvb-core: Use vb2_get_buffer() instead of directly access to buffers array
Date: Tue, 17 Oct 2023 16:47:18 +0200
Message-Id: <20231017144756.34719-19-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017144756.34719-1-benjamin.gaignard@collabora.com>
References: <20231017144756.34719-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_074814_489882_24F6AAF7 
X-CRM114-Status: GOOD (  12.20  )
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

Use vb2_get_buffer() instead of direct access to the vb2_queue bufs array.
This allows us to change the type of the bufs in the future.
After each call to vb2_get_buffer() we need to be sure that we get
a valid pointer so check the return value of all of them.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/dvb-core/dvb_vb2.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/media/dvb-core/dvb_vb2.c b/drivers/media/dvb-core/dvb_vb2.c
index b322ef179f05..3a966fdf814c 100644
--- a/drivers/media/dvb-core/dvb_vb2.c
+++ b/drivers/media/dvb-core/dvb_vb2.c
@@ -355,12 +355,13 @@ int dvb_vb2_reqbufs(struct dvb_vb2_ctx *ctx, struct dmx_requestbuffers *req)
 int dvb_vb2_querybuf(struct dvb_vb2_ctx *ctx, struct dmx_buffer *b)
 {
 	struct vb2_queue *q = &ctx->vb_q;
+	struct vb2_buffer *vb2 = vb2_get_buffer(q, b->index);
 
-	if (b->index >= q->num_buffers) {
-		dprintk(1, "[%s] buffer index out of range\n", ctx->name);
+	if (!vb2) {
+		dprintk(1, "[%s] invalid buffer index\n", ctx->name);
 		return -EINVAL;
 	}
-	vb2_core_querybuf(&ctx->vb_q, q->bufs[b->index], b);
+	vb2_core_querybuf(&ctx->vb_q, vb2, b);
 	dprintk(3, "[%s] index=%d\n", ctx->name, b->index);
 	return 0;
 }
@@ -385,13 +386,14 @@ int dvb_vb2_expbuf(struct dvb_vb2_ctx *ctx, struct dmx_exportbuffer *exp)
 int dvb_vb2_qbuf(struct dvb_vb2_ctx *ctx, struct dmx_buffer *b)
 {
 	struct vb2_queue *q = &ctx->vb_q;
+	struct vb2_buffer *vb2 = vb2_get_buffer(q, b->index);
 	int ret;
 
-	if (b->index >= q->num_buffers) {
-		dprintk(1, "[%s] buffer index out of range\n", ctx->name);
+	if (!vb2) {
+		dprintk(1, "[%s] invalid buffer index\n", ctx->name);
 		return -EINVAL;
 	}
-	ret = vb2_core_qbuf(&ctx->vb_q, q->bufs[b->index], b, NULL);
+	ret = vb2_core_qbuf(&ctx->vb_q, vb2, b, NULL);
 	if (ret) {
 		dprintk(1, "[%s] index=%d errno=%d\n", ctx->name,
 			b->index, ret);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
