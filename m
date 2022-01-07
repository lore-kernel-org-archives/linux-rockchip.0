Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88CCEC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 09:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgREpyND/F5PcB7HFsq01R8TEsZjBYPG7eEaydTKplk=; b=ACMJl/gUoJWPFk
	M9H2LHaUPcE4H8v+x8P82xiJqQ9PqE+sG1Yf3RYT5c2GMOjlYLpUGqvvJXvK42SE8n6ACDSktTqhw
	mifctQ+x6wVVGbg2Ir6jnPZbq4U1OOBj0u5SW1J8YXTnFyFpBw+kr9558qsR06aNGHpUfeQboeOYD
	g34vtNHnDXzy7HNqPA+Y8w0Tgx4zfcXsG4jIljI/Erqgn7L2b3hWvcMpQup83Ug4Z6PyN42w7vTqY
	KCqu0rVy56EAoSJGPxm5/eit775keEv7KI6K2scu2LjHFEB1U9eSRDZ8hbfuatEP0a0HYMGZjzrT9
	bJQXKkH1PrMAtSdoiWjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5leo-0035Z4-2P; Fri, 07 Jan 2022 09:35:34 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5lee-0035Or-D5
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 09:35:26 +0000
Received: by mail-pj1-x1030.google.com with SMTP id
 c9-20020a17090a1d0900b001b2b54bd6c5so11423514pjd.1
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 01:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uPa2Y9r48Tr2TjgiZvIGBvNI/0pFs3VgGlpYuEIyE5A=;
 b=kyFrRWAXItsw/PhTpWsDKkqDCYcDPo/CSsPz1chXl/ng4d2iLDV1memUqL/OEl+92l
 jKGiMTZfVGLMq/WAxpbqkBA9h7hsvxOyy3iKpvjEEyM4xccxqp3tdTL9PIwyyUim/vQx
 bFvPiAgPzVA3vzOPwBiMo8GFUrN8g69RFQnTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uPa2Y9r48Tr2TjgiZvIGBvNI/0pFs3VgGlpYuEIyE5A=;
 b=1oYcglsI3z0MRCYQAA1e1ZVcqBb2yJ2bY2ndqDfQPlCamvZl4Za8OwnGE9SmqX/iuo
 8EAEk85oa+Ot2/HirXifkiG5iMc1DBW/tDmuGRJT6IaFxhl8Bct+oKeFsyfxKSjZnTPW
 F4DMvtFbAbCAeD6fkwUEJSA3obzDyNbPysT/S6qW54n8OIkXe6vpLRGMStJmqhrBz5lY
 j1IDIWU5bpPO0bo6SbSwhdYndGDvbjeH5wzS0haQQsIWhN+8nX4YXsVC6Rk564XWwhEj
 Bd4k7aisSBPkNmgQh4mtgJCepYY7Q5B444QpJ7q4MTQfz/XW9sxgpto/Rfu6Q3D/gRQf
 7gaw==
X-Gm-Message-State: AOAM533Nlmik4FQXbMILg+7B3e8JSmmB+wzwe5s3JjKoKi5nUqDscL8T
 a5vwjt9ga7ZMq6UIzB+80Sj69A==
X-Google-Smtp-Source: ABdhPJz1h5qNBJkMbnlr4tRBRegzKszr22xmYctO5J2KYeGk4idAT8zh0U05V3Xl73n4YwTJZIM3aA==
X-Received: by 2002:a17:902:7c05:b0:149:a3b4:934c with SMTP id
 x5-20020a1709027c0500b00149a3b4934cmr35858061pll.42.1641548123889; 
 Fri, 07 Jan 2022 01:35:23 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:8f6b:ee:64d8:ae81])
 by smtp.gmail.com with ESMTPSA id j17sm5269192pfu.77.2022.01.07.01.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jan 2022 01:35:23 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH RFT v2 8/8] media: hantro: jpeg: Remove open-coded size in
 quantization table code
