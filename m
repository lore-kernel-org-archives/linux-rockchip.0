Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 096E6C54E60
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Mar 2024 15:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPzyME0rgqS0VZEa3Q1U3sShxBUOsI9BALburgUw2hc=; b=AaZuWKmN89d6HT
	8bYza0InDSZIDMAR72QvhnrdCPx76gJZM7OnNXfqnFsR+CXRhqechLSUVnvTmwj55KGqFaiW/tpZ3
	3rmCH60KwNjF7s4J3exLZudFyMJd+GCM2FH5NfgGrjgcUnwF9DYMVW0OzLwMU4IZT1ZfZNQXIDWbj
	aDpmbVdvMPfd5HNoWP6o7mM2UPVjHm10mGFFZDgGLXQg8umK71bnit+rn/r3Ue4Btat9GY4gbzRcM
	VfVOByTRr72JNuaznmFpx0SeNTO3cBKKEB8En9MT/pfmBWN9RYsun3BYvcNRnpjW6zos5X08REFRC
	XFt1bdv108AJiy/m9ywQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkn4r-0000000Eraw-1fau;
	Thu, 14 Mar 2024 15:33:05 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkn4U-0000000ErLP-2sDz
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Mar 2024 15:32:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710430359;
	bh=S8BY+YnoHLjL4nNyT8UzD8yD98Cb9AAqKgtqpMGHJiE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mbqxPj3Hqp+HnBC/OztP1uSvHr3X9Hv0Oi2/teHC5NWUI9ab0Bk7eabZZNRw2mi+T
	 L/HZpMkcc9RFLsXI7fLC1wY4HkHBlFFk52FViixLlXF8WdHV/3QUimRlEibzD12z88
	 FF1FAFnJB53vfUhjBfGnqlQCGbGHoFqYQXtumQekq01+weHEsJ1cttw/1PhW9aIMEU
	 Xfs1LQpO9pI2o43TSoCZJwYvku2gr7Ec5lYB0CfKmNga2rM9OfYCqKGRGA8XzNjRIl
	 YJbwMS5/e19Fa5gNMo6+udn4THCuCy+3KVks0saPdxby53S86/7u1UtTNc/4Ky8t1h
	 D6COXqgBgHD8g==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 975B9378210F;
	Thu, 14 Mar 2024 15:32:38 +0000 (UTC)
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
Subject: [PATCH v21 8/9] media: v4l2: Add mem2mem helpers for REMOVE_BUFS ioctl
Date: Thu, 14 Mar 2024 16:32:25 +0100
Message-Id: <20240314153226.197445-9-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
References: <20240314153226.197445-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_083243_262006_109C1E90 
X-CRM114-Status: GOOD (  10.25  )
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

Create v4l2-mem2mem helpers for VIDIOC_REMOVE_BUFS ioctl and
make test drivers use it.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
changes in version 21:
- In v4l2_m2m_ioctl_remove_bufs() check if the queue exists and
  if it type macth request type.
- Do not set vidioc_remove_bufs for vim2m driver.

 drivers/media/test-drivers/vicodec/vicodec-core.c |  1 +
 drivers/media/test-drivers/vimc/vimc-capture.c    |  1 +
 drivers/media/test-drivers/visl/visl-video.c      |  1 +
 drivers/media/test-drivers/vivid/vivid-core.c     |  1 +
 drivers/media/v4l2-core/v4l2-mem2mem.c            | 15 +++++++++++++++
 include/media/v4l2-mem2mem.h                      |  2 ++
 6 files changed, 21 insertions(+)

