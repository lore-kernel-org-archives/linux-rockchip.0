Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44369C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 11:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjFwG8deAtKdGY85pDcgFZkNmD1XQqGY9DGybcxIi5Q=; b=o2LRUVOu56qFp2
	asUggn5eN9d+urvlnGXVTWcg08GMckID6g+Kg/v/RDQDn9idiYyJ/z5/QK8zERrMRp3ITufol8MC0
	Aj3ll/zZzW+oxsZ9EB+6OLlN79Dn7Y+cQVjaL6wpobxVSXSwCXj6yuqe5swSp5uN1kOTFNoIjTutS
	eFiI0JuVAV1qoqYiIGP//wzCJUpsFSbTgWH8f87svU+6hjeHGzxyIg+CFjrLElb6/JcT7p27gFAkR
	mXGzzmBZDb8a3B7B0XFRRR1V9oOsGYbuXDWPtixrNbT+3hL0aKqCe//fpRATsOkZw/4sXYLc5/tkD
	VsqaNEOvnvVCEAhxmP8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Ad3-007VCy-30; Fri, 17 Jun 2022 11:59:09 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2AcA-007UqC-UX; Fri, 17 Jun 2022 11:58:18 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 41CDA6601809;
	Fri, 17 Jun 2022 12:58:13 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655467093;
	bh=kUbZWcRNMzi2WPQGtQkKDBy7v+BVLv+T6REBwhFVdjM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Bn5lVlUZ05Irb3YPu9DZK8DCwGHAWJN5F/jMYFiHf4nZ7ywixtkYyn9UlbgWqpYcf
	 RupN7jPpa20cfQhciZPGk8VAUKDDu49b/xeoWP9zPNV+WUszpA0inmUIHFAzCr1G4m
	 uIvezZsos/DGe+4Q7Kwa87uyhe4cc3MzJk88Eig7j9LLlDO3nfR4uWOYWr2ShFMW+B
	 tvirxAg+q8poypQs7AHuhAavBsESEfT5yEp9OMrc8UYAGse/QGP68dF+4aUPprEdfQ
	 Mh7WVsX/1pdMsOb8M0NsfSs1QmStYpCh31E1b0UjyacBYU/3UW5uxBNiot+5imMaYJ
	 OaMHD5SPk47Tg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 4/7] media: hantro: postproc: Configure output regs to support 10bit
Date: Fri, 17 Jun 2022 13:57:59 +0200
Message-Id: <20220617115802.396442-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_045815_213322_815B1FD6 
X-CRM114-Status: GOOD (  10.37  )
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

Move output format setting in postproc and make sure that
8/10bit configuration is correctly set.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 2 --
 drivers/staging/media/hantro/hantro_postproc.c    | 7 ++++++-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 8407ad45b7b7..c929f2974a01 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -167,8 +167,6 @@ static void set_params(struct hantro_ctx *ctx)
 	hantro_reg_write(vpu, &g2_bit_depth_y_minus8, sps->bit_depth_luma_minus8);
 	hantro_reg_write(vpu, &g2_bit_depth_c_minus8, sps->bit_depth_chroma_minus8);
 
-	hantro_reg_write(vpu, &g2_output_8_bits, 0);
-
 	hantro_reg_write(vpu, &g2_hdr_skip_length, compute_header_skip_lenght(ctx));
 
 	min_log2_cb_size = sps->log2_min_luma_coding_block_size_minus3 + 3;
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index a0928c508434..09d8cf942689 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -114,6 +114,7 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *dst_buf;
 	int down_scale = down_scale_factor(ctx);
+	int out_depth;
 	size_t chroma_offset;
 	dma_addr_t dst_dma;
 
@@ -132,8 +133,9 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
 		hantro_write_addr(vpu, G2_RS_OUT_LUMA_ADDR, dst_dma);
 		hantro_write_addr(vpu, G2_RS_OUT_CHROMA_ADDR, dst_dma + chroma_offset);
 	}
+
+	out_depth = hantro_get_format_depth(ctx->dst_fmt.pixelformat);
 	if (ctx->dev->variant->legacy_regs) {
-		int out_depth = hantro_get_format_depth(ctx->dst_fmt.pixelformat);
 		u8 pp_shift = 0;
 
 		if (out_depth > 8)
@@ -141,6 +143,9 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
 
 		hantro_reg_write(ctx->dev, &g2_rs_out_bit_depth, out_depth);
 		hantro_reg_write(ctx->dev, &g2_pp_pix_shift, pp_shift);
+	} else {
+		hantro_reg_write(vpu, &g2_output_8_bits, out_depth > 8 ? 0 : 1);
+		hantro_reg_write(vpu, &g2_output_format, out_depth > 8 ? 1 : 0);
 	}
 	hantro_reg_write(vpu, &g2_out_rs_e, 1);
 }
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
