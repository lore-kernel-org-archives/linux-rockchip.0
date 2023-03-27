Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E66F5C7619A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 13:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=61FIn8aI2ossrhtAACARdAOnOW6KDFHmbjjrlL2QlFY=; b=yq7hQJOhyXVEt9
	QQ4VsCFT5WWTswFBVtaJusRL4svArO82S6AemuNVb1PkFvBkyxeTHpULtBW6gfqzmdsBKrF3pjL6k
	JE3kiMwyU47jhkQhKMJAeJGu+HnwVDYr3F3TEhvM/VuGsGhpgPcaVX2xDjah7vPvc1+eEJ+NK0chM
	91v/qF0GtuRWpx/7CJLmmcvFM6V3XR9m0DLt+z7impQM2TH1ccfTvsCOrJgIkK4QNiiMk7Nqt3egX
	TtwLDZfK9d+HL/5YkXsUEejgqIUSYu3Rc0fvBZ3NouGwA85XM310efOiHhpaNLMAeLJwnGGkxTEYT
	2a9CQY0FmwA+hWFCJT8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgmp1-00B6QJ-2V;
	Mon, 27 Mar 2023 13:23:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgmoz-00B6O3-12
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 13:23:38 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1pgmop-00060J-Ql; Mon, 27 Mar 2023 15:23:27 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	mtr@pengutronix.de
Subject: [RFC PATCH] media: hantro: respect data_offset in vb2_plane
Date: Mon, 27 Mar 2023 15:23:24 +0200
Message-Id: <20230327132324.1781416-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_062337_362109_168957D5 
X-CRM114-Status: GOOD (  19.40  )
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

The vb2_plane in the vb2_v4l2_buffer may have a data_offset, which is
written by user space to tell the driver that the data starts at an
offset into the buffer. Currently the hantro driver assumes that the
data starts directly at the base address of the buffer.

Add the data_offset to the plane dma_address to make sure that the
encoder actually reads the plane data if the user space put the plane
data at an offset into the buffer. Otherwise the encoded data may not be
the data that userspace expected to be encoded.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Hi,

Most other drivers also assume that the address returned by
vb2_dma_contig_plane_dma_addr() is the start of the plane data. Maybe it
would be better to change vb2_dma_contig_plane_dma_addr() to already add
the data_offset to the plane address. However, there are a few drivers
that already have a helper that respects the data_offset, but that seems
to be the exception rather than the rule.

What I am actually trying to achieve is to import a V4L2_PIX_FMT_NV12
buffer from a Rockchip RGA2 (which doesn't support the multi-planar API)
as a V4L2_PIX_FMT_NV12M buffer into the Hantro JPEG encoder (which
doesn't support V4L2_PIX_FMT_NV12). Solving this by importing the same
FD for each plane with a respective offset is how one would import such
a buffer with the DRM API. Please tell me, if my approach is wrong and,
if so, how I should solve it differently.

Michael
---
 .../verisilicon/rockchip_vpu2_hw_jpeg_enc.c   | 24 +++++++++++++------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c b/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
index 8395c4d48dd0..05df7768187d 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
@@ -32,6 +32,16 @@
 
 #define VEPU_JPEG_QUANT_TABLE_COUNT 16
 
+static dma_addr_t rockchip_vpu2_plane_dma_addr(struct vb2_buffer *vb,
+					       unsigned int plane_no)
+{
+	struct vb2_v4l2_buffer *v4l2_buf = to_vb2_v4l2_buffer(vb);
+	dma_addr_t base = vb2_dma_contig_plane_dma_addr(vb, plane_no);
+	unsigned int offset = v4l2_buf->planes[plane_no].data_offset;
+
+	return base + offset;
+}
+
 static void rockchip_vpu2_set_src_img_ctrl(struct hantro_dev *vpu,
 					   struct hantro_ctx *ctx)
 {
@@ -79,23 +89,23 @@ static void rockchip_vpu2_jpeg_enc_set_buffers(struct hantro_dev *vpu,
 
 	WARN_ON(pix_fmt->num_planes > 3);
 
-	vepu_write_relaxed(vpu, vb2_dma_contig_plane_dma_addr(dst_buf, 0) +
+	vepu_write_relaxed(vpu, rockchip_vpu2_plane_dma_addr(dst_buf, 0) +
 				ctx->vpu_dst_fmt->header_size,
 			   VEPU_REG_ADDR_OUTPUT_STREAM);
 	vepu_write_relaxed(vpu, size_left, VEPU_REG_STR_BUF_LIMIT);
 
 	if (pix_fmt->num_planes == 1) {
-		src[0] = vb2_dma_contig_plane_dma_addr(src_buf, 0);
+		src[0] = rockchip_vpu2_plane_dma_addr(src_buf, 0);
 		vepu_write_relaxed(vpu, src[0], VEPU_REG_ADDR_IN_PLANE_0);
 	} else if (pix_fmt->num_planes == 2) {
-		src[0] = vb2_dma_contig_plane_dma_addr(src_buf, 0);
-		src[1] = vb2_dma_contig_plane_dma_addr(src_buf, 1);
+		src[0] = rockchip_vpu2_plane_dma_addr(src_buf, 0);
+		src[1] = rockchip_vpu2_plane_dma_addr(src_buf, 1);
 		vepu_write_relaxed(vpu, src[0], VEPU_REG_ADDR_IN_PLANE_0);
 		vepu_write_relaxed(vpu, src[1], VEPU_REG_ADDR_IN_PLANE_1);
 	} else {
-		src[0] = vb2_dma_contig_plane_dma_addr(src_buf, 0);
-		src[1] = vb2_dma_contig_plane_dma_addr(src_buf, 1);
-		src[2] = vb2_dma_contig_plane_dma_addr(src_buf, 2);
+		src[0] = rockchip_vpu2_plane_dma_addr(src_buf, 0);
+		src[1] = rockchip_vpu2_plane_dma_addr(src_buf, 1);
+		src[2] = rockchip_vpu2_plane_dma_addr(src_buf, 2);
 		vepu_write_relaxed(vpu, src[0], VEPU_REG_ADDR_IN_PLANE_0);
 		vepu_write_relaxed(vpu, src[1], VEPU_REG_ADDR_IN_PLANE_1);
 		vepu_write_relaxed(vpu, src[2], VEPU_REG_ADDR_IN_PLANE_2);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
