From: Randy Li <randy.li@rock-chips.com>
Subject: [PATCH v2 3/6] [TEST]: rockchip: mpp: support qptable
Date: Thu,  7 Mar 2019 18:03:13 +0800
Message-ID: <20190307100316.925-4-randy.li@rock-chips.com>
References: <20190307100316.925-1-randy.li@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190307100316.925-1-randy.li@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-media@vger.kernel.org
Cc: paul.kocialkowski@bootlin.com, maxime.ripard@bootlin.com, joro@8bytes.org, ayaka@soulik.info, Randy Li <randy.li@rock-chips.com>, linux-kernel@vger.kernel.org, jernej.skrabec@gmail.com, nicolas@ndufresne.ca, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org, posciak@chromium.org, thomas.petazzoni@bootlin.com, groeck@chromium.org, mchehab@kernel.org, ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

I don't care, I don't want to store buffers for a session.
I just want to use it to verify the FFmpeg.

I want the memory region !!!
It can save more time if those data are prepared in userspace.

Signed-off-by: Randy Li <randy.li@rock-chips.com>
---
 drivers/staging/rockchip-mpp/mpp_dev_common.c |  3 +--
 drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c  |  3 +++
 drivers/staging/rockchip-mpp/vdpu2/mpeg2.c    | 19 +++++++++++++------
 3 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rockchip-mpp/mpp_dev_common.c b/drivers/staging/rockchip-mpp/mpp_dev_common.c
index c43304c3e7b8..1291b642179e 100644
--- a/drivers/staging/rockchip-mpp/mpp_dev_common.c
+++ b/drivers/staging/rockchip-mpp/mpp_dev_common.c
@@ -1193,8 +1193,7 @@ static int rockchip_mpp_queue_init(void *priv, struct vb2_queue *src_vq,
 	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
 	src_vq->drv_priv = session;
 	src_vq->mem_ops = &vb2_dma_contig_memops;
-	src_vq->dma_attrs = DMA_ATTR_ALLOC_SINGLE_PAGES |
-			    DMA_ATTR_NO_KERNEL_MAPPING;
+	src_vq->dma_attrs = DMA_ATTR_ALLOC_SINGLE_PAGES;
 	src_vq->buf_struct_size = sizeof(struct v4l2_m2m_buffer);
 	src_vq->min_buffers_needed = 1;
 	src_vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
diff --git a/drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c b/drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c
index ce98aa15025e..00413936623e 100644
--- a/drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c
+++ b/drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c
@@ -147,6 +147,9 @@ static int rkvdpu_s_fmt_vid_out_mplane(struct file *filp, void *priv,
 	if (sizes >= SZ_16M)
 		return -EINVAL;
 
+	/* For those slice header data */
+	pix_mp->plane_fmt[pix_mp->num_planes - 1].sizeimage += SZ_1M;
+
 	session->fmt_out = *pix_mp;
 
 	/* Copy the pixel format information from OUTPUT to CAPUTRE */
diff --git a/drivers/staging/rockchip-mpp/vdpu2/mpeg2.c b/drivers/staging/rockchip-mpp/vdpu2/mpeg2.c
index d32958c4cb20..c12d1a8ef2da 100644
--- a/drivers/staging/rockchip-mpp/vdpu2/mpeg2.c
+++ b/drivers/staging/rockchip-mpp/vdpu2/mpeg2.c
@@ -52,7 +52,7 @@ static const u8 intra_default_q_matrix[64] = {
 static void mpeg2_dec_copy_qtable(u8 * qtable, const struct v4l2_ctrl_mpeg2_quantization
 				  *ctrl)
 {
-	int i, n;
+	int i;
 
 	if (!qtable || !ctrl)
 		return;
@@ -111,21 +111,22 @@ int rkvdpu_mpeg2_gen_reg(struct mpp_session *session, void *regs,
 			 struct vb2_v4l2_buffer *src_buf)
 {
 	const struct v4l2_ctrl_mpeg2_slice_params *params;
-	const struct v4l2_ctrl_mpeg2_quantization *quantization;
 	const struct v4l2_mpeg2_sequence *sequence;
 	const struct v4l2_mpeg2_picture *picture;
+	const struct v4l2_ctrl_mpeg2_quantization *quantization;
 	struct vdpu2_regs *p_regs = regs;
+	void *qtable = NULL;
+	size_t stream_len = 0;
 
 	params = rockchip_mpp_get_cur_ctrl(session,
 					   V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
-	quantization = rockchip_mpp_get_cur_ctrl(session,
-						 V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
-
 	if (!params)
 		return -EINVAL;
 
 	sequence = &params->sequence;
 	picture = &params->picture;
+	quantization = rockchip_mpp_get_cur_ctrl(session,
+			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
 
 	init_hw_cfg(p_regs);
 
@@ -202,7 +203,13 @@ int rkvdpu_mpeg2_gen_reg(struct mpp_session *session, void *regs,
 	p_regs->sw64.rlc_vlc_base =
 	    vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
 	p_regs->sw122.strm_start_bit = params->data_bit_offset;
-	p_regs->sw51.stream_len = vb2_get_plane_payload(&src_buf->vb2_buf, 0);
+	stream_len = vb2_get_plane_payload(&src_buf->vb2_buf, 0);
+	p_regs->sw51.stream_len = stream_len;
+
+	qtable = vb2_plane_vaddr(&src_buf->vb2_buf, 0) + ALIGN(stream_len, 8);
+	mpeg2_dec_copy_qtable(qtable, quantization);
+        p_regs->sw61.qtable_base = p_regs->sw64.rlc_vlc_base
+		+ ALIGN(stream_len, 8);
 
 	return 0;
 }
-- 
2.20.1
