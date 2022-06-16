Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA35BC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 20:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29t+MNIJ41kAh5ITXDqB6jKnvo8OkK64wlof0w2t2c8=; b=Ta2hW2hbNc0wgr
	/BpisX0CTl4bWbJdOweNGx3oblPKVadSOl8lyqH4QCB7h5xkU/s3VtHqWLOSNBzCguqgAewajMve5
	uOzbFMmt3AmrS6Q6ShBKebobLorKE/G3P3J2fkPYJBdKBkqMWrVhxb0mjBYN/J4yv7DsszIIjN2ZD
	4dfylTWJsbcAKCKfS1blWwCNpX54iSuImo2NtLvJwPnirlPJFdNzMhkvt8io9+gtuwLue52Fvj+a/
	p+HCddCnRIur97cqDwJkuvFko/wY9dgRXuJv1MXwnVBmYU+XV4/EOoDE3DERhw8KTKskMOgg/LrON
	LSwE2UDVgln5lqEcmC4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w4I-0046K5-Kh; Thu, 16 Jun 2022 20:26:18 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w3R-0045v9-8X; Thu, 16 Jun 2022 20:25:26 +0000
Received: by mail-ed1-x52a.google.com with SMTP id d14so3650417eda.12;
        Thu, 16 Jun 2022 13:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sAZFh7mRhO5VdJY5wXrg6fPzhaTdxWVtl/ssmKTkC2E=;
        b=aVu8/0A973NQhvzV7dzAKr2dc4KUJdszt215rjJG2bkTyzKpMVS3wnoWovAC62pSkN
         RxSGvgOR1u/lgWTebhjTL6GS9lrLNsJY7PDTx3YRXm9QpY1WnisvQGQCil+zs34uFCWM
         eXsSll5i8NdNUEIf8bgaHg9xmjYRwr0Cn8d5ItdLkaS09AuqPi/lLXfoeEOOgj0iJDY6
         X+hYj7y14a25bQgKFp0SrMEVLymk5n3mzM74/FWoP+n6laKr+XbhxvRRbrFrKIirT6dx
         zN0I3PSaaqiX5gaTBngJh7kJKt6Jd35dDXS2JO+0j7qwjULajFXOjMsdTEfFaE7pVx/0
         UhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sAZFh7mRhO5VdJY5wXrg6fPzhaTdxWVtl/ssmKTkC2E=;
        b=pUht/rVWG7jtvYRMRV3SDSNQaA7CbD90L+cMNs2AIkAFt+THDocQQsXgd6nEXnQgxc
         bP/3nNNhit+je1bEjRd82ThvKPk3MBsSLbUu0V23hsBhyDbM8UXZsbdzkDHgHb9zhuvE
         /JlYD5H5VwJcmtnL1I3kPt+kaqjHmv0UkaIXU5iWz/D7pEdWTZV3s7K1o7fOg2qGivv2
         +HC9u8cs0qv9a4sz2yPDbTSHh/j0kovnTRAw6pRNSBX/8uGJXCUCPoLW92kEUGA5Y9l5
         mH75tbgMzvhCMJNZqd0V6u3p0naOMoTeJFd/9/+DAfI0IfGXJ45+23BNWJlLXLMgg/ZZ
         abhA==
X-Gm-Message-State: AJIora84cbu6k+xY26cJjUSRaqamqhZZxsYbHmr2hvjZNDgBfwyFSrt7
	DvxF8y/FoqDW353nmCgBccI=
X-Google-Smtp-Source: AGRyM1tluECB6/LrDRgfOHkAH2SU+C/+t0SlvG7aCtZSgjSRv3yTIBFIjs19gLAgczPqeJqPGTV2Ng==
X-Received: by 2002:a05:6402:26cf:b0:431:5d99:2142 with SMTP id x15-20020a05640226cf00b004315d992142mr8821320edd.242.1655411123514;
        Thu, 16 Jun 2022 13:25:23 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id 21-20020a170906329500b006fe8a4ec62fsm1186760ejw.4.2022.06.16.13.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:25:23 -0700 (PDT)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com,
	nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH v2 4/7] media: hantro: postproc: Fix legacy regs configuration
Date: Thu, 16 Jun 2022 22:25:10 +0200
Message-Id: <20220616202513.351039-5-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220616202513.351039-1-jernej.skrabec@gmail.com>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_132525_422788_27F81A4C 
X-CRM114-Status: GOOD (  12.61  )
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

Some postproc legacy registers were set in VP9 code. Move them to
postproc and fix their value.

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/hantro_g2_vp9_dec.c |  8 --------
 drivers/staging/media/hantro/hantro_postproc.c   | 10 ++++++++++
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_vp9_dec.c b/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
index 91c21b634fab..c9cb11fd95af 100644
--- a/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_vp9_dec.c
@@ -515,16 +515,8 @@ static void
 config_bit_depth(struct hantro_ctx *ctx, const struct v4l2_ctrl_vp9_frame *dec_params)
 {
 	if (ctx->dev->variant->legacy_regs) {
-		u8 pp_shift = 0;
-
 		hantro_reg_write(ctx->dev, &g2_bit_depth_y, dec_params->bit_depth);
 		hantro_reg_write(ctx->dev, &g2_bit_depth_c, dec_params->bit_depth);
-		hantro_reg_write(ctx->dev, &g2_rs_out_bit_depth, dec_params->bit_depth);
-
-		if (dec_params->bit_depth > 8)
-			pp_shift = 16 - dec_params->bit_depth;
-
-		hantro_reg_write(ctx->dev, &g2_pp_pix_shift, pp_shift);
 		hantro_reg_write(ctx->dev, &g2_pix_shift, 0);
 	} else {
 		hantro_reg_write(ctx->dev, &g2_bit_depth_y_minus8, dec_params->bit_depth - 8);
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index b77cc55e43ea..8933b4af73ed 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -130,6 +130,16 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
 		hantro_write_addr(vpu, G2_RS_OUT_LUMA_ADDR, dst_dma);
 		hantro_write_addr(vpu, G2_RS_OUT_CHROMA_ADDR, dst_dma + chroma_offset);
 	}
+	if (ctx->dev->variant->legacy_regs) {
+		int out_depth = hantro_get_format_depth(ctx->dst_fmt.pixelformat);
+		u8 pp_shift = 0;
+
+		if (out_depth > 8)
+			pp_shift = 16 - out_depth;
+
+		hantro_reg_write(ctx->dev, &g2_rs_out_bit_depth, out_depth);
+		hantro_reg_write(ctx->dev, &g2_pp_pix_shift, pp_shift);
+	}
 	hantro_reg_write(vpu, &g2_out_rs_e, 1);
 }
 
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
