Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8071FC3DA7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jul 2024 15:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SaYccDBuQte5jcLfCpAeqlrKUKrGVTGDDZRrSOh2u8=; b=bKEqLGqfR0gzGI
	Pt2ZjHSYQhJj5eSzpzOBd8AeUrTyLl1iSYQfS6Wb3SJ5n5pwZEdNnnDrZRjFwBCwvxjK8fkBdASMB
	Wu7o0LIWaRqmlW6JAOmBmEAAn4+zIGsEIjsLoa5DP7jrBO2xc0swwX6mUg8XhFN1pR7g89Oi+Qwpl
	hmjL8ue/bMZpMoprtWvDJQ/UYyp1WZk8bGGDUeJdoBDRVVYE4bZnz9Y/66mMKe1EP+d39olhSbJma
	nUHEgBKtjG7UmQTaADuS/sPGYUDFVNDQmaP0ApjZnDPZb7Kzyscw8vop90Np1Xe4XPkOUy4t3jipc
	hVDwRvnQZzuUBYbJXf6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVuba-00000009sTx-3Yjx;
	Mon, 22 Jul 2024 15:05:38 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVubU-00000009sQX-3vrR
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Jul 2024 15:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721660731;
	bh=oUSaH13Jhof/IlxUcDgOPqmO1TdySsiM3gh1NyYvCjI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=e2Lhq03PaSsqEb2bjYdsIkaj7WB1iZHGn8UYGf4F+JOUFIkoqLZzj+ByxTN9n5GV2
	 GO+XZSDf/o6Ykq7CIaXa/a5ATSXF6U1Lw9kzIjNQDZHGaVIP9wneVmj40N1Z9OCj/r
	 2Rb7ZTtkoaW6g2+c6cVJHvnu7Ocyf1rbAFVjcLbB/hoSbZm8/6wevhQi99R2+UWWQZ
	 /K0UtRfE8QhJFQs1ONGpVkD52qj8Fisu5KBD4m215flla4MTTbk4T6EcANj4mxD1VF
	 yl8hhQFck2MjQkZye//CnAq6Moap02sMG5Ypv2yLqrYals7k9yY070qqbXQWpn5vH1
	 k5K6KSnqhXcaw==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 9E3E73781189;
	Mon, 22 Jul 2024 15:05:30 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 3/3] media: verisilicon: Use V4L2_FMT_FLAG_ENUM_ALL flag
Date: Mon, 22 Jul 2024 17:05:23 +0200
Message-ID: <20240722150523.149667-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
References: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_080533_130480_E8EC764B 
X-CRM114-Status: GOOD (  13.31  )
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

By adding support of V4L2_FMT_FLAG_ENUM_ALL flag into the driver
we allowing userspce applications to discover all possible
pixel formats of the hardware block. This way userspace can decide
of which decoder to use given the support pixel formats.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/platform/verisilicon/hantro_v4l2.c    | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index df6f2536263b..77f024aaa22d 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -201,7 +201,14 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
 	const struct hantro_fmt *fmt, *formats;
 	unsigned int num_fmts, i, j = 0;
-	bool skip_mode_none;
+	bool skip_mode_none, enum_all_formats;
+	u32 index = f->index & ~V4L2_FMT_FLAG_ENUM_ALL;
+
+	/*
+	 * If V4L2_FMT_FLAG_ENUM_ALL flag is set, we want to enumerate all
+	 * hardware supported pixels formats
+	 */
+	enum_all_formats = !!(f->index & V4L2_FMT_FLAG_ENUM_ALL);
 
 	/*
 	 * When dealing with an encoder:
@@ -222,9 +229,9 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 
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
@@ -242,9 +249,9 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
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
