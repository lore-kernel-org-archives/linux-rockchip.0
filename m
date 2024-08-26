Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E578C5472D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 17:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGJ+OC/5ISFIPcc+PI6by8/gONz3KLXL2cKkkPdn2iw=; b=bDPDoxspI8GyQd
	CWfCADb8fV3J/PkvomHCft0BKFS5028Kpu715hTxZGTbXgWkPfgT6pbX9sknPJ1URizKPQ+YOyp+w
	qQrZ0tOQ8T6+a9BWCc7NfE6DumXlm+LkQ9q04uAscajWMmmXGTP86Pnj7Krjxl4pYiiMFhDIF7Wyq
	NYBkdbnGaSrx8UaALuZK/Fq+BV9mPDDs5ifNx7/qEDN0fhpeGxYlA/MV679sLBudYqfSUx3EKwY6w
	KxAJ4NVzvtWvWlJa6o1upFVYjWMjF2UPtdzyezAUzuLaYFHVR2CYQljmE+RnM2RMLNLES6FdC6qK+
	+i9+Vr6tE18plbzqo0Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidUh-00000008CuM-1PJk;
	Mon, 26 Aug 2024 17:27:07 +0000
Received: from a7-31.smtp-out.eu-west-1.amazonses.com ([54.240.7.31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidRu-00000008BzI-1GUu
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 17:24:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724693050;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=etTr18PVUbyD9sH0upSXvlXDIQwDCIKkQLfctpu+WIM=;
	b=CCe11pr6qOy961/sWNVUMH6KKouTy/tOjExkTfT2L+8KDU8TzEFeUAXBuf7DPHhh
	xKSmoKi7ylUV4vwdY/z/lQPB0QnSDieugfPWooL2O7lNTJsRIOWJ9PHsmJrXmZLTAzA
	8V5ClmdQQVJbqNvlVho6cciT6j8qJiL3Vu8FMXLxLU/7qlgeHa3dWVQMYtDLafn/SFa
	2c9DGBIn35M7JdGhMtZ4+LbAqV4n63cm4gMiwhEJsnjjYnEbAmYpUeDTpt5jMhO2bKs
	iIqbM2NPqzfxAMV/3O8mxI29gN91GpixK7/1tXMdyD4xCn4M5LnVwWj6dSRbDMGbyeH
	QwWac6451w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724693050;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=etTr18PVUbyD9sH0upSXvlXDIQwDCIKkQLfctpu+WIM=;
	b=IJNBUtajuE12ye6IkYE7m+mee4d0+VJDF+NehKONNLoVgKTBsikexRUoLLiGVJz/
	0lbZF/0JhtX3sIS7iEcJCxEamB5WTOw6lJqcZm6w57s2ipG0UAt6BobQ+m5LtJTh4m4
	5wPa1zr8cbvDW+/prx8x/YHw/9kbmXJACHE0JDpM=
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar, 
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v7 2/3] media: test-drivers: Use V4L2_FMTDESC_FLAG_ENUM_ALL flag
Date: Mon, 26 Aug 2024 17:24:10 +0000
Message-ID: <010201918fb772f4-51d41cc7-a573-4d49-b75c-3e6b37839901-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826172407.140538-1-benjamin.gaignard@collabora.com>
References: <20240826172407.140538-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.26-54.240.7.31
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_102414_529831_C0E721AC 
X-CRM114-Status: GOOD (  11.42  )
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

Since the V4L2_FMTDESC_FLAG_ENUM_ALL flag mostly targets stateless
decoder pixel-format enumeration, update visl test driver to use it.
When V4L2_FMTDESC_FLAG_ENUM_ALL flag is set let the driver returns
one more pixel format.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/test-drivers/visl/visl-video.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/media/test-drivers/visl/visl-video.c b/drivers/media/test-drivers/visl/visl-video.c
index f8d970319764..677a8564de03 100644
--- a/drivers/media/test-drivers/visl/visl-video.c
+++ b/drivers/media/test-drivers/visl/visl-video.c
@@ -136,6 +136,12 @@ static const u32 visl_decoded_fmts[] = {
 	V4L2_PIX_FMT_YUV420,
 };
 
+static const u32 visl_extended_decoded_fmts[] = {
+	V4L2_PIX_FMT_NV12,
+	V4L2_PIX_FMT_YUV420,
+	V4L2_PIX_FMT_P010,
+};
+
 const struct visl_coded_format_desc visl_coded_fmts[] = {
 	{
 		.pixelformat = V4L2_PIX_FMT_FWHT_STATELESS,
@@ -341,11 +347,21 @@ static int visl_enum_fmt_vid_cap(struct file *file, void *priv,
 				 struct v4l2_fmtdesc *f)
 {
 	struct visl_ctx *ctx = visl_file_to_ctx(file);
+	u32 index = f->index & ~V4L2_FMTDESC_FLAG_ENUM_ALL;
+	int max_fmts = ctx->coded_format_desc->num_decoded_fmts;
+	const u32 *decoded_fmts = ctx->coded_format_desc->decoded_fmts;
+
+	if (f->index & V4L2_FMTDESC_FLAG_ENUM_ALL) {
+		max_fmts = ARRAY_SIZE(visl_extended_decoded_fmts);
+		decoded_fmts = visl_extended_decoded_fmts;
+	}
+
+	f->index = index;
 
-	if (f->index >= ctx->coded_format_desc->num_decoded_fmts)
+	if (index >= max_fmts)
 		return -EINVAL;
 
-	f->pixelformat = ctx->coded_format_desc->decoded_fmts[f->index];
+	f->pixelformat = decoded_fmts[index];
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
