Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDC52C7619A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Apr 2023 11:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxAHuiuE8uRSj+Hp5tgI1DkfmdxSTIRzuTmag3eBgvU=; b=pvvR2rkdUtLyhc
	+2qEBm4jUf5uy/E2/iUmv/tVaMJQklFX0juA7FSSjDFygFt1QF/fkCkCTZJbUtz6SDc1Ha9AUQBzA
	RMue7vxlRkmaupRdt+AOmbPTTPk7xHhfyFAYj7E0gBlxDIVYVIJ1SI048TzIJ9dsJokX7eE70+nZQ
	sJD1K9g1n2d7rOGhiGK37YvBnxPm8uIOT4ZIYOzFW9rUsHAFiZ4yZiUt3DPS/JdiBB9JKG/Z5BAxA
	jEYiEMQ6SMR/m/ZGesgk18kEvSfYvszx2NMSX2rP0K6/qaPgMz0VJQa3INEB03EcmIjLk3nous+KB
	sQHEwXF4jAZOLY7KsIqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZ6t-002zZR-39;
	Wed, 12 Apr 2023 11:57:59 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmZ64-002yvo-2v;
	Wed, 12 Apr 2023 11:57:12 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:c2e:89bd:4b8e:9e98])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5BC536603206;
	Wed, 12 Apr 2023 12:57:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681300627;
	bh=ZKTWNs6DFyoOacCAnTYmZcugQ4xTQ0qtplCE2KqxA6E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V+RYJ2uiqXG71Yl1Nziw7EQ3fs9sGvjoJfV07LuAqvvTFrY2l+wqB5LITqvbVc8V3
	 qogL+X395+x7rJpww4TUl5yi64ftELrWwBI9SWjNmOYYW8Y6MUtIQGrbWPwfc87Aei
	 3ywR6LA84JsjrvolACTm8ChCATbsR6D43eyQjGa0pOR82GdjFkld2aj8tyqpnp3JVw
	 DLy8kVmZnBVJ5IJKP0kjvR37Hw/svfzdDIgmy4r4e2bBOn+Oj3/LqbfphnZ2/eVMqr
	 Yy+sTUYs6GtvyD1jJIzbzpVmcq0pjlxT2IK8cFCAgenZqAzfXyZzN0n7arTOnhQQLz
	 8OUWwaYvYKZOQ==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 08/13] media: verisilicon: Compute motion vectors size for AV1 frames
Date: Wed, 12 Apr 2023 13:56:47 +0200
Message-Id: <20230412115652.403949-9-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
References: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_045709_099725_87F15627 
X-CRM114-Status: GOOD (  12.79  )
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

Compute the additional space required to store motion vectors at
the end of the frames buffers.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_hw.h      | 13 +++++++++++++
 .../media/platform/verisilicon/hantro_postproc.c    |  3 +++
 drivers/media/platform/verisilicon/hantro_v4l2.c    |  5 +++++
 3 files changed, 21 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_hw.h b/drivers/media/platform/verisilicon/hantro_hw.h
index e83f0c523a30..bc61d4e051c7 100644
--- a/drivers/media/platform/verisilicon/hantro_hw.h
+++ b/drivers/media/platform/verisilicon/hantro_hw.h
@@ -417,6 +417,19 @@ hantro_hevc_mv_size(unsigned int width, unsigned int height)
 	return width * height / 16;
 }
 
+static inline unsigned short hantro_av1_num_sbs(unsigned short dimension)
+{
+	return DIV_ROUND_UP(dimension, 64);
+}
+
+static inline size_t
+hantro_av1_mv_size(unsigned int width, unsigned int height)
+{
+	size_t num_sbs = hantro_av1_num_sbs(width) * hantro_av1_num_sbs(height);
+
+	return ALIGN(num_sbs * 384, 16) * 2 + 512;
+}
+
 int hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
 int rockchip_vpu2_mpeg2_dec_run(struct hantro_ctx *ctx);
 void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index 6437423ccf3a..bb16af50719d 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -213,6 +213,9 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
 	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE)
 		buf_size += hantro_hevc_mv_size(pix_mp.width,
 						pix_mp.height);
+	else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_AV1_FRAME)
+		buf_size += hantro_av1_mv_size(pix_mp.width,
+					       pix_mp.height);
 
 	for (i = 0; i < num_buffers; ++i) {
 		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 3293060a8c67..e31cbe56779a 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -337,6 +337,11 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 			pix_mp->plane_fmt[0].sizeimage +=
 				hantro_hevc_mv_size(pix_mp->width,
 						    pix_mp->height);
+		else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_AV1_FRAME &&
+			 !hantro_needs_postproc(ctx, fmt))
+			pix_mp->plane_fmt[0].sizeimage +=
+				hantro_av1_mv_size(pix_mp->width,
+						   pix_mp->height);
 	} else if (!pix_mp->plane_fmt[0].sizeimage) {
 		/*
 		 * For coded formats the application can specify
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
