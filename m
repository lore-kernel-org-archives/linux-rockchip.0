Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA431EB64D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 13:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NcBtKWDx4tz7VcEww/2ey3mGcCaL0prO3HTgudVB7c=; b=2d2/cao6defp4N
	zqdlufWsomYnsBuEy32rOlCcQ+NU4SwSNI9q7Vj0jdqElxRyNC3fXItXEwmByFr2di3yHws1AxEg6
	K2fVeiVOahSybYagpjEmJEa1EJAMzfPMNOM+q1knNqJ7SmrUf6KjhqfjcoG3zIYmHvbqaTWTkUgK5
	9FNHr6O+Uj2r851NbR2OQBwNIdh+WNuUft80MiYpz/ffDqahAS9jWAaz3w8ZZ8AFKPxFxAfkkrRKr
	kzIpBmgYp9OnBhwZZ6918+NGjpeulkMTgZA5i9l1RPiS6ZzY1VScxJ4i4WAYRhdrKCp2QNi5q0xn+
	NIypvj9AlwmFHbauyqaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCK9e-000kEd-1m;
	Thu, 22 Jun 2023 13:15:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCK8d-000jJB-2Y;
	Thu, 22 Jun 2023 13:14:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fizQmLvNUUxr0jDRtm0Q3QiONfP85Te8hSHvbTHAebM=; b=X4CTo6LBXokOWdf1p3GClq+ojM
	Fwy0owvrzRgMjdVGissmomlJ/JphL+u8xUtO4hPqSlpZ3UgXV4eohfoAeSJeP9e4dlAyNZvQiArDD
	XMK3W0iO8hNJCZPsP6OHrxO78g2OWF32UIsKnnw2U2PwA6m3gulJSXzOKL7WugnnHx1NP5fMkTIhH
	tehteqlKLH6583r2Su2W1i3JxAxeza90Y6ZpGuezeYNhtCNYjboFkJuv3B0rdn9g7XEy7RN3gRm6a
	IGALJxDFUFdX3kQ5K1o13ahSd7OImKj3JuZhIV01hDhMsaNoswy5eq83YytPke2bJ31p6pYPfajW8
	CkErSNAA==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCK8V-001Box-2T;
	Thu, 22 Jun 2023 13:14:13 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7d72:676c:e745:a6ef])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BD701660713E;
	Thu, 22 Jun 2023 14:14:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687439643;
	bh=w7TelsLJmHPPFBbH7cdd4Q4u9mfk8qz6m8m3ILNeG3Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=drrv7EArNlrMc2bqooR2UXQWYueWvIBP+Y1UDX7ZsxJ63fm9MWRTLdvcy/nd3MtmR
	 1tAPfYMWNjrmPUNRS0XxCwqXho+WBGpGewAnYEE2Ie+xdCEP8PrQjPE1/As1XTSeyn
	 xo3B32kzTLEBtIyn4PJwr+EjAOq7FA6fpFlwXN2Z3uefoRQqtw9FpEHPug6LThebK/
	 Phxk51rtR7zmF4yR5QN7vIcsJ7/u5EPHjYGDIFfcOkODSzlshf3WIBEh+wamPxDcUG
	 cWTeOwNzSOsFR7WozNP+PQ3eLDCtl+RCP7lgpfh103fQjpIRJovqxw58Wv7OnDvRLI
	 iyFgvrTal3KYg==
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
Subject: [PATCH v3 11/11] media: v4l2: Add mem2mem helpers for DELETE_BUF ioctl
Date: Thu, 22 Jun 2023 15:13:49 +0200
Message-Id: <20230622131349.144160-12-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_141409_544669_70E1E101 
X-CRM114-Status: GOOD (  10.89  )
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

