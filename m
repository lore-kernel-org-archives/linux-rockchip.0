Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74D69C48BC4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 20:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LAmm/WKZNy0JM6O+CWv4/6745ABLEptADVfQO05gM54=; b=BEgxLMsccDRu8d
	iyfKx5DjsMITsuFggRrSepfLiUW34nOhu2rUlFTluaK8jggo+5sRArK04l6qhbtizxrDZvliyfpJR
	yb2ZbSMotyVLdbhLNABcQnIywOK/Ux2EZZMsWaab9czJGm+uvpe6+iLynq2vlSPiLMvGT0GG5YSpX
	N7yIW57GaPEPi89JuCRuhOSXVg7MnukJqrM3Fzt7zyLH0OIAr0/tX1MU5U1RKhvoCC6Up/zSj8aF2
	EiHhSZ7kOnULF5un6hondiVoTa32+nXewoBk4uFMWdbw6hEI1L1dI6Iltrr5rV0cXIU9ddl8g1671
	ALDkiXBCW2plhe76ojdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo0w-00000008PHn-1zhP;
	Sun, 18 Feb 2024 20:43:54 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo0s-00000008PGF-3PdP
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Feb 2024 20:43:52 +0000
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 77FA618A2;
	Sun, 18 Feb 2024 21:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708289023;
	bh=1jPD4ZwCNh5s8H5GhXGpZTh3MhZzlOTDv0IcEs+jiuk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l/zX+jftKOmnVSJ8clp90Nu6eEVD6/acTuVAB6xX++fJWmtBkWaDDAlGJGFGX3Wbu
	 8nNtn0X2UKJ7H1vu4AhPOEwLj2wP5FRozW38f+vfM+e7uE/paM1PpX3EaXcP3sEteC
	 /pc3ilKtd1StMQtKvNThqDQLkjURLLjsu10VjpnE=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Adam Ford <aford173@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v13 02/12] media: rkisp1: Support setting memory stride for main path
Date: Sun, 18 Feb 2024 22:43:40 +0200
Message-ID: <20240218204350.10916-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
References: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_124351_165160_DD0BD83D 
X-CRM114-Status: GOOD (  22.03  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

Some versions of the ISP supported by the rkisp1 driver, such as the ISP
in the i.MX8MP, implement configurable memory stride for the main path
the same way as already implemented by the driver for the self path.
Support this feature by adding a main stride feature flag and program
the corresponding registers accordingly.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Tested-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Changes since v3:

- Implement memory stride support
- Squash patch that adds register bits definitions
- Reword the commit message

Changes since v2:

- Document the RKISP1_FEATURE_MAIN_STRIDE bit
- Use the rkisp1_has_feature() macro
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 34 ++++++++++++-------
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  6 ++--
 .../platform/rockchip/rkisp1/rkisp1-regs.h    | 27 +++++++++++++++
 3 files changed, 52 insertions(+), 15 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index aebd3c12020b..3c24c8c7ad68 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -442,6 +442,14 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
 	rkisp1_write(rkisp1, cap->config->mi.cr_size_init,
 		     rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR));
 
+	if (rkisp1_has_feature(rkisp1, MAIN_STRIDE)) {
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_LLENGTH, cap->stride);
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_PIC_WIDTH, pixm->width);
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_PIC_HEIGHT, pixm->height);
+		rkisp1_write(rkisp1, RKISP1_CIF_MI_MP_Y_PIC_SIZE,
+			     cap->stride * pixm->height);
+	}
+
 	rkisp1_irq_frame_end_enable(cap);
 
 	/* set uv swapping for semiplanar formats */
@@ -479,11 +487,11 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
 	rkisp1_write(rkisp1, cap->config->mi.cr_size_init,
 		     rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR));
 
-	rkisp1_write(rkisp1, RKISP1_CIF_MI_SP_Y_LLENGTH, cap->sp_y_stride);
+	rkisp1_write(rkisp1, RKISP1_CIF_MI_SP_Y_LLENGTH, cap->stride);
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_SP_Y_PIC_WIDTH, pixm->width);
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_SP_Y_PIC_HEIGHT, pixm->height);
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_SP_Y_PIC_SIZE,
-		     cap->sp_y_stride * pixm->height);
+		     cap->stride * pixm->height);
 
 	rkisp1_irq_frame_end_enable(cap);
 
