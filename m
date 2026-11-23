Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E65606A31E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Xw2wVjs2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=KGLX9BGk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6moJ4OSEkxzcOtGCi3CD2N3zzVvTV7dDHnHccVGSEgY=; b=Xw2wVjs2aFKD0oa2Pbc9LHUieI
	8DQnEqedt1oy17vvX1dktM09cL/JM0je6EvgPMq2Ln7u4+RWyWXCnogikxt5auRXsIkGp7sfFo8m0
	/OswzBjgrON/oWyHfWfUFhx36KIO/Xw3mXIvvHYtwVGv7cFcOBeLuY9WmdQzcRcpWsRir+sBwN+ZO
	zujVCHG5F15VvPF4qnkh1Pkjrvin8GuJeslzMCIvXWkQCl4XPEU8nh+0lTZ2FAkjfR+GxxYzseNYZ
	iQMJlsLmUI6TketRhn1IrEBxzB2Wk8VM+Io86rdAbCmGQ+nk6LOM+z2Qlg0zywSn/DIe7KoHWRmab
	8o8T/D4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpx-00000002rkN-45OU;
	Mon, 23 Nov 2026 09:59:49 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpR-00000002rDs-0zwM
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 09:59:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795427953;
	bh=rXNw1d4USB5/kawtOh342Yw/bkDvJVwMdlr6Hcx6BPk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KGLX9BGkj3B0THyrz1hoYznAf8T4NbJFC95FdrN5IGI1qxIezlBufEadNeSX2MfcK
	 ZdXWdAVI/8nlgWvuxYG4YAl7dvqUL9JFlQyyksvKpgpRfXUOCoGVuu6zB9Qn2o/z5C
	 E+8llySsvVTuHW4Hg2dtdOdrtdwx8m/FhYnBCo0ue07SR0FsCkFNo+OQrKbpxO2Jaf
	 rXyim1TH9X5kM+fPDLLmhFEFdylAUYIuEzOngYE6LQWy/JA51+WMf5uSBHEd9IKS0V
	 +lzwvG+PWnvfdWu3r6kVdJbV1afAgeEgIuqXoJ/83dUfnYaL8oWtdIr/vF0DFFllta
	 v9gq7OehREFzw==
Received: from benjamin-XPS-13-9310.home (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5167617E0FB8;
	Mon, 23 Nov 2026 10:59:13 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 7/7] media: verisilicon: mpeg4: Use alloc/free helpers for auxiliary buffers
Date: Mon, 23 Nov 2026 10:59:05 +0100
Message-ID: <20261123095905.60622-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
References: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_015918_267999_6E5730E2 
X-CRM114-Status: UNSURE (   9.06  )
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

 .../media/platform/verisilicon/hantro_mpeg2.c | 19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_mpeg2.c b/drivers/media/platform/verisilicon/hantro_mpeg2.c
index 04e545eb0a83..7386cc50b11b 100644
--- a/drivers/media/platform/verisilicon/hantro_mpeg2.c
+++ b/drivers/media/platform/verisilicon/hantro_mpeg2.c
@@ -37,25 +37,10 @@ void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
 
 int hantro_mpeg2_dec_init(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
-
-	ctx->mpeg2_dec.qtable.size = ARRAY_SIZE(zigzag) * 4;
-	ctx->mpeg2_dec.qtable.cpu =
-		dma_alloc_coherent(vpu->dev,
-				   ctx->mpeg2_dec.qtable.size,
-				   &ctx->mpeg2_dec.qtable.dma,
-				   GFP_KERNEL);
-	if (!ctx->mpeg2_dec.qtable.cpu)
-		return -ENOMEM;
-	return 0;
+	return hantro_allocate_aux_buf(ctx, &ctx->mpeg2_dec.qtable, ARRAY_SIZE(zigzag) * 4);
 }
 
 void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx)
 {
-	struct hantro_dev *vpu = ctx->dev;
-
-	dma_free_coherent(vpu->dev,
-			  ctx->mpeg2_dec.qtable.size,
-			  ctx->mpeg2_dec.qtable.cpu,
-			  ctx->mpeg2_dec.qtable.dma);
+	hantro_free_aux_buf(ctx, &ctx->mpeg2_dec.qtable);
 }
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
