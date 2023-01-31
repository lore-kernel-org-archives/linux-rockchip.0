Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 560D8C636CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Jan 2023 13:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5105keeqq2W/r3lveUT0quhOb79IvD5klMD46oV3Edg=; b=Cp7jhu7sH2F/dn
	dOj1BDu1IQPahbjDEpHW/9LSFLWDLhgNNWY+fQTVGtPc5ZeZ/9WPyWgR4AfEKGEKaJ1sO/GzvSiGK
	lurdZSUUWs+RImaJcsG46Yk3KzTmag194pjx1nhJz35WrjCb+zDmjcKU54qZqsP+3DOXEOgw+7CTC
	4Gh98SbnnSBzoZcti3wSUsE6t4/Z1jzyQq125eKaZU7uqv74tTP8sG11ZOrvreODpKeb668wPIG92
	xk7FVPhcg0RJyQyo7QgmL/jp4/b6oS9ocV73VKgNFSA8BaWVO4QqTS1Tat5bC3jaBseA5uhvdH+Pb
	vgAEynJU2XyvOxO6I1QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMqIz-007xYt-Kn; Tue, 31 Jan 2023 13:04:09 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMqIa-007xDz-TG; Tue, 31 Jan 2023 13:03:46 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d507:461a:a036:bf89])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EBE026602EBE;
	Tue, 31 Jan 2023 13:03:42 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675170223;
	bh=9xkh7Mz6B7KCpRaWkFO7AHPjQWKFgdQpvDXYN313zu0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oipKafPzVPw8hqVNYxENXzkcnaBChLBb9p5uLxcXowHc83se6TvPnTtuXiqOY6Pui
	 PnCMBNyqLqSlduR19Hlh5SkhQskD+q8sby5zGWibidnDtFAPWxZZlfYc0e7FwMxs0y
	 FQlK8CHH+Ag/FPnMNBuqJCGL5U5NybJ6uBkPRSGJcfqZ12JdR5Dzi+xMJ8axkxBnWW
	 jJAkxMkp2Kc/IoZh3jAFYP3NEflBhGRM9k2SdQL1KcyNktMyXrMTJLWCBV+6/3vd2D
	 77KKDoBQtctUqfq2sM69aOl1uZCcKLT+dcof7L0pLjv1dGUSNGjbjLEBQNI7sMu+hf
	 Phc63SR015EsA==
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
Subject: [PATCH v7 2/5] media: verisilicon: Do not use ctx fields as format storage when resetting
Date: Tue, 31 Jan 2023 14:03:24 +0100
Message-Id: <20230131130327.776899-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230131130327.776899-1-benjamin.gaignard@collabora.com>
References: <20230131130327.776899-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_050345_094599_9C7307D2 
X-CRM114-Status: GOOD (  11.44  )
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