Date: Fri,  7 Jan 2022 17:34:55 +0800
Message-Id: <20220107093455.73766-9-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107093455.73766-1-wenst@chromium.org>
References: <20220107093455.73766-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_013524_484723_9F43E2C6 
X-CRM114-Status: GOOD (  15.36  )
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

The quantization tables used in the Hantro JPEG encoder driver are
implicitly sized by the data they contain, but the loop that scales
the tables based on the compression quality hard codes the size to
64. No code exists to check whether the two actually match.

Commit 85bdcb7eaae7 ("media: hantro: Write the quantization tables in
proper order") introduced two new tables, with sizes hardcoded to 64,
but still no checking if all the sizes are the same.

Commit 41479adb5e52 ("media: hantro: Avoid global variable for jpeg
quantization tables") added the macro JPEG_QUANT_SIZE, but only the
newly added fields used this.

This has resulted in code scattered with magic numbers and array sizes
that happen to match up, without any sort of sanity checking to enforce
it.

Drop the hard-coded array sizes, replace the magic loop count with
a proper JPEG_QUANT_SIZE macro, and add BUILD_BUG_ON()s to check
that all the table sizes match up.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/hantro/hantro_jpeg.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_jpeg.c b/drivers/staging/media/hantro/hantro_jpeg.c
index 84d3f0bfff00..d07b1b449b61 100644
--- a/drivers/staging/media/hantro/hantro_jpeg.c
+++ b/drivers/staging/media/hantro/hantro_jpeg.c
@@ -49,7 +49,7 @@ static const unsigned char chroma_q_table[] = {
 	0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63, 0x63
 };
 
-static const unsigned char zigzag[64] = {
+static const unsigned char zigzag[] = {
 	 0,  1,  8, 16,  9,  2,  3, 10,
 	17, 24, 32, 25, 18, 11,  4,  5,
 	12, 19, 26, 33, 40, 48, 41, 34,
@@ -60,7 +60,7 @@ static const unsigned char zigzag[64] = {
 	53, 60, 61, 54, 47, 55, 62, 63
 };
 
-static const u32 hw_reorder[64] = {
+static const u32 hw_reorder[] = {
 	 0,  8, 16, 24,  1,  9, 17, 25,
 	32, 40, 48, 56, 33, 41, 49, 57,
 	 2, 10, 18, 26,  3, 11, 19, 27,
@@ -292,7 +292,10 @@ jpeg_scale_quant_table(unsigned char *file_q_tab,
 {
 	int i;
 
-	for (i = 0; i < 64; i++) {
+	BUILD_BUG_ON(ARRAY_SIZE(zigzag) != JPEG_QUANT_SIZE);
+	BUILD_BUG_ON(ARRAY_SIZE(hw_reorder) != JPEG_QUANT_SIZE);
+
+	for (i = 0; i < JPEG_QUANT_SIZE; i++) {
 		file_q_tab[i] = jpeg_scale_qp(tab[zigzag[i]], scale);
 		reordered_q_tab[i] = jpeg_scale_qp(tab[hw_reorder[i]], scale);
 	}
@@ -311,6 +314,11 @@ static void jpeg_set_quality(struct hantro_jpeg_ctx *ctx)
 	else
 		scale = 200 - 2 * ctx->quality;
 
+	BUILD_BUG_ON(ARRAY_SIZE(luma_q_table) != JPEG_QUANT_SIZE);
+	BUILD_BUG_ON(ARRAY_SIZE(chroma_q_table) != JPEG_QUANT_SIZE);
+	BUILD_BUG_ON(ARRAY_SIZE(ctx->hw_luma_qtable) != JPEG_QUANT_SIZE);
+	BUILD_BUG_ON(ARRAY_SIZE(ctx->hw_chroma_qtable) != JPEG_QUANT_SIZE);
+
 	jpeg_scale_quant_table(ctx->buffer + LUMA_QUANT_OFF,
 			       ctx->hw_luma_qtable, luma_q_table, scale);
 	jpeg_scale_quant_table(ctx->buffer + CHROMA_QUANT_OFF,
-- 
2.34.1.575.g55b058a8bb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
