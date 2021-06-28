Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7309AC49361
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 12:54:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C91761474
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 12:54:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C91761474
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHVfsIoNNZFPe6AkKmwLMHaXjFW1HbpXRjIbxHAFY6w=; b=2CROQTmE+zqgjw
	Wnf4zgrcKDlFvHaKLWl9UqG/Ge56d8GSPr5xpF3FSVCyrZMImuDqoNE9k0JlwawBEHZ92hqHCwiZg
	2ddRaif6ryaRBHoiJ3XNlaxT7trmZQIA/3k8mDss6c+9RwEoaoVbyuypd6CVktESVQoq+NVISxbk2
	IujmVZRGPLT4H4i4NNDe23SW4uoP5e+yiLQ9MPGsdp2PoeLWudQxRntX7Zl2yun2xjEp6B6HE+z1Q
	eOgz4zmCHtZYK8txDNiCDEMkVexOR6xlxRW07Xi08gFQudA3rl2HHVn007Fv4koRqJ1bRr4VpCuHT
	yON+WWq/dT+iKuUiWNww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxqmf-0084Lg-Ih; Mon, 28 Jun 2021 12:54:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxqmb-0084JE-Kl
 for linux-rockchip@lists.infradead.org; Mon, 28 Jun 2021 12:54:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 7B65E1F423D3
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 maccraft123mc@gmail.com, Chris Healy <cphealy@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH v2 03/10] media: hantro: Avoid redundant hantro_get_{dst,
 src}_buf() calls
Date: Mon, 28 Jun 2021 09:54:03 -0300
Message-Id: <20210628125410.9228-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210628125410.9228-1-ezequiel@collabora.com>
References: <20210628125410.9228-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_055437_974171_1C87406B 
X-CRM114-Status: GOOD (  12.66  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Getting the next src/dst buffer is relatively expensive
so avoid doing it multiple times.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
 .../staging/media/hantro/hantro_g1_h264_dec.c | 17 ++++++++---------
 .../staging/media/hantro/hantro_g1_vp8_dec.c  | 18 +++++++++---------
 .../media/hantro/rockchip_vpu2_hw_vp8_dec.c   | 19 +++++++++----------
 3 files changed, 26 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index 5c792b7bcb79..2aa37baad0c3 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -19,13 +19,12 @@
 #include "hantro_hw.h"
 #include "hantro_v4l2.h"
 
-static void set_params(struct hantro_ctx *ctx)
+static void set_params(struct hantro_ctx *ctx, struct vb2_v4l2_buffer *src_buf)
 {
 	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
 	const struct v4l2_ctrl_h264_decode_params *dec_param = ctrls->decode;
 	const struct v4l2_ctrl_h264_sps *sps = ctrls->sps;
 	const struct v4l2_ctrl_h264_pps *pps = ctrls->pps;
-	struct vb2_v4l2_buffer *src_buf = hantro_get_src_buf(ctx);
 	struct hantro_dev *vpu = ctx->dev;
 	u32 reg;
 
@@ -226,22 +225,20 @@ static void set_ref(struct hantro_ctx *ctx)
 	}
 }
 
