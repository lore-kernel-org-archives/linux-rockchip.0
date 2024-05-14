Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85FD1C25B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 May 2024 16:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LmvvtXWlWgFNNGTa7VIbRtkJBTeMHSDoM+On9m+vAK4=; b=PFYqhbKLXxqeGu
	HhQPs5oqdOrcHSzch1W5d18P+p63fA62LBcrcIsgr+QS9OjiX6sNSM0n5zZMsqlw5dL9jnzjvuXHq
	GMVAPBa7lfXvAXEyZR1ewv9+xAyWnpx1DwwT408uOfYUc18oKWvaqUOJjAc31VJxYxwWhVEwQ00Lb
	DEbir43KlU+2bNMYngutmO6CrREZ2jLxLafhwISIWWaCH/PoUIrSvgnIwAU+IlmenOMsZqfHKUxnC
	yrhwB2a4G4gEes2WinvBcY1l7OqW1CxffB5fXJIjlp0jHzperwpVCxO3+qDfPBy67fSBhx5Rmy9qI
	0dK01QNCefhZ6QE/6DvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6utn-0000000GVIH-1aqu;
	Tue, 14 May 2024 16:21:07 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6utk-0000000GVGk-14WD
	for linux-rockchip@lists.infradead.org;
	Tue, 14 May 2024 16:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715703660;
	bh=sOi7W1+C/MDe4EJSbvHzQbwK+uiTr+8hwJd8RjWm/Vs=;
	h=From:To:Cc:Subject:Date:From;
	b=NwCEZ+9oc8a1VzMSJMAfCYGtb+t+Jhxqq5Cp9OUetTgKC8JuQOkDcOxvLLBLRsydg
	 +9PAeJlG7v02fi3WE+7cZsLLhsb0JWiSlV7ZTOe5ymghYHDhvOvVLSMApPeaGPB4bj
	 XjjAZR8FDWJAppiro3rdRCf42jHIfA3iYWOYeY9C6P39ZlF0/AbPecW3o/Lfv+hCgY
	 e9rNYU3CPMshM8/8wRhJrbnhLMO4toxRHHv1QYPZe7IDaOdOzlyDwFbs0cnx20N9lA
	 +p7htZnHEzXbTuUknXKG6hV/aviYM3OAPMklsIJgUl479mRUfF2X5qKYGSlMw8YVp2
	 ekRiMAkNbv2aw==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 00D893780A0B;
	Tue, 14 May 2024 16:20:59 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: Add reference buffers compression
Date: Tue, 14 May 2024 18:20:54 +0200
Message-Id: <20240514162054.294002-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_092104_639090_302FB6F5 
X-CRM114-Status: GOOD (  17.76  )
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

Reference frame compression is a feature added in G2 decoder to compress
frame buffers so that the bandwidth of storing/loading reference frames
can be reduced, especially when the resolution of decoded stream is of
high definition.

The impact of compressed frames is confirmed when using perf to monitor
the number of memory accesses with or without compression feature.
The following command
perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/ gst-launch-1.0 filesrc location=Jockey_3840x2160_120fps_420_8bit_HEVC_RAW.hevc ! queue ! h265parse ! v4l2slh265dec ! fakesink

give us these results
without compression feature:
Performance counter stats for 'system wide':

        1711300345      imx8_ddr0/cycles/
         892207924      imx8_ddr0/read-cycles/
        1291785864      imx8_ddr0/write-cycles/

      13.760048353 seconds time elapsed

with compression feature:
Performance counter stats for 'system wide':

         274526799      imx8_ddr0/cycles/
         453120194      imx8_ddr0/read-cycles/
         833391434      imx8_ddr0/write-cycles/

      18.257831534 seconds time elapsed

As expected the number of read/write cycles are really lower when compression
is used.

Since storing compression data requires more memory a module
parameter named 'hevc_use_compression' is used to enable/disable
this feature and, by default, compression isn't used.

Enabling compression feature means that decoder output frames
are stored with a specific compression pixel format. Since this
pixel format is unknown, this patch restrain compression feature
usage to the cases where post-processor pixels formats (NV12 or NV15)
are selected by the applications.

Fluster compliance HEVC test suite score is still 141/147 after this patch.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/platform/verisilicon/hantro_g2.c    | 35 +++++++++++++++++
 .../platform/verisilicon/hantro_g2_hevc_dec.c | 20 ++++++++--
 .../platform/verisilicon/hantro_g2_regs.h     |  4 ++
 .../media/platform/verisilicon/hantro_hevc.c  |  8 ++++
 .../media/platform/verisilicon/hantro_hw.h    | 39 +++++++++++++++++++
 .../platform/verisilicon/hantro_postproc.c    |  6 ++-
 6 files changed, 108 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_g2.c b/drivers/media/platform/verisilicon/hantro_g2.c
