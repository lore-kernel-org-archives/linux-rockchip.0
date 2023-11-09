Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D5B4C05021
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 16:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OV87cOX240XhsfOhRUCREFwpeh7hRsrhOQWiVxLIuU=; b=hUMxAzgxB2IOw3
	Sbcbskjw7tFkc2y9yHr/OMvywGCIckTmLKMfGOqsphnsafUWpTI7chgIX/J2AurXde49cZftzqaO0
	vCH6tTkTDCcTQEwDdV6jbD+8whTK+g5v+rwjkKfBScj8V3mT3JsK+hGUpNeUcbhA1E09t1hB/9wy6
	Nh9sTrji/F2NuRqb9Cj9/YDYHsOjyJDnObJBSi4zjXyX50OpRrusC60BnqECTPgurcQ3HVw0LaG6/
	HgNjrCJ87tjmPUaT+OFjEM+c+FMm5yyx1gA9sZfvReLjh8QmzxKKRAytrhrRH97/+VLUwkJqa2A4k
	g4DG/J/6ndg48UwC/8Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r185T-006oiS-0E;
	Thu, 09 Nov 2023 16:40:59 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r183D-006m2i-2a;
	Thu, 09 Nov 2023 16:38:47 +0000
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 654F066076BD;
	Thu,  9 Nov 2023 16:38:37 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699547918;
	bh=m/XObuCEI44KUz2Fob5jtqtX4M2WT3NJzN6g2AM2068=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Uf9NAFBvFesWqJNhhvAxL1OAGuG69LqEH2/oNf7sRVpaGHx+Jt54uN4K42Mji6yNZ
	 lwLB8PM6JCh/6DeImiU/npEgmsATsH+YpdCuwzbKVWp0OGyDuJkfDuthlqY1aH4Gh7
	 4t1jmv0RuINz8+E24urKM+jSusVYz7qm3UfM0TgNmOja/k7DqagplUElaQHk6CeRNE
	 eLpHATlaGYmQUbo9Fj+CUIZKH6zFgLCYH+BAKEcaSpbJNF1I7Vsz6YvlOcAcd2/xHL
	 zQ0ENfNHlCcS1GKhRn3McHlsPcRn13cXEPh3b1JCd0lLsiUY9m1MrSNjvM7DtmrVUq
	 wVVMnrWidOGaA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: [PATCH v15 48/56] media: verisilicon: Store chroma and motion vectors offset
Date: Thu,  9 Nov 2023 17:35:04 +0100
Message-Id: <20231109163512.179524-49-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231109163512.179524-14-benjamin.gaignard@collabora.com>
References: <20231109163512.179524-14-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_083840_009109_6C32B171 
X-CRM114-Status: GOOD (  10.54  )
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

Store computed values of chroma and motion vectors offset because
they depends on width and height values which change if the resolution
change.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
CC: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
CC: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/media/platform/verisilicon/hantro.h            | 2 ++
 drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c | 6 ++++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 0948b04a9f8d..6f5eb975d0e3 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -328,6 +328,8 @@ struct hantro_vp9_decoded_buffer_info {
 	/* Info needed when the decoded frame serves as a reference frame. */
 	unsigned short width;
 	unsigned short height;
+	size_t chroma_offset;
+	size_t mv_offset;
 	u32 bit_depth : 4;
 };
 
diff --git a/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c b/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
index 6fc4b555517f..6db1c32fce4d 100644
--- a/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g2_vp9_dec.c
@@ -158,9 +158,11 @@ static void config_output(struct hantro_ctx *ctx,
 
 	chroma_addr = luma_addr + chroma_offset(ctx, dec_params);
 	hantro_write_addr(ctx->dev, G2_OUT_CHROMA_ADDR, chroma_addr);
+	dst->vp9.chroma_offset = chroma_offset(ctx, dec_params);
 
 	mv_addr = luma_addr + mv_offset(ctx, dec_params);
 	hantro_write_addr(ctx->dev, G2_OUT_MV_ADDR, mv_addr);
+	dst->vp9.mv_offset = mv_offset(ctx, dec_params);
 }
 
 struct hantro_vp9_ref_reg {
@@ -195,7 +197,7 @@ static void config_ref(struct hantro_ctx *ctx,
 	luma_addr = hantro_get_dec_buf_addr(ctx, &buf->base.vb.vb2_buf);
 	hantro_write_addr(ctx->dev, ref_reg->y_base, luma_addr);
 
-	chroma_addr = luma_addr + chroma_offset(ctx, dec_params);
+	chroma_addr = luma_addr + buf->vp9.chroma_offset;
 	hantro_write_addr(ctx->dev, ref_reg->c_base, chroma_addr);
 }
 
@@ -238,7 +240,7 @@ static void config_ref_registers(struct hantro_ctx *ctx,
 	config_ref(ctx, dst, &ref_regs[2], dec_params, dec_params->alt_frame_ts);
 
 	mv_addr = hantro_get_dec_buf_addr(ctx, &mv_ref->base.vb.vb2_buf) +
-		  mv_offset(ctx, dec_params);
+		  mv_ref->vp9.mv_offset;
 	hantro_write_addr(ctx->dev, G2_REF_MV_ADDR(0), mv_addr);
 
 	hantro_reg_write(ctx->dev, &vp9_last_sign_bias,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
