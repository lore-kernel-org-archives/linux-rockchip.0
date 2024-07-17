Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2A1BC3DA61
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 13:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfzRN7VrU8SsSzB1J9TfHQwyUgU5rMAtfU5TXOiFc3Q=; b=fmFqwKHIGKNqqL
	tBDkOkAZmcZnBo5OH05zf3rXid5850S0MksAHv0wEYNpf+EHZI9Jb+qr7mfOQUAoIUznP7ZAXXfcc
	fnb8Mknce/j5M6OqU7WkELLAd65BJeoBbcPdJgvvtDomr78/5d0NHZ8R24kGtItSt7GXXFI0zmdu/
	yC+iNZfk+hsDttB2nLkjzDCklGdyXXZIxTEK3b1uQd4BUb/JuvsHiJgWNvTs6Zo+mNoJUwWSP5U6x
	2B8jzv5paRpvpsDF0SN13sR+VqqrcAfFWZb3T6d/c0ElRkH+9YTxjJ8h4tHqcnZLEngpuK1JZLBan
	/pLDBVHBzBTpWQ5yi9Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU4UY-0000000DrLm-0FxP;
	Wed, 17 Jul 2024 13:14:46 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU4US-0000000DrHZ-16vh
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jul 2024 13:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721222077;
	bh=kzYMEzDjxTpW5eugXBBcAXl8xSootQ7RO2p3jTHcEPo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KprwIjDAbCnWZr1IXmzM3UqQ9WkQESnjzRG7FJR5PktXGypvOjhq7X8o0wo75cIPB
	 aK9JiGlvcOtdkKzZypIIvup9GMb7pRUKIq6/EaBwRjdY1DO5JIFteWi2Zq9S/xMNnS
	 foL3U0BqE7dI56Bj/NIHVwyVlZS5SmNmVD3dD/hXXP5SlWluDx9l4Ldpxxh6FHFQeH
	 gdpZEE60Fya5g3aBEpT43tuGBK2K0qfkPPOu1HWx+i7uo5ujdgrA6VdMvVFXz1HOO8
	 /RwRtzi0GCbDkAEJS9aKTQriWI2+R501UPO3mksX2edBd/l/23WVdaipnZuV/+Jgl4
	 tHS0CS+Msolkw==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5A2803781167;
	Wed, 17 Jul 2024 13:14:37 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 2/2] media: verisilicon: Use V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag
Date: Wed, 17 Jul 2024 15:14:30 +0200
Message-ID: <20240717131430.159727-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_061440_493170_BB283767 
X-CRM114-Status: GOOD (  11.81  )
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

If V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag has been set when calling
VIDIOC_ENUM_FMT ignore depth match and returns all the
hardware supported pixels formats. In this case all set
V4L2_FMT_FLAG_ALL_FORMATS when returning the pixels formats.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index df6f2536263b..b995ad31cddc 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -201,7 +201,13 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
 	const struct hantro_fmt *fmt, *formats;
 	unsigned int num_fmts, i, j = 0;
-	bool skip_mode_none;
+	bool skip_mode_none, ignore_depth_match;
+
+	/*
+	 * If V4L2_FMT_FLAG_ALL_FORMATS flag is set, we want to enumerate all
+	 * hardware supported pixels formats
+	 */
+	ignore_depth_match = !!(f->flags & V4L2_FMT_FLAG_ENUM_ALL_FORMATS);
 
 	/*
 	 * When dealing with an encoder:
@@ -222,10 +228,12 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 
 		if (skip_mode_none == mode_none)
 			continue;
-		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
+		if (!hantro_check_depth_match(fmt, ctx->bit_depth) && !ignore_depth_match)
 			continue;
 		if (j == f->index) {
 			f->pixelformat = fmt->fourcc;
+			if (ignore_depth_match)
+				f->flags |= V4L2_FMT_FLAG_ALL_FORMATS;
 			return 0;
 		}
 		++j;
@@ -242,10 +250,12 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	for (i = 0; i < num_fmts; i++) {
 		fmt = &formats[i];
 
-		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
+		if (!hantro_check_depth_match(fmt, ctx->bit_depth) && !ignore_depth_match)
 			continue;
 		if (j == f->index) {
 			f->pixelformat = fmt->fourcc;
+			if (ignore_depth_match)
+				f->flags |= V4L2_FMT_FLAG_ALL_FORMATS;
 			return 0;
 		}
 		++j;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