index b880a6849d58..62ca91427360 100644
--- a/drivers/media/platform/verisilicon/hantro_g2.c
+++ b/drivers/media/platform/verisilicon/hantro_g2.c
@@ -9,6 +9,12 @@
 #include "hantro_g2_regs.h"
 
 #define G2_ALIGN	16
+#define CBS_SIZE	16	/* compression table size in bytes */
+#define CBS_LUMA	8	/* luminance CBS is composed of 1 8x8 coded block */
+#define CBS_CHROMA_W	(8 * 2)	/* chrominance CBS is composed of two 8x4 coded
+				 * blocks, with Cb CB first then Cr CB following
+				 */
+#define CBS_CHROMA_H	4
 
 void hantro_g2_check_idle(struct hantro_dev *vpu)
 {
@@ -56,3 +62,32 @@ size_t hantro_g2_motion_vectors_offset(struct hantro_ctx *ctx)
 
 	return ALIGN((cr_offset * 3) / 2, G2_ALIGN);
 }
+
+static size_t hantro_g2_mv_size(struct hantro_ctx *ctx)
+{
+	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
+	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
+	unsigned int pic_width_in_ctbs, pic_height_in_ctbs;
+	unsigned int max_log2_ctb_size;
+
+	max_log2_ctb_size = sps->log2_min_luma_coding_block_size_minus3 + 3 +
+			    sps->log2_diff_max_min_luma_coding_block_size;
+	pic_width_in_ctbs = (sps->pic_width_in_luma_samples +
+			    (1 << max_log2_ctb_size) - 1) >> max_log2_ctb_size;
+	pic_height_in_ctbs = (sps->pic_height_in_luma_samples + (1 << max_log2_ctb_size) - 1)
+			     >> max_log2_ctb_size;
+
+	return pic_width_in_ctbs * pic_height_in_ctbs * (1 << (2 * (max_log2_ctb_size - 4))) * 16;
+}
+
+size_t hantro_g2_luma_compress_offset(struct hantro_ctx *ctx)
+{
+	return hantro_g2_motion_vectors_offset(ctx) +
+	       hantro_g2_mv_size(ctx);
+}
+
+size_t hantro_g2_chroma_compress_offset(struct hantro_ctx *ctx)
+{
+	return hantro_g2_luma_compress_offset(ctx) +
+	       hantro_hevc_luma_compressed_size(ctx->dst_fmt.width, ctx->dst_fmt.height);
+}
diff --git a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
index d3f8c33eb16c..85a44143b378 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
@@ -367,11 +367,14 @@ static int set_ref(struct hantro_ctx *ctx)
 	const struct v4l2_ctrl_hevc_decode_params *decode_params = ctrls->decode_params;
 	const struct v4l2_hevc_dpb_entry *dpb = decode_params->dpb;
 	dma_addr_t luma_addr, chroma_addr, mv_addr = 0;
+	dma_addr_t compress_luma_addr, compress_chroma_addr = 0;
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *vb2_dst;
 	struct hantro_decoded_buffer *dst;
 	size_t cr_offset = hantro_g2_chroma_offset(ctx);
 	size_t mv_offset = hantro_g2_motion_vectors_offset(ctx);
+	size_t compress_luma_offset = hantro_g2_luma_compress_offset(ctx);
+	size_t compress_chroma_offset = hantro_g2_chroma_compress_offset(ctx);
 	u32 max_ref_frames;
 	u16 dpb_longterm_e;
 	static const struct hantro_reg cur_poc[] = {
@@ -445,6 +448,8 @@ static int set_ref(struct hantro_ctx *ctx)
 
 		chroma_addr = luma_addr + cr_offset;
 		mv_addr = luma_addr + mv_offset;
+		compress_luma_addr = luma_addr + compress_luma_offset;
+		compress_chroma_addr = luma_addr + compress_chroma_offset;
 
 		if (dpb[i].flags & V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE)
 			dpb_longterm_e |= BIT(V4L2_HEVC_DPB_ENTRIES_NUM_MAX - 1 - i);
@@ -452,6 +457,8 @@ static int set_ref(struct hantro_ctx *ctx)
 		hantro_write_addr(vpu, G2_REF_LUMA_ADDR(i), luma_addr);
 		hantro_write_addr(vpu, G2_REF_CHROMA_ADDR(i), chroma_addr);
 		hantro_write_addr(vpu, G2_REF_MV_ADDR(i), mv_addr);
+		hantro_write_addr(vpu, G2_REF_COMP_LUMA_ADDR(i), compress_luma_addr);
+		hantro_write_addr(vpu, G2_REF_COMP_CHROMA_ADDR(i), compress_chroma_addr);
 	}
 
 	vb2_dst = hantro_get_dst_buf(ctx);
