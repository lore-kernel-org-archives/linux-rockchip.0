Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE6A606A330
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 15:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=r/JDHVvG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=c2UlZNcR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kGSUqymWwnYFiVNkTDa8XUjp+iNKZFIiGgfiSXve7GU=; b=r/JDHVvG9qG2alLXPmhLTy24GV
	2rDO3Rj4EQadXZpdO8xaAFZS/c0VKj6g+IQQGdrqS0w4cuFavNdJBx5CCZguRtocB8lWTVBuBPPFB
	NZP+Og+2EBfG3Yjabtels5ywPkXmXvKBNA9rEebrrBsGDzOo2w38hsR4FEDSrsiroUjaGpXIr+S25
	kLU+M8Umt3Pi08jVUXOAO8upQWPoc8dPl2mATG/xRO6lhirhahAy6/aMVIUzqGuOOh/lxTDPJskVA
	QlytVwZcIX7aiiXlhXqLeAmxq3PKKBKuABhhRAeVX+v9SjefgARGJ2rJ8v9W2zNvdTssztVaKzJvH
	/JkPViPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJL-0000000FNC1-2TRE;
	Fri, 20 Nov 2026 15:13:59 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJG-0000000FNA3-18vH
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 15:13:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795187632;
	bh=eHvtUm9gXR5TOG/ySst4yE08/6fWAkVWOtUNBDRKhpw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=c2UlZNcR05Zf7p+dQZxjjRZDmUi0gmut/GMR/A1euqPV8km0aLLn3KJ+vMhD/V987
	 7o8PUj0pTPHUFHeVwJDdln/WChS4eGIg5lgW6iguFsbfHHrDzIupEbWok/3RUtJqRh
	 RftreAbc3ODBexQxY4bQ0iYojumWwMZ1usdkTTS7sKicn8zZYBANL74EMVNlYNLzc/
	 ZB3U3bLK2bVlA89HHHhRMwsbRvpBUsHuZhRvuUCt++Vf7bAiMXzzUgpikao0FjaVeU
	 Z/hsIpsyR7lL8wgogYAJUybYFez8UtHPU2uQSBcV8K59briaUzTxMPvXDRr75c4VcC
	 OcW6uAEkkrTdg==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DFA9917E091F;
	Fri, 20 Nov 2026 16:13:51 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 3/7] media: verisilicon: h264: Use alloc/free helpers for auxiliary buffers
Date: Fri, 20 Nov 2026 16:13:41 +0100
Message-ID: <20261120151345.88802-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
References: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_071354_651035_D035C599 
X-CRM114-Status: UNSURE (   8.70  )
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
 drivers/media/platform/verisilicon/hantro_h264.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_h264.c b/drivers/media/platform/verisilicon/hantro_h264.c
index 2414782f1eb6..68dde1cd1ac2 100644
--- a/drivers/media/platform/verisilicon/hantro_h264.c
+++ b/drivers/media/platform/verisilicon/hantro_h264.c
@@ -494,26 +494,21 @@ int hantro_h264_dec_prepare_run(struct hantro_ctx *ctx)
 
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
 
-	priv->cpu = dma_alloc_coherent(vpu->dev, sizeof(*tbl), &priv->dma,
-				       GFP_KERNEL);
-	if (!priv->cpu)
+	if (hantro_allocate_aux_buf(ctx, priv, sizeof(*tbl)))
 		return -ENOMEM;
 
-	priv->size = sizeof(*tbl);
 	tbl = priv->cpu;
 	memcpy(tbl->cabac_table, h264_cabac_table, sizeof(tbl->cabac_table));
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