@@ -1092,8 +1100,8 @@ static const struct vb2_ops rkisp1_vb2_ops = {
  */
 
 static const struct v4l2_format_info *
-rkisp1_fill_pixfmt(struct v4l2_pix_format_mplane *pixm,
-		   enum rkisp1_stream_id id)
+rkisp1_fill_pixfmt(const struct rkisp1_capture *cap,
+		   struct v4l2_pix_format_mplane *pixm)
 {
 	struct v4l2_plane_pix_format *plane_y = &pixm->plane_fmt[0];
 	const struct v4l2_format_info *info;
@@ -1106,10 +1114,13 @@ rkisp1_fill_pixfmt(struct v4l2_pix_format_mplane *pixm,
 
 	/*
 	 * The SP supports custom strides, expressed as a number of pixels for
-	 * the Y plane. Clamp the stride to a reasonable value to avoid integer
-	 * overflows when calculating the bytesperline and sizeimage values.
+	 * the Y plane, and so does the MP in ISP versions that have the
+	 * MAIN_STRIDE feature. Clamp the stride to a reasonable value to avoid
+	 * integer overflows when calculating the bytesperline and sizeimage
+	 * values.
 	 */
-	if (id == RKISP1_SELFPATH)
+	if (cap->id == RKISP1_SELFPATH ||
+	    rkisp1_has_feature(cap->rkisp1, MAIN_STRIDE))
 		stride = clamp(DIV_ROUND_UP(plane_y->bytesperline, info->bpp[0]),
 			       pixm->width, 65536U);
 	else
@@ -1184,7 +1195,7 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
 	pixm->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 	pixm->quantization = V4L2_QUANTIZATION_DEFAULT;
 
-	info = rkisp1_fill_pixfmt(pixm, cap->id);
+	info = rkisp1_fill_pixfmt(cap, pixm);
 
 	if (fmt_cfg)
 		*fmt_cfg = fmt;
@@ -1196,12 +1207,9 @@ static void rkisp1_set_fmt(struct rkisp1_capture *cap,
 			   struct v4l2_pix_format_mplane *pixm)
 {
 	rkisp1_try_fmt(cap, pixm, &cap->pix.cfg, &cap->pix.info);
-	cap->pix.fmt = *pixm;
 
-	/* SP supports custom stride in number of pixels of the Y plane */
-	if (cap->id == RKISP1_SELFPATH)
-		cap->sp_y_stride = pixm->plane_fmt[0].bytesperline /
-				   cap->pix.info->bpp[0];
+	cap->pix.fmt = *pixm;
+	cap->stride = pixm->plane_fmt[0].bytesperline / cap->pix.info->bpp[0];
 }
 
 static int rkisp1_try_fmt_vid_cap_mplane(struct file *file, void *fh,
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 35efdabf9db1..0da497222579 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -110,6 +110,7 @@ enum rkisp1_isp_pad {
  * enum rkisp1_feature - ISP features
  *
  * @RKISP1_FEATURE_MIPI_CSI2: The ISP has an internal MIPI CSI-2 receiver
+ * @RKISP1_FEATURE_MAIN_STRIDE: The ISP supports configurable stride on the main path
  *
  * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
  * the driver to implement support for features present in some ISP versions
@@ -117,6 +118,7 @@ enum rkisp1_isp_pad {
  */
 enum rkisp1_feature {
 	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
+	RKISP1_FEATURE_MAIN_STRIDE = BIT(1),
 };
 
 #define rkisp1_has_feature(rkisp1, feature) \
@@ -266,7 +268,7 @@ struct rkisp1_device;
  *		  handler to stop the streaming by waiting on the 'done' wait queue.
  *		  If the irq handler is not called, the stream is stopped by the callback
  *		  after timeout.
- * @sp_y_stride:  the selfpath allows to configure a y stride that is longer than the image width.
+ * @stride:       the line stride for the first plane, in pixel units
  * @buf.lock:	  lock to protect buf.queue
  * @buf.queue:	  queued buffer list
  * @buf.dummy:	  dummy space to store dropped data
@@ -287,7 +289,7 @@ struct rkisp1_capture {
 	bool is_streaming;
 	bool is_stopping;
 	wait_queue_head_t done;
-	unsigned int sp_y_stride;
+	unsigned int stride;
 	struct {
 		/* protects queue, curr and next */
 		spinlock_t lock;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index bea69a0d766a..3b19c8411360 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -207,6 +207,24 @@
 #define RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP	BIT(1)
 #define RKISP1_CIF_MI_XTD_FMT_CTRL_DMA_CB_CR_SWAP	BIT(2)
 
+/* MI_OUTPUT_ALIGN_FORMAT */
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_LSB_ALIGNMENT			BIT(0)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_BYTES		BIT(1)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_WORDS		BIT(2)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_MP_BYTE_SWAP_DWORDS		BIT(3)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_BYTES		BIT(4)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_WORDS		BIT(5)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_SP_BYTE_SWAP_DWORDS		BIT(6)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_DMA_BYTE_SWAP_BYTES		BIT(7)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_DMA_BYTE_SWAP_WORDS		BIT(8)
+#define RKISP1_CIF_OUTPUT_ALIGN_FORMAT_DMA_BYTE_SWAP_DWORDS		BIT(9)
+
+/* MI_MP_OUTPUT_FIFO_SIZE */
+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_FULL	(0 << 0)
+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_HALF	(1 << 0)
+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_QUARTER	(2 << 0)
+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE_OUTPUT_FIFO_DEPTH_EIGHT	(3 << 0)
+
 /* VI_CCL */
 #define RKISP1_CIF_CCL_CIF_CLK_DIS			BIT(2)
 /* VI_ISP_CLK_CTRL */
@@ -1000,6 +1018,15 @@
 #define RKISP1_CIF_MI_SP_CB_BASE_AD_INIT2	(RKISP1_CIF_MI_BASE + 0x00000140)
 #define RKISP1_CIF_MI_SP_CR_BASE_AD_INIT2	(RKISP1_CIF_MI_BASE + 0x00000144)
 #define RKISP1_CIF_MI_XTD_FORMAT_CTRL		(RKISP1_CIF_MI_BASE + 0x00000148)
+#define RKISP1_CIF_MI_MP_HANDSHAKE_0		(RKISP1_CIF_MI_BASE + 0x0000014C)
+#define RKISP1_CIF_MI_MP_Y_LLENGTH		(RKISP1_CIF_MI_BASE + 0x00000150)
+#define RKISP1_CIF_MI_MP_Y_SLICE_OFFSET		(RKISP1_CIF_MI_BASE + 0x00000154)
+#define RKISP1_CIF_MI_MP_C_SLICE_OFFSET		(RKISP1_CIF_MI_BASE + 0x00000158)
+#define RKISP1_CIF_MI_OUTPUT_ALIGN_FORMAT	(RKISP1_CIF_MI_BASE + 0x0000015C)
+#define RKISP1_CIF_MI_MP_OUTPUT_FIFO_SIZE	(RKISP1_CIF_MI_BASE + 0x00000160)
+#define RKISP1_CIF_MI_MP_Y_PIC_WIDTH		(RKISP1_CIF_MI_BASE + 0x00000164)
+#define RKISP1_CIF_MI_MP_Y_PIC_HEIGHT		(RKISP1_CIF_MI_BASE + 0x00000168)
+#define RKISP1_CIF_MI_MP_Y_PIC_SIZE		(RKISP1_CIF_MI_BASE + 0x0000016C)
 
 #define RKISP1_CIF_SMIA_BASE			0x00001a00
 #define RKISP1_CIF_SMIA_CTRL			(RKISP1_CIF_SMIA_BASE + 0x00000000)
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
