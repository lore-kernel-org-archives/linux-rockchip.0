Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DA7606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 09:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gMiwA+Lh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=W9TEWd/0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=l6iAv1vSIZUW+eAjT/nU60Lz/Vx/rDhxdpAjBz5Qy6Q=; b=gMiwA+LhtH6bCUCEZHzftEjFCL
	Gh3cJ7ZncqNlAWkgcQ/rNbK/GDnlG36bp0IGCHM/SQCH3GCeg1iPlmP6ES8WW8dGCqVQrfqVpHFcd
	hSFvcTD7mVm2yR2hueAKvj8Wjmf6zRhxqqiuaiXOEzZIM+pgIf4Dv4UzsFOYOZcHvU1VhT0v/xuEv
	VWLKq+umLgSAekaJ7dcLAoG6LcBkijOjYBHcdjhJSs1RUj3rIyDU1U4YHwhp/4UJonevkJe7BQ6Qf
	voh+96ZQirMldT6UnSqyBLYFomst05LHU3FdfZaD3vCpENw4+bsRi5EYIFk3Km5NOHkvH/gXtyGp8
	r0xsoeqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpm-00000002rUU-0LJH;
	Mon, 23 Nov 2026 09:59:38 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpO-00000002rAo-0TIC
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 09:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795427952;
	bh=9yeBc+PxT30nkJI0UUsO3U6UqbH202+SJlELHbA1n04=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W9TEWd/0rkrYwuG4FDG5kyIHuFhVrfAifouMH1mR2AaZqZVwlRuHAS0kcfujJdu0F
	 ehWDB89Bg7m42XkWmmVe7zgmoPH+vY+BWAUyeCvrr4gwtHfGFntOjDjKVzwKj/Odzm
	 2IhcnupTdgx2uDSPqZst2MrI8lUTnuf+yF7q15iPvYWDJ09sHNX5A1W9VL6+fbEFmY
	 VFDCzReLxrMHCCnGMeV4Xuy5/2Oo/Cg1WxpE3xCWJEQyCTDHTiA2wZCAcfAhbhyhUz
	 /D2SmKE5DeJL2s8Y1P3z0AT5YxKmnaZUlYdXUP/8pMORE9mENaD3e71pOpo6eICGQq
	 vBdhzCDAGIy+g==
Received: from benjamin-XPS-13-9310.home (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E7F6F17E0DE8;
	Mon, 23 Nov 2026 10:59:11 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 3/7] media: verisilicon: h264: Use alloc/free helpers for auxiliary buffers
Date: Mon, 23 Nov 2026 10:59:01 +0100
Message-ID: <20261123095905.60622-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
References: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_015914_500650_BE6906BF 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Simplify and clean up the code by using the helpers.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
changes in v3:
- As suggested by Philipp do not mask hantro_allocate_aux_buf() returned
  value.

 drivers/media/platform/verisilicon/hantro_h264.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_h264.c b/drivers/media/platform/verisilicon/hantro_h264.c
index 2414782f1eb6..3da3083182fb 100644
--- a/drivers/media/platform/verisilicon/hantro_h264.c
+++ b/drivers/media/platform/verisilicon/hantro_h264.c
@@ -494,26 +494,23 @@ int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
 
 void hantro_h264_dec_exit(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_h264_dec_hw_ctx *h264_dec = &ctx->h264_dec;
 	struct hantro_aux_buf *priv = &h264_dec->priv;
 
-	dma_free_coherent(vpu->dev, priv->size, priv->cpu, priv->dma);
+	hantro_free_aux_buf(ctx, priv);
 }
 
 int hantro_h264_dec_init(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_h264_dec_hw_ctx *h264_dec = &ctx->h264_dec;
 	struct hantro_aux_buf *priv = &h264_dec->priv;
 	struct hantro_h264_dec_priv_tbl *tbl;
+	int ret;
 
-	priv->cpu = dma_alloc_coherent(vpu->dev, sizeof(*tbl), &priv->dma,
-				       GFP_KERNEL);
-	if (!priv->cpu)
-		return -ENOMEM;
+	ret = hantro_allocate_aux_buf(ctx, priv, sizeof(*tbl));
+	if (ret)
+		return ret;
 
-	priv->size = sizeof(*tbl);
 	tbl = priv->cpu;
 	memcpy(tbl->cabac_table, h264_cabac_table, sizeof(tbl->cabac_table));
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