diff --git a/drivers/media/test-drivers/vicodec/vicodec-core.c b/drivers/media/test-drivers/vicodec/vicodec-core.c
index e13f5452b927..3e011fe62ae1 100644
--- a/drivers/media/test-drivers/vicodec/vicodec-core.c
+++ b/drivers/media/test-drivers/vicodec/vicodec-core.c
@@ -1345,6 +1345,7 @@ static const struct v4l2_ioctl_ops vicodec_ioctl_ops = {
 	.vidioc_prepare_buf	= v4l2_m2m_ioctl_prepare_buf,
 	.vidioc_create_bufs	= v4l2_m2m_ioctl_create_bufs,
 	.vidioc_expbuf		= v4l2_m2m_ioctl_expbuf,
+	.vidioc_remove_bufs	= v4l2_m2m_ioctl_remove_bufs,
 
 	.vidioc_streamon	= v4l2_m2m_ioctl_streamon,
 	.vidioc_streamoff	= v4l2_m2m_ioctl_streamoff,
diff --git a/drivers/media/test-drivers/vimc/vimc-capture.c b/drivers/media/test-drivers/vimc/vimc-capture.c
index 97693561f1e4..ba7550b8ba7e 100644
--- a/drivers/media/test-drivers/vimc/vimc-capture.c
+++ b/drivers/media/test-drivers/vimc/vimc-capture.c
@@ -221,6 +221,7 @@ static const struct v4l2_ioctl_ops vimc_capture_ioctl_ops = {
 	.vidioc_expbuf = vb2_ioctl_expbuf,
 	.vidioc_streamon = vb2_ioctl_streamon,
 	.vidioc_streamoff = vb2_ioctl_streamoff,
+	.vidioc_remove_bufs = vb2_ioctl_remove_bufs,
 };
 
 static void vimc_capture_return_all_buffers(struct vimc_capture_device *vcapture,
diff --git a/drivers/media/test-drivers/visl/visl-video.c b/drivers/media/test-drivers/visl/visl-video.c
index b9a4b44bd0ed..f8d970319764 100644
--- a/drivers/media/test-drivers/visl/visl-video.c
+++ b/drivers/media/test-drivers/visl/visl-video.c
@@ -539,6 +539,7 @@ const struct v4l2_ioctl_ops visl_ioctl_ops = {
 	.vidioc_prepare_buf		= v4l2_m2m_ioctl_prepare_buf,
 	.vidioc_create_bufs		= v4l2_m2m_ioctl_create_bufs,
 	.vidioc_expbuf			= v4l2_m2m_ioctl_expbuf,
+	.vidioc_remove_bufs		= v4l2_m2m_ioctl_remove_bufs,
 
 	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
 	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
diff --git a/drivers/media/test-drivers/vivid/vivid-core.c b/drivers/media/test-drivers/vivid/vivid-core.c
index 11b8520d9f57..771392f67dda 100644
--- a/drivers/media/test-drivers/vivid/vivid-core.c
+++ b/drivers/media/test-drivers/vivid/vivid-core.c
@@ -769,6 +769,7 @@ static const struct v4l2_ioctl_ops vivid_ioctl_ops = {
 	.vidioc_expbuf			= vb2_ioctl_expbuf,
 	.vidioc_streamon		= vb2_ioctl_streamon,
 	.vidioc_streamoff		= vb2_ioctl_streamoff,
+	.vidioc_remove_bufs		= vb2_ioctl_remove_bufs,
 
 	.vidioc_enum_input		= vivid_enum_input,
 	.vidioc_g_input			= vivid_g_input,
diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 75517134a5e9..eb22d6172462 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -1386,6 +1386,21 @@ int v4l2_m2m_ioctl_create_bufs(struct file *file, void *priv,
 }
 EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_create_bufs);
 
+int v4l2_m2m_ioctl_remove_bufs(struct file *file, void *priv,
+			       struct v4l2_remove_buffers *remove)
+{
+	struct v4l2_fh *fh = file->private_data;
+	struct vb2_queue *q = v4l2_m2m_get_vq(fh->m2m_ctx, remove->type);
+
+	if (!q)
+		return -EINVAL;
+	if (q->type != remove->type)
+		return -EINVAL;
+
+	return vb2_core_remove_bufs(q, remove->index, remove->count);
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_remove_bufs);
+
 int v4l2_m2m_ioctl_querybuf(struct file *file, void *priv,
 				struct v4l2_buffer *buf)
 {
diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
index 7f1af1f7f912..0af330cf91c3 100644
--- a/include/media/v4l2-mem2mem.h
+++ b/include/media/v4l2-mem2mem.h
@@ -867,6 +867,8 @@ int v4l2_m2m_ioctl_reqbufs(struct file *file, void *priv,
 				struct v4l2_requestbuffers *rb);
 int v4l2_m2m_ioctl_create_bufs(struct file *file, void *fh,
 				struct v4l2_create_buffers *create);
+int v4l2_m2m_ioctl_remove_bufs(struct file *file, void *priv,
+			       struct v4l2_remove_buffers *d);
 int v4l2_m2m_ioctl_querybuf(struct file *file, void *fh,
 				struct v4l2_buffer *buf);
 int v4l2_m2m_ioctl_expbuf(struct file *file, void *fh,
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
