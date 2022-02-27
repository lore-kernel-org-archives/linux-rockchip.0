Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2DD7C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 14:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ju8nD662v/4YwbJL8LPSmVKCC0SEDMnFTlva5XMBwgs=; b=jAcrlbGVbYY34C
	a3iAeS6To55to7MO0WMTxw7QqBGxhQ8CE3fNNY9/7ue2u2xgBKjepK+wp/k6fsR2peqvXzlueGoUn
	LsNzVONImlwkV2LYEPu5yCek6Tl1s1GrfV9unt6XrDl4Grzub/mUPhZu79BskTrrCTzMYpacQi786
	wOZltFBAzGIXSYyCxK7l2fh5Ap4NcZgm2SKaj3IUz1CwQ6DLC7wsSWkQUn5fMLWridD0uD2XtMv0r
	UQ8oBjjFxgnRfvYCe2HKzuTBlhfcE23N5ycnit4/0Iwd1TYYb1vulF76ApfhNxuNn/idBxfV7iWKr
	+lPG2bFMhXkcLxWutChg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOKta-009Unv-EC; Sun, 27 Feb 2022 14:51:34 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOKse-009UHa-Gc; Sun, 27 Feb 2022 14:50:38 +0000
Received: by mail-ej1-x631.google.com with SMTP id hw13so20017398ejc.9;
 Sun, 27 Feb 2022 06:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h0hl126aUwxb4PSQYFJBWdIRBbMkxmpBsFtc/sUEmus=;
 b=ZqYYVei1mzsAvqBzrob99pzoGKGY7zVJUtRC5+0Y/kSWlDJ8cA6r/aoConZ2+E9Mn2
 T/lJcDV98ANrQE2I6qShTK9wY5dg8Kj8/qijqBA7vORA4fkkjI/Jf4YDz5crOvMb2A2X
 leslwNk37O2t98qAAuzt6V70Kdu318CbR+ub8MHBLVvis2kphZBOCYnnJRHZyAotmdqp
 1iEy/li/k5o7ao5fzgCkMyV5qCAsVacdexk2X661I+YzRvF2TVJdgxvs5xFPOF6exJd/
 UBwXMkmSrtvVq3oPGadlQSEPaWMECzlkAeqo507Z6vwf1nkexU0qeqsNfgsb5hnp/YsL
 woYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h0hl126aUwxb4PSQYFJBWdIRBbMkxmpBsFtc/sUEmus=;
 b=hY+rCeWEDTOA8XQ9ZqeJg39yPAuGcwl2rc/sHpccYlfCjVvK9Ed/WO6O9sMFqimRHv
 kzkWLbJjP9WjXC6CkuLHx1IQY2U1PFxITzVCH+w71fKjNkPAXiHGjoocSoPOqqa9aaca
 Zvl6GKeEL7gzJDjx2WSgR/jmCk6YjeYrTFn+7/POVXb6QS+ImLkTr5JKCH93G6vE7Zls
 On5EhdNYFQMu8hwNcXbdYdCQa8augCDliEqx8iceVtm5prJhv+Yjr8Mv+7zOn+AIjZMQ
 iJAqWtKmBUpJrx6Dpk8TJexGlUa26m4O/J+3+U/rMU1tnimdx6F1tetBhlM4MYOLnJ/6
 njoQ==
X-Gm-Message-State: AOAM530g2okTU5Iu2obbhsRKeOfeAimfd4KtfxrqdG2fuYIUJpOLKJ4p
 KsGq2qEKakacBjj+yNrxwHI=
X-Google-Smtp-Source: ABdhPJwC9BrQTMCj9U3aIxaUX5zC0VOt6dPWeDEEWUeu9vfRSKOAjGywKeocjVU11912bQjFNxCQcA==
X-Received: by 2002:a17:906:85b:b0:69d:eb3:8a7c with SMTP id
 f27-20020a170906085b00b0069d0eb38a7cmr12318500ejd.427.1645973435045; 
 Sun, 27 Feb 2022 06:50:35 -0800 (PST)
Received: from kista.localdomain (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 a1-20020a1709063e8100b006ce06ed8aa7sm3501887ejj.142.2022.02.27.06.50.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 06:50:34 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [RFC PATCH 5/8] media: hantro: postproc: Fix legacy regs configuration
Date: Sun, 27 Feb 2022 15:49:23 +0100
Message-Id: <20220227144926.3006585-6-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_065036_596357_2E72341B 
X-CRM114-Status: GOOD (  12.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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
index 1a76628d5754..11ae663f11b7 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -113,6 +113,16 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
 
 	hantro_write_addr(vpu, G2_RS_OUT_LUMA_ADDR, dst_dma);
 	hantro_write_addr(vpu, G2_RS_OUT_CHROMA_ADDR, dst_dma + chroma_offset);
+	if (ctx->dev->variant->legacy_regs) {
+		int out_depth = hantro_get_formath_depth(ctx->dst_fmt.pixelformat);
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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