@@ -465,19 +472,27 @@ static int set_ref(struct hantro_ctx *ctx)
 
 	chroma_addr = luma_addr + cr_offset;
 	mv_addr = luma_addr + mv_offset;
+	compress_luma_addr = luma_addr + compress_luma_offset;
+	compress_chroma_addr = luma_addr + compress_chroma_offset;
 
 	hantro_write_addr(vpu, G2_REF_LUMA_ADDR(i), luma_addr);
 	hantro_write_addr(vpu, G2_REF_CHROMA_ADDR(i), chroma_addr);
-	hantro_write_addr(vpu, G2_REF_MV_ADDR(i++), mv_addr);
+	hantro_write_addr(vpu, G2_REF_MV_ADDR(i), mv_addr);
+	hantro_write_addr(vpu, G2_REF_COMP_LUMA_ADDR(i), compress_luma_addr);
+	hantro_write_addr(vpu, G2_REF_COMP_CHROMA_ADDR(i++), compress_chroma_addr);
 
 	hantro_write_addr(vpu, G2_OUT_LUMA_ADDR, luma_addr);
 	hantro_write_addr(vpu, G2_OUT_CHROMA_ADDR, chroma_addr);
 	hantro_write_addr(vpu, G2_OUT_MV_ADDR, mv_addr);
+	hantro_write_addr(vpu, G2_OUT_COMP_LUMA_ADDR, compress_luma_addr);
+	hantro_write_addr(vpu, G2_OUT_COMP_CHROMA_ADDR, compress_chroma_addr);
 
 	for (; i < V4L2_HEVC_DPB_ENTRIES_NUM_MAX; i++) {
 		hantro_write_addr(vpu, G2_REF_LUMA_ADDR(i), 0);
 		hantro_write_addr(vpu, G2_REF_CHROMA_ADDR(i), 0);
 		hantro_write_addr(vpu, G2_REF_MV_ADDR(i), 0);
+		hantro_write_addr(vpu, G2_REF_COMP_LUMA_ADDR(i), 0);
+		hantro_write_addr(vpu, G2_REF_COMP_CHROMA_ADDR(i), 0);
 	}
 
 	hantro_reg_write(vpu, &g2_refer_lterm_e, dpb_longterm_e);
@@ -594,8 +609,7 @@ int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx)
 	/* Don't disable output */
 	hantro_reg_write(vpu, &g2_out_dis, 0);
 
-	/* Don't compress buffers */
-	hantro_reg_write(vpu, &g2_ref_compress_bypass, 1);
+	hantro_reg_write(vpu, &g2_ref_compress_bypass, !ctx->hevc_dec.use_compression);
 
 	/* Bus width and max burst */
 	hantro_reg_write(vpu, &g2_buswidth, BUS_WIDTH_128);
diff --git a/drivers/media/platform/verisilicon/hantro_g2_regs.h b/drivers/media/platform/verisilicon/hantro_g2_regs.h
index 82606783591a..b943b1816db7 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_regs.h
+++ b/drivers/media/platform/verisilicon/hantro_g2_regs.h
@@ -318,6 +318,10 @@
 #define G2_TILE_BSD_ADDR		(G2_SWREG(183))
 #define G2_DS_DST			(G2_SWREG(186))
 #define G2_DS_DST_CHR			(G2_SWREG(188))
+#define G2_OUT_COMP_LUMA_ADDR		(G2_SWREG(190))
+#define G2_REF_COMP_LUMA_ADDR(i)	(G2_SWREG(192) + ((i) * 0x8))
+#define G2_OUT_COMP_CHROMA_ADDR		(G2_SWREG(224))
+#define G2_REF_COMP_CHROMA_ADDR(i)	(G2_SWREG(226) + ((i) * 0x8))
 
 #define g2_strm_buffer_len	G2_DEC_REG(258, 0, 0xffffffff)
 #define g2_strm_start_offset	G2_DEC_REG(259, 0, 0xffffffff)
diff --git a/drivers/media/platform/verisilicon/hantro_hevc.c b/drivers/media/platform/verisilicon/hantro_hevc.c
index 2c14330bc562..895dc0c76c74 100644
--- a/drivers/media/platform/verisilicon/hantro_hevc.c
+++ b/drivers/media/platform/verisilicon/hantro_hevc.c
@@ -25,6 +25,11 @@
 #define MAX_TILE_COLS 20
 #define MAX_TILE_ROWS 22
 
+bool hevc_use_compression;
+module_param_named(hevc_use_compression, hevc_use_compression, bool, 0644);
+MODULE_PARM_DESC(hevc_use_compression,
+		 "Use reference frame compression for HEVC");
+
 void hantro_hevc_ref_init(struct hantro_ctx *ctx)
 {
 	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
@@ -275,5 +280,8 @@ int hantro_hevc_dec_init(struct hantro_ctx *ctx)
 
 	hantro_hevc_ref_init(ctx);
 
+	hevc_dec->use_compression =
+		hevc_use_compression & hantro_needs_postproc(ctx, ctx->vpu_dst_fmt);
+
 	return 0;
 }
