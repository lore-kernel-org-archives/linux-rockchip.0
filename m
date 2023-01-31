Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A405CC636CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Jan 2023 13:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaWzPvpF+ohdRWk718QvFnCpOI7rH1gd9pdsBPTP0QA=; b=RqH41N0PxMgiYn
	SHKIIhnBjmRShkpJtiFy4fhqDzBsPgy/ZN/nkUaGZQ7LenPwBgEFL0PibnlbMcqzXmfck+MhmNTv7
	uBcNhN+q7CRx48YW4cwJRYyz2NnvFZPSP8pPVYekoFRDCy05nLlXXMZaMNdq8SVD/oQ4zA3pD8rWD
	SPmeELWlwVOfzPE7tL09x5LZuR+R5Y1F0B1P3cNaTLtiBnOvb4Jf7Pd4MaFIP1U4crM8HZ+UDwuxq
	OGo1e9ZbDU6EgOlD1EzO9Qbbc8QZWpsqI6R0Ms/PGLfp+ngdc7DPzDt+6A4j7w4vo+/fD6TKn0jVs
	o0SQiHqU7/R5PUWgZK9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMqJj-007y2e-9E; Tue, 31 Jan 2023 13:04:55 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMqIa-007xDi-TE; Tue, 31 Jan 2023 13:03:47 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d507:461a:a036:bf89])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 74C096602E64;
	Tue, 31 Jan 2023 13:03:42 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675170222;
	bh=WeghlRFY57k/XRhbZSebcHWkeNrEWgqxdzHNHRFL4B0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CPMZQW+6mPld5iY05XVu/jzKUp14nNRqILmG+2SeyHEsWilC7fJXkERMX1p6Sn0cp
	 3PzweKxJo4Y258kOw6aKYw7NzlkuXMiYcCGJE8T3mzL/nh/ZuCDePHuT1CjOPyrQun
	 AKuWoTwNyxRBf6Lu0mjVtbkSJqbSRnefKzUgCpsf9hQTw4Oxq12JzW7LVKfp531/Bl
	 HQx8rmiJ1GNWtak7KSh8FQj0R/It5ZwEGx0cYhMouGa28rpkUYslr912DwZmeH2ZXx
	 kt1f6p9C4dqmkKK86M/h6zyGx6PB+kkpARFbwnrA8t9bIn/CnD+cCD1VxLdFC7hkk7
	 J6kvO3O6S7a0g==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v7 1/5] media: verisilicon: Do not set context src/dst formats in reset functions
Date: Tue, 31 Jan 2023 14:03:23 +0100
Message-Id: <20230131130327.776899-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230131130327.776899-1-benjamin.gaignard@collabora.com>
References: <20230131130327.776899-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_050345_094666_4DFEE34F 
X-CRM114-Status: GOOD (  10.26  )
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

Setting context source and destination formats should only be done
in hantro_set_fmt_out() and hantro_set_fmt_cap() after check that
the targeted queue is not busy.
Remove these calls from hantro_reset_encoded_fmt() and
hantro_reset_raw_fmt() to clean the driver.

Fixes: dc39473d0340 ("media: hantro: imx8m: Enable 10bit decoding")

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 2c7a805289e7..33cb865238de 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -381,13 +381,10 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 
 	vpu_fmt = hantro_get_default_fmt(ctx, true);
 
-	if (ctx->is_encoder) {
-		ctx->vpu_dst_fmt = vpu_fmt;
+	if (ctx->is_encoder)
 		fmt = &ctx->dst_fmt;
-	} else {
-		ctx->vpu_src_fmt = vpu_fmt;
+	else
 		fmt = &ctx->src_fmt;
-	}
 
 	hantro_reset_fmt(fmt, vpu_fmt);
 	fmt->width = vpu_fmt->frmsize.min_width;
@@ -407,11 +404,9 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx)
 	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
 
 	if (ctx->is_encoder) {
-		ctx->vpu_src_fmt = raw_vpu_fmt;
 		raw_fmt = &ctx->src_fmt;
 		encoded_fmt = &ctx->dst_fmt;
 	} else {
-		ctx->vpu_dst_fmt = raw_vpu_fmt;
 		raw_fmt = &ctx->dst_fmt;
 		encoded_fmt = &ctx->src_fmt;
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
