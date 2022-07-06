Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7336EC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 18:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHoMGgD6bLZY/7IyVV5Yhd8S2Nvk6CtiDgP0YJxvPz0=; b=3Ul8B2CcM5q+IS
	cv5jXOVqpJgnVgNB2AOPqj1ETeA8TqxCvIgNkjWk94lD8ZHnLhvAVVca+/3zY1TTxwQvlLDjsaQv4
	raguEFoDMjaCIMC2+HRUbQz6J0Egft1TxH7daYqJ83X50mcEb3ei3cbQ6hOa3eGq4ISPqj0fwVNkJ
	BOdO/ltwVpppNcZa+72JWG3Sfj9TwZkDj9fNeyyDw8hZ9WgbjmszrCsLbCsgwRAtF++8izGpeng7v
	SgBuzzLS0jFRC/6rJZAviwIBR8TPOrHjL63UwC1qxrtHvMe/i5MKXiJWOK08AoSJ1gBol9+e8G1Nw
	4qwa+34TEA3vzWFnF6GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99nD-00BxVP-Ht; Wed, 06 Jul 2022 18:30:31 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99m6-00Bww9-06; Wed, 06 Jul 2022 18:29:23 +0000
Received: by mail-wr1-x42b.google.com with SMTP id d16so16901746wrv.10;
        Wed, 06 Jul 2022 11:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=axeXih7SeM9/ugL1UWf/GDJrKgStc8RtYqCA88OQ2Yg=;
        b=GEE8ZpCc8FXkrCHX5eQwIncrLFXq34Zy6zTjlv8Q301MOYjew8C5/GyEAcuD6dfVMb
         4OhTtl53jymyQxtHW68z0HEYxxPXHoNvOo6yKcqm8xcOecPoaKUZvGJAMoCm1/GOai+U
         cLFIEoxhKYPcx2MmWz2tuZVn73w8Iv0Dxch4lAALfpfLKNdbnZ7VnW8fsnzg5IOyZiD+
         PyLYHNASqlLfmUIuFlsM7JgGubEWOAwBGkF5rSCzMWC9wVUFG6E22LrqoXbZ4bdzXH6F
         6rnGBdNqXVnsZ7Lmc9VA+SCAbGSNbJobN3XWw4aKH7LJ4qzB0LgUESpD2c5sg0Lqq2N2
         7vDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=axeXih7SeM9/ugL1UWf/GDJrKgStc8RtYqCA88OQ2Yg=;
        b=QPjPfo3vJrBVNMnLd7FZ/2G91GsXdKvWopZq3Z27CK/OJNKym/BqR5sP2B4/WHiCwt
         574mQyJx9RzouZb+FTxo9O+VssmWwU323UwO7nF2k5f2qnNMAmlyTh5bU9kRpLSD9SlQ
         3BJYSV+UoNhjHkGdPnou16Z44twtrN/JtixyPSEhY+WLDmQxQbEt/+TMn/5nhq0gd+rk
         sQjZebxrVFfZhBFidA7fumxYqxCCWzG6URfTjxXU8uNPIg/Z/MhDY+9JHNV52DBqRHRS
         AFictChgBLA09OA4EgEukI7lkSqmCHXgQkwNsrKof2y6JMDKPd67Eq3IpjZ4GTl6akRQ
         iYKA==
X-Gm-Message-State: AJIora/cswM6vC9rs/Fa/f7aF1A611tcZgzgibQ07Moad7Sy1GXcBi2X
	2Ifn2zsT43fVu/nrroIciLQ=
X-Google-Smtp-Source: AGRyM1tdxTCLVWVsXypOgTsU6+moB+5RKDV480P4q68cBOI2NFPAdvqY2nz/DXtQNpd4KWr4sAzPHQ==
X-Received: by 2002:a05:6000:2a5:b0:21d:2204:134a with SMTP id l5-20020a05600002a500b0021d2204134amr38870805wry.67.1657132156848;
        Wed, 06 Jul 2022 11:29:16 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id r15-20020a0560001b8f00b0021d74906683sm5142406wru.28.2022.07.06.11.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 11:29:16 -0700 (PDT)
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
Subject: [PATCH v3 4/7] media: hantro: postproc: Fix legacy regs configuration
Date: Wed,  6 Jul 2022 20:28:58 +0200
Message-Id: <20220706182901.78949-5-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220706182901.78949-1-jernej.skrabec@gmail.com>
References: <20220706182901.78949-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_112922_102247_AFD51797 
X-CRM114-Status: GOOD (  12.71  )
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
Tested-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
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
2.37.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
