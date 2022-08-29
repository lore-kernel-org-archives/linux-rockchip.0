Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A421C0502C
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/41nHOzx+BKguOt8fr4Bz55c9Eemd8iR0oL6Y+cIze0=; b=FNi7MGApo0x3wR
	hpVVZLB0FJecnpQUB8JRp5sU7cH54ag/gFuLL0P+EBI4wzNtNNx1YaY2N75rc7uO7gDlCEvKxzlPH
	66JrGpovbJytlbzv2QEDOAMM4/xZTz8bQ27Kw5SWbd3iSS96c68zDhlulht9EU8fIllZSkX6YUJ+Z
	gXGKR9NGpQMuskq8UW9J3OJyGILKjMUojMrh9glN0OWOBhXuty5eJuA/twBRhUnYOwbYL8sipGGDh
	3HWP8inbU/9w9J0jYrSpWXeMCxsDvZotURv46xSjbaI7zyZR0r13TYqTF6lsfd3xEGGgV9KPfgWUP
	kHzyn4g0EvHXOlZE6rug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShnb-00Bp1v-2I; Mon, 29 Aug 2022 16:39:43 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShWj-00Bhxk-FS; Mon, 29 Aug 2022 16:22:24 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:3d67:aec0:f788:1143])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A0E7B6601EFE;
	Mon, 29 Aug 2022 17:22:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661790131;
	bh=1QjEDfeYtMg2LvAMK7jYApMsPkNYBRfLQFsRT9YF/R8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VHIEPeN8LeBrF70kVPqEXxSeXnjS1QujvHicAi5AqDiw68GwAvEAjlWb6dpsRB3fO
	 WC+YNedLJmmy5fePlSezXbQua2cI4jSV90YjogB9N5tsOgMsx55kSyNld+0ZdHUAS1
	 /x/YfQ9n/DSh7Ox+5vBseQktvwwEbR2NyyS4KDqHb+64tLOSG55yO7IrtO4q7yiPRh
	 f8dV7Bp7qjtKV19vOiy7vpjh/fDwZQn3692GXGaKcSZbTZTNHhQmZqfKPC24bvB+RO
	 JRMNbCVbNYAH9BpwGlQG5CWbohacYpLuz9KHJ32lywSRNWJeYvwFBaFHrPjnEmzQth
	 8EX45HCDvxSLg==
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
Subject: [PATCH v3 4/7] media: hantro: postproc: Configure output regs to support 10bit
Date: Mon, 29 Aug 2022 18:21:56 +0200
Message-Id: <20220829162159.881588-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
References: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_092217_683439_55982DDC 
X-CRM114-Status: GOOD (  11.46  )
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
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
---
 drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c | 2 --
 drivers/media/platform/verisilicon/hantro_postproc.c    | 7 ++++++-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
index a917079a6ed3..a9d4ac84a8d8 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g2_hevc_dec.c
@@ -167,8 +167,6 @@ static void set_params(struct hantro_ctx *ctx)
 	hantro_reg_write(vpu, &g2_bit_depth_y_minus8, sps->bit_depth_luma_minus8);
 	hantro_reg_write(vpu, &g2_bit_depth_c_minus8, sps->bit_depth_chroma_minus8);
 
-	hantro_reg_write(vpu, &g2_output_8_bits, 0);
-
 	hantro_reg_write(vpu, &g2_hdr_skip_length, compute_header_skip_length(ctx));
 
 	min_log2_cb_size = sps->log2_min_luma_coding_block_size_minus3 + 3;
diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index a0928c508434..09d8cf942689 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
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
