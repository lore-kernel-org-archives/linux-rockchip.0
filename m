Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5070C982C3
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 12:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+3Bd9B06pc84+UqFpRXIkXxesQeRF4HXJmYD10Ir9I=; b=jc1oYnC6mzsVPR
	8GsDX+fi6GnEUS4/kPyjqwNSTMzYYKEqK+lzF/jne71+Agx0DkBzaF8QN/0Ar2asdzo/ALdDA9cNf
	SPhMgvJSoTWY2ZKK6HLyTtY+yH+Dtl0NP85cMeuaTtzzO8iR3f30xvdk7WaBl0JkwQhz79WcZ+h9Q
	/uaWzEYf179FvEVC290H/ze+OitoQru6S9l2S/gFOdAhwJwGfycrhNpCm0ww/SKl8Pcat7h9OrM0x
	8dbVlF/VvEoxrXO5uvEMyqVfDz9dYohQpW7nSCwkxxNOaHps7WVEUW2TdrZAl8xLCZEhbg5EhPJEL
	yaZbiO0Ed7g9YtwbVmjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pAG-00000009DHh-2qrg;
	Wed, 16 Sep 2026 12:55:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pAE-00000009DFH-08Wn
	for linux-rockchip@bombadil.infradead.org;
	Wed, 16 Sep 2026 12:55:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fgWEPjFzlAWTKizyJDpTNaJeBRmLtmxPDdBhPmyzTXE=; b=fS3yPmjnTi4z5YurvJsxL3iKvX
	DU6Ug/Z9mZHY1lmEGbole4kwdZNVAC0AmUAxwLDgoz/YDLvomMU5B3oI+B/mmIVH1rdnR5hlvpTou
	oHpGH6HNlRhR9DBVydvw/It7dF6aLuSlOBVQ54apsJ5Rcgki843oalEKD3ur7TsqmLbzym0byw2v6
	eu967aZgpEG8fOPHS86dUHSh8+WN0AWROW6JvBoL7jbkG94u+3GfAn7euSjrUI5n1TJS8NaPqVl2f
	EFiLnn2tp9oj7gMiLUybvhPeUsH2l07bEM2FBTztvS2wkJwxZ68R2cgRkSZrK77pnqxR3zHSyAGlJ
	FR6eUpKA==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6pA9-00000007s5G-3H5H
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 12:55:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789563291;
	bh=eOI2q3uxCKkIliMe03rIur3xYlkC3y6bAVkEvyKeEnA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cgcLUcRl1F3UpKx6T+FPc+kyCicbxNO0aAc1nJzhNfNj9tr0ZSBe7loLNsDL9cX0S
	 Nf93ozBYxWJ54qLgZYYhHcbNpwORE0un5IoQa/EWrrysZ16OPKGtUHkcNaVrD2OoHC
	 3J1LFjc410SxZDKw8pmCJ/oXpmQkul0FV6jl9+O4PLRqowOeupWMTmM4BRppaVKJoP
	 iQOvldl7V+bUVu3Zl7Cat1V+OBre3fZ/+V96xUQz6t3xPr43tfoNMBQVm1kBpnLdn7
	 71ysPJCepqh9RtpTqjdl0ansxP/j0DG5BxfCaV669g+6n1Xyz286FTC8kPhOurSNE7
	 5ivo9iV8vs4uA==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9543317E13C3;
	Wed, 16 Sep 2026 14:54:51 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v1 7/7] media: verisilicon: mpeg4: Use alloc/free helpers for auxiliary buffers
Date: Wed, 16 Sep 2026 14:54:43 +0200
Message-ID: <20260916125443.78602-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
References: <20260916125443.78602-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_135457_973193_81164E92 
X-CRM114-Status: UNSURE (   9.71  )
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

Simplify and clean up the code by using the helpers.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
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
