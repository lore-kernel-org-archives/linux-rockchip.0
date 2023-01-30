Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1732EC61D97
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 17:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5105keeqq2W/r3lveUT0quhOb79IvD5klMD46oV3Edg=; b=lFERb5KRudgf9a
	NcZ4rJxcfgHbn04isvcT2cIRkddCv1YEEIAg6GY7PTZZt1mV+dOedcELQ4YO2DsdX6+CS21Ql6Ncj
	Oeqlw9C3xP2WhZ/5WY8LRL2Dh6eOS6ZTO2XFuc7KQMH9dsrPljAQaiebKxfN9+4hmOYPtg15LaC/f
	8STXdbF0D4GWpIycTfUcJ7bt8uLa66hFIjAiLfOIzqyV0dVk2+x69gXPcOALbagY96FFSTd/7VV5c
	QKBmP7i72tjxHlmx72nrArA71tZaUDqdwqeiYvV/jmWYpWOBw8ATillqZl4zqFapa4U1cNIk1IwzN
	jIw9VmtsDPcbk7enH2UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXcx-004OSj-9r; Mon, 30 Jan 2023 17:07:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXYg-004MNi-NI; Mon, 30 Jan 2023 17:03:09 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:e655:2335:9172:6e39])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 24DD66602EAD;
	Mon, 30 Jan 2023 13:58:12 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675087092;
	bh=9xkh7Mz6B7KCpRaWkFO7AHPjQWKFgdQpvDXYN313zu0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cnTtZu1hrqPWEMA3JwJqr9UaY0ZzHDvJMFG2FJf7q/36pTxODy+Lrk/qMxbD+gacX
	 RlFDGf6NVTuzRv7WgQRvyZAhN5EhJszH0Vyu146xLTwcDG7KQxy31or25pJNcNWysJ
	 D05ME96oZD2YVvV+cZa9aRtTXyKaoYCzVewZa8Yt+A+QU8qzctIB/Icd78LYEDNviI
	 /mAxVIlYjyE0fhcSryqhpOIptPT3y4vW8gPrltMzwiwMgwEh+Cxo4GRP1/HihD3z6Y
	 LhJfgUhBQ9TYrSsG4OIaYCKaMq17EATBBvXXPtWyH2Zr0GtObJL1r0NJrs67iSoIaO
	 wD8BGWv/gLo4g==
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
Subject: [PATCH v6 2/5] media: verisilicon: Do not use ctx fields as format storage when resetting
Date: Mon, 30 Jan 2023 14:57:59 +0100
Message-Id: <20230130135802.744743-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230130135802.744743-1-benjamin.gaignard@collabora.com>
References: <20230130135802.744743-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_090306_916747_139DC462 
X-CRM114-Status: GOOD (  11.59  )
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

Source and destination pixel formats fields of context structure should
not be used as storage when resetting the format.
Use local variables instead and let hantro_set_fmt_out() and
hantro_set_fmt_cap() set them correctly later.

Fixes: dc39473d0340 ("media: hantro: imx8m: Enable 10bit decoding")

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/platform/verisilicon/hantro_v4l2.c  | 40 +++++++++----------
 1 file changed, 18 insertions(+), 22 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 33cb865238de..e60151a8a401 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -377,47 +377,43 @@ static void
 hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 {
 	const struct hantro_fmt *vpu_fmt;
-	struct v4l2_pix_format_mplane *fmt;
+	struct v4l2_pix_format_mplane fmt;
 
 	vpu_fmt = hantro_get_default_fmt(ctx, true);
+	if (!vpu_fmt)
+		return;
 
+	hantro_reset_fmt(&fmt, vpu_fmt);
+	fmt.width = vpu_fmt->frmsize.min_width;
+	fmt.height = vpu_fmt->frmsize.min_height;
 	if (ctx->is_encoder)
-		fmt = &ctx->dst_fmt;
-	else
-		fmt = &ctx->src_fmt;
-
-	hantro_reset_fmt(fmt, vpu_fmt);
-	fmt->width = vpu_fmt->frmsize.min_width;
-	fmt->height = vpu_fmt->frmsize.min_height;
-	if (ctx->is_encoder)
-		hantro_set_fmt_cap(ctx, fmt);
+		hantro_set_fmt_cap(ctx, &fmt);
 	else
-		hantro_set_fmt_out(ctx, fmt);
+		hantro_set_fmt_out(ctx, &fmt);
 }
 
 static void
 hantro_reset_raw_fmt(struct hantro_ctx *ctx)
 {
 	const struct hantro_fmt *raw_vpu_fmt;
-	struct v4l2_pix_format_mplane *raw_fmt, *encoded_fmt;
+	struct v4l2_pix_format_mplane raw_fmt, *encoded_fmt;
 
 	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
+	if (!raw_vpu_fmt)
+		return;
 
-	if (ctx->is_encoder) {
-		raw_fmt = &ctx->src_fmt;
+	if (ctx->is_encoder)
 		encoded_fmt = &ctx->dst_fmt;
-	} else {
-		raw_fmt = &ctx->dst_fmt;
+	else
 		encoded_fmt = &ctx->src_fmt;
-	}
 
-	hantro_reset_fmt(raw_fmt, raw_vpu_fmt);
-	raw_fmt->width = encoded_fmt->width;
-	raw_fmt->height = encoded_fmt->height;
+	hantro_reset_fmt(&raw_fmt, raw_vpu_fmt);
+	raw_fmt.width = encoded_fmt->width;
+	raw_fmt.height = encoded_fmt->height;
 	if (ctx->is_encoder)
-		hantro_set_fmt_out(ctx, raw_fmt);
+		hantro_set_fmt_out(ctx, &raw_fmt);
 	else
-		hantro_set_fmt_cap(ctx, raw_fmt);
+		hantro_set_fmt_cap(ctx, &raw_fmt);
 }
 
 void hantro_reset_fmts(struct hantro_ctx *ctx)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