-static void set_buffers(struct hantro_ctx *ctx)
+static void set_buffers(struct hantro_ctx *ctx, struct vb2_v4l2_buffer *src_buf)
 {
 	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
-	struct vb2_v4l2_buffer *src_buf, *dst_buf;
+	struct vb2_v4l2_buffer *dst_buf;
 	struct hantro_dev *vpu = ctx->dev;
 	dma_addr_t src_dma, dst_dma;
 	size_t offset = 0;
 
-	src_buf = hantro_get_src_buf(ctx);
-	dst_buf = hantro_get_dst_buf(ctx);
-
 	/* Source (stream) buffer. */
 	src_dma = vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
 	vdpu_write_relaxed(vpu, src_dma, G1_REG_ADDR_STR);
 
 	/* Destination (decoded frame) buffer. */
+	dst_buf = hantro_get_dst_buf(ctx);
 	dst_dma = hantro_get_dec_buf_addr(ctx, &dst_buf->vb2_buf);
 	/* Adjust dma addr to start at second line for bottom field */
 	if (ctrls->decode->flags & V4L2_H264_DECODE_PARAM_FLAG_BOTTOM_FIELD)
@@ -276,6 +273,7 @@ static void set_buffers(struct hantro_ctx *ctx)
 int hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
+	struct vb2_v4l2_buffer *src_buf;
 	int ret;
 
 	/* Prepare the H264 decoder context. */
@@ -284,9 +282,10 @@ int hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
 		return ret;
 
 	/* Configure hardware registers. */
-	set_params(ctx);
+	src_buf = hantro_get_src_buf(ctx);
+	set_params(ctx, src_buf);
 	set_ref(ctx);
-	set_buffers(ctx);
+	set_buffers(ctx, src_buf);
 
 	hantro_end_prepare_run(ctx);
 
diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index 2afd5996d75f..6180b23e7d94 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -367,13 +367,12 @@ static void cfg_tap(struct hantro_ctx *ctx,
 }
 
 static void cfg_ref(struct hantro_ctx *ctx,
-		    const struct v4l2_ctrl_vp8_frame *hdr)
+		    const struct v4l2_ctrl_vp8_frame *hdr,
+		    struct vb2_v4l2_buffer *vb2_dst)
 {
 	struct hantro_dev *vpu = ctx->dev;
-	struct vb2_v4l2_buffer *vb2_dst;
 	dma_addr_t ref;
 
-	vb2_dst = hantro_get_dst_buf(ctx);
 
 	ref = hantro_get_ref(ctx, hdr->last_frame_ts);
 	if (!ref) {
@@ -405,16 +404,14 @@ static void cfg_ref(struct hantro_ctx *ctx,
 }
 
 static void cfg_buffers(struct hantro_ctx *ctx,
-			const struct v4l2_ctrl_vp8_frame *hdr)
+			const struct v4l2_ctrl_vp8_frame *hdr,
+			struct vb2_v4l2_buffer *vb2_dst)
 {
 	const struct v4l2_vp8_segment *seg = &hdr->segment;
 	struct hantro_dev *vpu = ctx->dev;
-	struct vb2_v4l2_buffer *vb2_dst;
 	dma_addr_t dst_dma;
 	u32 reg;
 
-	vb2_dst = hantro_get_dst_buf(ctx);
-
 	/* Set probability table buffer address */
 	vdpu_write_relaxed(vpu, ctx->vp8_dec.prob_tbl.dma,
 			   G1_REG_ADDR_QTABLE);
@@ -436,6 +433,7 @@ int hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 {
 	const struct v4l2_ctrl_vp8_frame *hdr;
 	struct hantro_dev *vpu = ctx->dev;
+	struct vb2_v4l2_buffer *vb2_dst;
 	size_t height = ctx->dst_fmt.height;
 	size_t width = ctx->dst_fmt.width;
 	u32 mb_width, mb_height;
@@ -499,8 +497,10 @@ int hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 	cfg_qp(ctx, hdr);
 	cfg_parts(ctx, hdr);
 	cfg_tap(ctx, hdr);
-	cfg_ref(ctx, hdr);
-	cfg_buffers(ctx, hdr);
+
+	vb2_dst = hantro_get_dst_buf(ctx);
+	cfg_ref(ctx, hdr, vb2_dst);
+	cfg_buffers(ctx, hdr, vb2_dst);
 
 	hantro_end_prepare_run(ctx);
 
diff --git a/drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c b/drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c
index 704607511b57..d079075448c9 100644
--- a/drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c
+++ b/drivers/staging/media/hantro/rockchip_vpu2_hw_vp8_dec.c
@@ -444,14 +444,12 @@ static void cfg_tap(struct hantro_ctx *ctx,
 }
 
 static void cfg_ref(struct hantro_ctx *ctx,
-		    const struct v4l2_ctrl_vp8_frame *hdr)
+		    const struct v4l2_ctrl_vp8_frame *hdr,
+		    struct vb2_v4l2_buffer *vb2_dst)
 {
 	struct hantro_dev *vpu = ctx->dev;
-	struct vb2_v4l2_buffer *vb2_dst;
 	dma_addr_t ref;
 
-	vb2_dst = hantro_get_dst_buf(ctx);
-
 	ref = hantro_get_ref(ctx, hdr->last_frame_ts);
 	if (!ref) {
 		vpu_debug(0, "failed to find last frame ts=%llu\n",
@@ -482,16 +480,14 @@ static void cfg_ref(struct hantro_ctx *ctx,
 }
 
 static void cfg_buffers(struct hantro_ctx *ctx,
-			const struct v4l2_ctrl_vp8_frame *hdr)
+			const struct v4l2_ctrl_vp8_frame *hdr,
+			struct vb2_v4l2_buffer *vb2_dst)
 {
 	const struct v4l2_vp8_segment *seg = &hdr->segment;
 	struct hantro_dev *vpu = ctx->dev;
-	struct vb2_v4l2_buffer *vb2_dst;
 	dma_addr_t dst_dma;
 	u32 reg;
 
-	vb2_dst = hantro_get_dst_buf(ctx);
-
 	/* Set probability table buffer address */
 	vdpu_write_relaxed(vpu, ctx->vp8_dec.prob_tbl.dma,
 			   VDPU_REG_ADDR_QTABLE);
@@ -514,6 +510,7 @@ int rockchip_vpu2_vp8_dec_run(struct hantro_ctx *ctx)
 {
 	const struct v4l2_ctrl_vp8_frame *hdr;
 	struct hantro_dev *vpu = ctx->dev;
+	struct vb2_v4l2_buffer *vb2_dst;
 	size_t height = ctx->dst_fmt.height;
 	size_t width = ctx->dst_fmt.width;
 	u32 mb_width, mb_height;
@@ -590,8 +587,10 @@ int rockchip_vpu2_vp8_dec_run(struct hantro_ctx *ctx)
 	cfg_qp(ctx, hdr);
 	cfg_parts(ctx, hdr);
 	cfg_tap(ctx, hdr);
-	cfg_ref(ctx, hdr);
-	cfg_buffers(ctx, hdr);
+
+	vb2_dst = hantro_get_dst_buf(ctx);
+	cfg_ref(ctx, hdr, vb2_dst);
+	cfg_buffers(ctx, hdr, vb2_dst);
 
 	hantro_end_prepare_run(ctx);
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
