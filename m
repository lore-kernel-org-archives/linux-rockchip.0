Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0425C5472E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 17:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pysdmUoSRSqzQFs62mH9qIbD1NbTB1HJZbkBCSttP5k=; b=ZgfXVcfy1qsuWV
	GtegG8x+YP6BM2h6bjAWTd7MG0Mlj190fISOz7uGLwbMVRFD25iEM545YKm+RJ5Azl19yPQRbG1UQ
	W2C4jeEFbmFGqFDhqkeTa/kQLfWuF645ytAX5gF3fQDgSvmO8oNfXyVJPzQhTRBvDPIU2aDm6+Nis
	zd46ghX5adBo1v/X2rDXc+g7EpON2SwbmfiPKdODb0VT/ZtGh+srT9HFK7huAEjGWS0E8yu6iXZd8
	0iSoqtz/YVZlNYSFxg0t1n/Ax2ijn0QXKMzpwbKFHFb/5+ewnkYf6dlLGDae3oNdTcVmR6ghPQaY6
	s3KOz3byRd7Qx62n2cxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidUh-00000008Cuw-3zHR;
	Mon, 26 Aug 2024 17:27:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidRx-00000008C1g-0XAV
	for linux-rockchip@bombadil.infradead.org;
	Mon, 26 Aug 2024 17:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dUbmjaF9urNTb5vqtei1UsZTdJqoXdn5kt7IN9nSSb0=; b=nNmn1y+CmUDH9CX+Zd1i75UqGE
	PGM48DWn3ldPqIkxOP9jsKEa0N4NMdGTyuOPmOrL0KHSF9AoxukWiCMz85BUZe2/c+Uhx/glxzmcg
	VKQ8QQv/7Hb59CGbncz/Op/I2IP6h3blKgNcEmaffH6VNJqKWQobJrww/0e8q6Sg4RtavI+KL9EHk
	yzAbXUaxe9kI2SjvRe/2dja0flTPvhiUgn5ZLyXdCc+1dXsRFC5QdPn9rq+jzghwbv/Ap0RS/i6oB
	+k+clqcQtiegaLKM9Jq74Ikqr5Ltj/vdhD1NkOLcWRqTsXdNGwkRTMZuUt8dvGoR5tAKj06DWiKoL
	q4I2WGzw==;
Received: from a7-48.smtp-out.eu-west-1.amazonses.com ([54.240.7.48])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidRt-0000000AhG9-3VEI
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 17:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724693050;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=OlPnoh/kLKwB+K1SAOzWnjDTIPXs1b69NoLFMlqj2FQ=;
	b=hl/QsQtLl9XABOWKyqorF5PT0yBRqhhJBzq0z+t8/W9papWRlSU1Wwj8O1Vx36g8
	4TruJJaBPVIrDdjA0FHXHOgsr+PwdGDJpkT1OQ1xR7FxxOwjYzvu9H00USopi+Ndtyh
	88xh/94EJSmzMjFag5uP28mrZ9+m5ZKVcjumlQ56K7QffIHLJA42gCGPT93PJ5pFbAG
	ruzb+6BVzlPmv5VIrvJT396CNLX7eONFbeBcVt5YbBwBqXK3Ystw80ZPjK5cuBHFQ6F
	rxyBkD/FoE0/XfS2/PmzB+ZbI+hJ5JO/UNv0j29ePrCVV9wRfM+MnY0RCr+2QcyLiAX
	hre6EWZOxQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724693050;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=OlPnoh/kLKwB+K1SAOzWnjDTIPXs1b69NoLFMlqj2FQ=;
	b=cmzsDtMZQ5a4G0qImCCM40Yl4cHxREHyzf84ECObP2fzZpgkFsSdzcLERQSWbIkq
	JtjuAe9H3gTEfsHF1kQBBIheDI5HN5+4VcaSD4ST3AX+kBKN0qSctC/x7gOK7CbYUhu
	R0/5Shg47OeKcBA9MDbXYqGv+eajmZaCaBsPfMzQ=
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar, 
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v7 3/3] media: verisilicon: Use V4L2_FMTDESC_FLAG_ENUM_ALL flag
Date: Mon, 26 Aug 2024 17:24:10 +0000
Message-ID: <010201918fb774b9-72f298dc-dac4-41f2-a045-502b81c8dba7-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826172407.140538-1-benjamin.gaignard@collabora.com>
References: <20240826172407.140538-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.26-54.240.7.48
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_182414_116143_660016F9 
X-CRM114-Status: GOOD (  12.97  )
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

By adding support for the V4L2_FMTDESC_FLAG_ENUM_ALL flag into the driver
we allow userspace applications to discover all possible
pixel formats of the hardware block. This way userspace can decide
which decoder to use given the supported pixel formats.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/platform/verisilicon/hantro_v4l2.c   | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index df6f2536263b..f416c5b36dd0 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -201,7 +201,15 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
 	const struct hantro_fmt *fmt, *formats;
 	unsigned int num_fmts, i, j = 0;
-	bool skip_mode_none;
+	bool skip_mode_none, enum_all_formats;
+	u32 index = f->index & ~V4L2_FMTDESC_FLAG_ENUM_ALL;
+
+	/*
+	 * If the V4L2_FMTDESC_FLAG_ENUM_ALL flag is set, we want to enumerate all
+	 * hardware supported pixel formats
+	 */
+	enum_all_formats = !!(f->index & V4L2_FMTDESC_FLAG_ENUM_ALL);
+	f->index = index;
 
 	/*
 	 * When dealing with an encoder:
@@ -222,9 +230,9 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 
 		if (skip_mode_none == mode_none)
 			continue;
-		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
+		if (!hantro_check_depth_match(fmt, ctx->bit_depth) && !enum_all_formats)
 			continue;
-		if (j == f->index) {
+		if (j == index) {
 			f->pixelformat = fmt->fourcc;
 			return 0;
 		}
@@ -242,9 +250,9 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	for (i = 0; i < num_fmts; i++) {
 		fmt = &formats[i];
 
-		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
+		if (!hantro_check_depth_match(fmt, ctx->bit_depth) && !enum_all_formats)
 			continue;
-		if (j == f->index) {
+		if (j == index) {
 			f->pixelformat = fmt->fourcc;
 			return 0;
 		}
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
