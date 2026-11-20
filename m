Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F291A60A2611
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 15:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=J7q0c3UW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=guTG6gPO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3DSfEFYuekLv23/o5o1KbTrPZLLjqeZXuPMtKAKB+pQ=; b=J7q0c3UW1kMUl9qDI7ul8jY0qv
	EEXWmwNEioKiin3rK9dmxWwJXoRkO3O615seUpqfaL9b8TAVgaJpx2FqcXoG9i3Zeflm2gOdAq+4U
	od017m35kI4xrxLewUbM3KfKS3blX2+dkEVPgq9+XECB2kY0VluHkX8q8ucn37PaoaJpMB1v2Gk5W
	25vTMJMYu3bd/Ar5ZRPtsF9NRG6MOxp/muw2WPf9FzmWar17os2lplkwJm2TIkeN8rB7KcY0Ppd6A
	qrHGqHx5bBHoyRD8GNCEDwTpdbi0k5bxq+v0PVBK7DxGs9jhvM54mRwb+2ZX4NmxKrhdmv1OkQrhn
	LKUii2dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJT-0000000FNHw-3Cpw;
	Fri, 20 Nov 2026 15:14:07 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJL-0000000FNBX-2cSC
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 15:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795187633;
	bh=jRz07Mds3fldJ4UvvVJs9bQOv2otc9dZOS7B7+fjNTg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=guTG6gPOhjPeJKUEJF8quPnWpGXDX+Qb3S803TpybGJq4Ie4fAY+OpvlPmNI4PY9T
	 P1kcciXNcK/S/aPyShyuHHgLjdJ0aPIZd79e//RqoMe+jKZKeLFM3OUGCV3EsbNett
	 3OuqtVnblz2D6Hb1K1kSPraFgfWLnT/kgSiQ6vZr5eQenrtTtNqiB56G0a9DDJHOBo
	 dooH6fP+3+duuHSq9FIVlFtNwBGoNmfN2UQIwKCCG1b74sjTIfyrOKNBp/mJCH7BXE
	 TLKtapsohIq/8kLCqOdTh/2u5v5FhTSgTv6Vstz5xOkJF58CsnBPjjCWlucWyQuvyA
	 TYiMxfvK1AxrA==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4ABAB17E0BCD;
	Fri, 20 Nov 2026 16:13:53 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 7/7] media: verisilicon: mpeg4: Use alloc/free helpers for auxiliary buffers
Date: Fri, 20 Nov 2026 16:13:45 +0100
Message-ID: <20261120151345.88802-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
References: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_071359_870818_C8E232AF 
X-CRM114-Status: UNSURE (   9.08  )
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
changes in v2:
- fix commit message

 .../media/platform/verisilicon/hantro_mpeg2.c   | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_mpeg2.c b/drivers/media/platform/verisilicon/hantro_mpeg2.c
index 04e545eb0a83..f21115e6bdbe 100644
--- a/drivers/media/platform/verisilicon/hantro_mpeg2.c
+++ b/drivers/media/platform/verisilicon/hantro_mpeg2.c
@@ -37,25 +37,12 @@ void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
 
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
+	if (hantro_allocate_aux_buf(ctx, &ctx->mpeg2_dec.qtable, ARRAY_SIZE(zigzag) * 4))
 		return -ENOMEM;
 	return 0;
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