diff --git a/drivers/media/platform/verisilicon/hantro_hw.h b/drivers/media/platform/verisilicon/hantro_hw.h
index 7737320cc8cc..43d4ff637376 100644
--- a/drivers/media/platform/verisilicon/hantro_hw.h
+++ b/drivers/media/platform/verisilicon/hantro_hw.h
@@ -42,6 +42,14 @@
 
 #define MAX_POSTPROC_BUFFERS	64
 
+#define G2_ALIGN	16
+#define CBS_SIZE	16	/* compression table size in bytes */
+#define CBS_LUMA	8	/* luminance CBS is composed of 1 8x8 coded block */
+#define CBS_CHROMA_W	(8 * 2)	/* chrominance CBS is composed of two 8x4 coded
+				 * blocks, with Cb CB first then Cr CB following
+				 */
+#define CBS_CHROMA_H	4
+
 struct hantro_dev;
 struct hantro_ctx;
 struct hantro_buf;
@@ -144,6 +152,7 @@ struct hantro_hevc_dec_ctrls {
  * @ref_bufs_used:	Bitfield of used reference buffers
  * @ctrls:		V4L2 controls attached to a run
  * @num_tile_cols_allocated: number of allocated tiles
+ * @use_compression:	use reference buffer compression
  */
 struct hantro_hevc_dec_hw_ctx {
 	struct hantro_aux_buf tile_sizes;
@@ -156,6 +165,7 @@ struct hantro_hevc_dec_hw_ctx {
 	u32 ref_bufs_used;
 	struct hantro_hevc_dec_ctrls ctrls;
 	unsigned int num_tile_cols_allocated;
+	bool use_compression;
 };
 
 /**
@@ -510,6 +520,33 @@ hantro_hevc_mv_size(unsigned int width, unsigned int height)
 	return width * height / 16;
 }
 
+static inline size_t
+hantro_hevc_luma_compressed_size(unsigned int width, unsigned int height)
+{
+	u32 pic_width_in_cbsy =
+		round_up((width + CBS_LUMA - 1) / CBS_LUMA, CBS_SIZE);
+	u32 pic_height_in_cbsy = (height + CBS_LUMA - 1) / CBS_LUMA;
+
+	return round_up(pic_width_in_cbsy * pic_height_in_cbsy, CBS_SIZE);
+}
+
+static inline size_t
+hantro_hevc_chroma_compressed_size(unsigned int width, unsigned int height)
+{
+	u32 pic_width_in_cbsc =
+		round_up((width + CBS_CHROMA_W - 1) / CBS_CHROMA_W, CBS_SIZE);
+	u32 pic_height_in_cbsc = (height / 2 + CBS_CHROMA_H - 1) / CBS_CHROMA_H;
+
+	return round_up(pic_width_in_cbsc * pic_height_in_cbsc, CBS_SIZE);
+}
+
+static inline size_t
+hantro_hevc_compressed_size(unsigned int width, unsigned int height)
+{
+	return hantro_hevc_luma_compressed_size(width, height) +
+	       hantro_hevc_chroma_compressed_size(width, height);
+}
+
 static inline unsigned short hantro_av1_num_sbs(unsigned short dimension)
 {
 	return DIV_ROUND_UP(dimension, 64);
@@ -525,6 +562,8 @@ hantro_av1_mv_size(unsigned int width, unsigned int height)
 
 size_t hantro_g2_chroma_offset(struct hantro_ctx *ctx);
 size_t hantro_g2_motion_vectors_offset(struct hantro_ctx *ctx);
+size_t hantro_g2_luma_compress_offset(struct hantro_ctx *ctx);
+size_t hantro_g2_chroma_compress_offset(struct hantro_ctx *ctx);
 
 int hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
 int rockchip_vpu2_mpeg2_dec_run(struct hantro_ctx *ctx);
diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index 41e93176300b..232c93eea7ee 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -213,9 +213,13 @@ static unsigned int hantro_postproc_buffer_size(struct hantro_ctx *ctx)
 	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_VP9_FRAME)
 		buf_size += hantro_vp9_mv_size(pix_mp.width,
 					       pix_mp.height);
-	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE)
+	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE) {
 		buf_size += hantro_hevc_mv_size(pix_mp.width,
 						pix_mp.height);
+		if (ctx->hevc_dec.use_compression)
+			buf_size += hantro_hevc_compressed_size(pix_mp.width,
+								pix_mp.height);
+	}
 	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_AV1_FRAME)
 		buf_size += hantro_av1_mv_size(pix_mp.width,
 					       pix_mp.height);
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
