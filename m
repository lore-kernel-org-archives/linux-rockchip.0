Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBA97C02185
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 08:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9hLSf+FBfCG8r/o29WBgxjUR2O13Ro/5GHQYAqyRKQI=; b=ItMsFiKS5VHz0Q
	roR5i21ua/Ldgvw7BhO6HXtaU/vBaFUaz+fAJVkH/MD+Jf544mnc+w/qUyKVpiEQnnSduVkwy3qxl
	NZ1VSVhm4qe7Im0snbFgR/uhFvAL4ngL7XIMbsTJ4mASBCMgh4wlDdmpFHhQTfaG2AhPfcGHut8yf
	KrN2S5N03OtdRpB1YjA93k1Tul7agbuRk5hGz8GKpCCpYiNk9H9EmpcYPZN+20oV1cyuHNvQZG9B9
	Oz7pFrembVg6u6Vc9+9LXDaF4Yb8bbH70eVFlzllW3d1Ci3VTpPWUXDUUnPVT1+UZgqdAkd80QzZH
	R+ibq1bgbEWLKuven17g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmuq-00000004zrL-01rH;
	Mon, 20 Jan 2025 08:13:48 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmun-00000004zqw-2bcI
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 08:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737360824;
	bh=qXCeVQ5H7LQ7GV9ZiOCU7aRKOsXYeiDIV9jkxvusI90=;
	h=From:To:Cc:Subject:Date:From;
	b=FUKDh3J/liYtduke1N2SldZiXwfCzD33utuST0ElE6EwV1JYf1iR07MRM/TtsZG30
	 HiIBDxPkSm2skdCSOCTl1WPHxoL5VJSKkEljiaXWOUyV3D0x0HaOQawybCMV3m59PD
	 M0drqpxLcUS5neYZ/gjA6EZJ05B4phBxWGh7uZFWAtohkaHzhQiixU7OOSfLLWrAsG
	 rHhBlANqItIlB6+nglP9X0cFt/9cmtlfy85Ixu2ZEOZTZygsqNTgeALFI/w0ar1j19
	 rk84cdlnl2wlbJjSaPxIWn0gpXlMtk5D8Mej8e8unOxwmGVxpWwe0ZPI524GuiKrig
	 yKhFJopcI3+MA==
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:fb75:b420:7f1c:508])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C52CD17E09AF;
	Mon, 20 Jan 2025 09:13:43 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: VP9: Fix typo
Date: Mon, 20 Jan 2025 09:13:42 +0100
Message-ID: <20250120081342.66853-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_001345_828137_2EEAFABF 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
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

Change headres_size to headers_size.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c b/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
index 342e543dee4c..82a478ac645e 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
@@ -776,15 +776,15 @@ config_source(struct hantro_ctx *ctx, const struct v4l2_ctrl_vp9_frame *dec_para
 	      struct vb2_v4l2_buffer *vb2_src)
 {
 	dma_addr_t stream_base, tmp_addr;
-	unsigned int headres_size;
+	unsigned int headers_size;
 	u32 src_len, start_bit, src_buf_len;
 
-	headres_size = dec_params->uncompressed_header_size
+	headers_size = dec_params->uncompressed_header_size
 		     + dec_params->compressed_header_size;
 
 	stream_base = vb2_dma_contig_plane_dma_addr(&vb2_src->vb2_buf, 0);
 
-	tmp_addr = stream_base + headres_size;
+	tmp_addr = stream_base + headers_size;
 	if (ctx->dev->variant->legacy_regs)
 		hantro_write_addr(ctx->dev, G2_STREAM_ADDR, (tmp_addr & ~0xf));
 	else
@@ -794,7 +794,7 @@ config_source(struct hantro_ctx *ctx, const struct v4l2_ctrl_vp9_frame *dec_para
 	hantro_reg_write(ctx->dev, &g2_start_bit, start_bit);
 
 	src_len = vb2_get_plane_payload(&vb2_src->vb2_buf, 0);
-	src_len += start_bit / 8 - headres_size;
+	src_len += start_bit / 8 - headers_size;
 	hantro_reg_write(ctx->dev, &g2_stream_len, src_len);
 
 	if (!ctx->dev->variant->legacy_regs) {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