Create v4l2-mem2mem helpers for VIDIOC_DELETE_BUF ioctl.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/platform/verisilicon/hantro_v4l2.c  |  1 +
 drivers/media/test-drivers/vim2m.c            |  1 +
 drivers/media/v4l2-core/v4l2-mem2mem.c        | 20 +++++++++++++++++++
 include/media/v4l2-mem2mem.h                  | 12 +++++++++++
 4 files changed, 34 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index cdddfb4179aa..bf418191278f 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -720,6 +720,7 @@ const struct v4l2_ioctl_ops hantro_ioctl_ops = {
 	.vidioc_dqbuf = v4l2_m2m_ioctl_dqbuf,
 	.vidioc_prepare_buf = v4l2_m2m_ioctl_prepare_buf,
 	.vidioc_create_bufs = v4l2_m2m_ioctl_create_bufs,
+	.vidioc_delete_buf = v4l2_m2m_ioctl_delete_buf,
 	.vidioc_expbuf = v4l2_m2m_ioctl_expbuf,
 
 	.vidioc_subscribe_event = v4l2_ctrl_subscribe_event,
diff --git a/drivers/media/test-drivers/vim2m.c b/drivers/media/test-drivers/vim2m.c
index 3e3b424b4860..3014b8ee13d0 100644
--- a/drivers/media/test-drivers/vim2m.c
+++ b/drivers/media/test-drivers/vim2m.c
@@ -960,6 +960,7 @@ static const struct v4l2_ioctl_ops vim2m_ioctl_ops = {
 	.vidioc_dqbuf		= v4l2_m2m_ioctl_dqbuf,
 	.vidioc_prepare_buf	= v4l2_m2m_ioctl_prepare_buf,
 	.vidioc_create_bufs	= v4l2_m2m_ioctl_create_bufs,
+	.vidioc_delete_buf	= v4l2_m2m_ioctl_delete_buf,
 	.vidioc_expbuf		= v4l2_m2m_ioctl_expbuf,
 
 	.vidioc_streamon	= v4l2_m2m_ioctl_streamon,
diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 0cc30397fbad..42f51ca25379 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -831,6 +831,17 @@ int v4l2_m2m_prepare_buf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
 }
 EXPORT_SYMBOL_GPL(v4l2_m2m_prepare_buf);
 
+int v4l2_m2m_delete_buf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
+			struct v4l2_buffer *buf)
+{
+	struct vb2_queue *vq;
+
+	vq = v4l2_m2m_get_vq(m2m_ctx, buf->type);
+
+	return vb2_delete_buf(vq, buf);
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_delete_buf);
+
 int v4l2_m2m_create_bufs(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
 			 struct v4l2_create_buffers *create)
 {
@@ -1377,6 +1388,15 @@ int v4l2_m2m_ioctl_create_bufs(struct file *file, void *priv,
 }
 EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_create_bufs);
 
+int v4l2_m2m_ioctl_delete_buf(struct file *file, void *priv,
+			      struct v4l2_buffer *buf)
+{
+	struct v4l2_fh *fh = file->private_data;
+
+	return v4l2_m2m_delete_buf(file, fh->m2m_ctx, buf);
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_delete_buf);
+
 int v4l2_m2m_ioctl_querybuf(struct file *file, void *priv,
 				struct v4l2_buffer *buf)
 {
diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
index bb9de6a899e0..d062a35c8246 100644
--- a/include/media/v4l2-mem2mem.h
+++ b/include/media/v4l2-mem2mem.h
@@ -381,6 +381,16 @@ int v4l2_m2m_dqbuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
 int v4l2_m2m_prepare_buf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
 			 struct v4l2_buffer *buf);
 
+/**
+ * v4l2_m2m_delete_buf() - delete buffer from the queue
+ *
+ * @file: pointer to struct &file
+ * @m2m_ctx: m2m context assigned to the instance given by struct &v4l2_m2m_ctx
+ * @buf: pointer to struct &v4l2_buffer
+ */
+int v4l2_m2m_delete_buf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
+			struct v4l2_buffer *buf);
+
 /**
  * v4l2_m2m_create_bufs() - create a source or destination buffer, depending
  * on the type
@@ -846,6 +856,8 @@ int v4l2_m2m_ioctl_reqbufs(struct file *file, void *priv,
 				struct v4l2_requestbuffers *rb);
 int v4l2_m2m_ioctl_create_bufs(struct file *file, void *fh,
 				struct v4l2_create_buffers *create);
+int v4l2_m2m_ioctl_delete_buf(struct file *file, void *priv,
+			      struct v4l2_buffer *buf);
 int v4l2_m2m_ioctl_querybuf(struct file *file, void *fh,
 				struct v4l2_buffer *buf);
 int v4l2_m2m_ioctl_expbuf(struct file *file, void *fh,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
