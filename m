Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D667BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 15:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UsCGtzYOJ2BzWsk8hfVs8iui/SIahQLsyDBICHTMmkQ=; b=IvnYYZWf3IWk7l
	JvbkqYewkyfpodePmddkGabQ1kgqGXOVvbHWQjycyLQoQFckg5WKvdXKUYc1j9Z1/YZcfqmAabSf7
	53eWeWvN20F4tbgF2U9ivtxBMdvr7scS65XEdBIhBAvxTr4pSW4bnEXrxQ9x2uejwDMCCGJFsnG3n
	8z6zX3PdSiG+f0luhf85KsZZ1EUclpkujy8kFLcYJmUGYqF/kXh0Hq/EEYdzvNrsKiCi7pCoFxeV/
	iT2fcJDIglULwY3UB/kMh/UHO5SmgNf3BNXi4crwSvGagj7H6r4KqUt7Km7twKWMSCYslEQCs4jXj
	y7rN4J5s96ipyZ6dgCoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nf1kW-006JBL-VB; Thu, 14 Apr 2022 15:51:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nf1kS-006JA0-TH
 for linux-rockchip@lists.infradead.org; Thu, 14 Apr 2022 15:51:11 +0000
Received: from benjamin-XPS-13-9310.. (unknown
 [IPv6:2a01:e0a:120:3210:aefc:13d9:b947:5c76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 68C011F47BB1;
 Thu, 14 Apr 2022 16:51:06 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649951466;
 bh=0MdOcwSw6al69IA+FsMeVjUYxtwt5yjgyejYGRWyDoo=;
 h=From:To:Cc:Subject:Date:From;
 b=IDdHmQZi+s+WqBuPzdQn1KevORA6zg93AhFiALrwcMFF4ZDBI8Fa7Kgo2lQqe1PpE
 jSyAPFrfpSci05WVuvHv6yxOEcn9GKLIg/6QzZU9pJ6jMo4/al3SuS3cL65ENpUHyB
 zXoh0uulcsqUssQeLoEqFER1a3fm4iSIWLA9LiCyUMkxw+csgDSZ4H09+RSYEsw8zP
 IElE2rTldKR2yhNVsKYCRoa8I2ulE+hBI7BBezwxgo4el+MTPIcCbK6KeRKClAgzvl
 XDRvgfrdDCPk0qIJO8ZYtG+5iNDaeC15+74YIiqzPLRm1F7Fm+4VQCKHwOs4z4uyyJ
 oxc52d3BvIwdw==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 jon@nanocrew.net, aford173@gmail.com, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: hantro: HEVC: Fix output frame chroma offset
Date: Thu, 14 Apr 2022 17:50:59 +0200
Message-Id: <20220414155059.1172593-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_085109_242804_52D28ABD 
X-CRM114-Status: GOOD (  11.87  )
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

Hantro decoder doesn't take care of the requested and aligned size
of the capture buffer.
Stop using the bitstream width/height and use capture frame size
stored in the context to get the correct values.

hantro_hevc_chroma_offset() and hantro_hevc_motion_vectors_offset()
are only used in hantro_g2_hevc_dec.c so take the opportunity
to move them here.

fluster HEVC score goes up from 77 to 85 successful tests (over 147)
with this patch.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 19 ++++++++++++++++---
 drivers/staging/media/hantro/hantro_hevc.c    | 17 -----------------
 drivers/staging/media/hantro/hantro_hw.h      |  2 --
 3 files changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index c524af41baf5..6deb31b7b993 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -8,6 +8,20 @@
 #include "hantro_hw.h"
 #include "hantro_g2_regs.h"
 
+#define G2_ALIGN	16
+
+static size_t hantro_hevc_chroma_offset(struct hantro_ctx *ctx)
+{
+	return ctx->dst_fmt.width * ctx->dst_fmt.height;
+}
+
+static size_t hantro_hevc_motion_vectors_offset(struct hantro_ctx *ctx)
+{
+	size_t cr_offset = hantro_hevc_chroma_offset(ctx);
+
+	return ALIGN((cr_offset * 3) / 2, G2_ALIGN);
+}
+
 static void prepare_tile_info_buffer(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
@@ -335,7 +349,6 @@ static void set_ref_pic_list(struct hantro_ctx *ctx)
 static int set_ref(struct hantro_ctx *ctx)
 {
 	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
-	const struct v4l2_ctrl_hevc_sps *sps = ctrls->sps;
 	const struct v4l2_ctrl_hevc_pps *pps = ctrls->pps;
 	const struct v4l2_ctrl_hevc_decode_params *decode_params = ctrls->decode_params;
 	const struct v4l2_hevc_dpb_entry *dpb = decode_params->dpb;
@@ -343,8 +356,8 @@ static int set_ref(struct hantro_ctx *ctx)
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *vb2_dst;
 	struct hantro_decoded_buffer *dst;
-	size_t cr_offset = hantro_hevc_chroma_offset(sps);
-	size_t mv_offset = hantro_hevc_motion_vectors_offset(sps);
+	size_t cr_offset = hantro_hevc_chroma_offset(ctx);
+	size_t mv_offset = hantro_hevc_motion_vectors_offset(ctx);
 	u32 max_ref_frames;
 	u16 dpb_longterm_e;
 	static const struct hantro_reg cur_poc[] = {
diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
index b49a41d7ae91..5d446b599219 100644
--- a/drivers/staging/media/hantro/hantro_hevc.c
+++ b/drivers/staging/media/hantro/hantro_hevc.c
@@ -27,23 +27,6 @@
 
 #define UNUSED_REF	-1
 
-#define G2_ALIGN		16
-
-size_t hantro_hevc_chroma_offset(const struct v4l2_ctrl_hevc_sps *sps)
-{
-	int bytes_per_pixel = sps->bit_depth_luma_minus8 == 0 ? 1 : 2;
-
-	return sps->pic_width_in_luma_samples *
-	       sps->pic_height_in_luma_samples * bytes_per_pixel;
-}
-
-size_t hantro_hevc_motion_vectors_offset(const struct v4l2_ctrl_hevc_sps *sps)
-{
-	size_t cr_offset = hantro_hevc_chroma_offset(sps);
-
-	return ALIGN((cr_offset * 3) / 2, G2_ALIGN);
-}
-
 static void hantro_hevc_ref_init(struct hantro_ctx *ctx)
 {
 	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index ed018e293ba0..8fc6c9ab63f0 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -340,8 +340,6 @@ int hantro_hevc_dec_prepare_run(struct hantro_ctx *ctx);
 dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx, int poc);
 int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr);
 void hantro_hevc_ref_remove_unused(struct hantro_ctx *ctx);
-size_t hantro_hevc_chroma_offset(const struct v4l2_ctrl_hevc_sps *sps);
-size_t hantro_hevc_motion_vectors_offset(const struct v4l2_ctrl_hevc_sps *sps);
 
 static inline unsigned short hantro_vp9_num_sbs(unsigned short dimension)
 {
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
