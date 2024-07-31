Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4DC5C52D54
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 09:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIXk+zeeoJgbiHtZ6WH7kwz9zQ+OeYKyHBoFonWIMeg=; b=2wxgFaP/wqeB6m
	Mp8M23DrsSxMpn3vUEVr9BJ8FndoRrT0xOmWbgXlK4sGj5CqZ8QOPke26dCQYHRnszkOEUGO6rsI3
	7innJgtTP0nGNn4ZHT1nOS6nXAMMCh08WvlpXl0LbAcaKbjEkVyvHGN93mG59T3SlIJf2H7QIygif
	odVzAa9FVvCf9vuEXKUFNvc10BvYa4mNP5yI8tloYHtmM6YkGbtEJpjag8HgCmq//aZC6poDy5avD
	3hg9uadtqLJY8r8tXVlu26kMHRLFBXcx/Q3Mup37yLDCAgVk5kXqcpvtovibXyMi+BiccAKmgc2BA
	gEI0kURdHSDleVNQJcpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5jh-00000000Wg4-3bEk;
	Wed, 31 Jul 2024 09:35:09 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5jd-00000000WdD-2Plh
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 09:35:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722418504;
	bh=pc0eQXx5R7BoUuHctaKqpcBxbPR4AZ5N6w0dlxyz0xs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nmi/MMi0x+9oWS3l1OkaUwHlyIf3U2Bbg5Ea9M7OGNM9sdxQK0XuFJYUiqX3hkM0D
	 uUdOmEYRFswcfkppGqvRSOLXhaUeSAlU/2AJQ9SvrOxDFffzQ5iAIgVQQmtCwi7pDD
	 P83PAa2fhBr01khJFQ6qvbj8PlO+lDOOZcs+LNF7DvuQ6eD9J6ZV+E0/fyEiAP9APa
	 GMWr57D2DUp7uNxtEn7iOIw0iGo9ks+82wIT8Bv79hCsodmMPL/YNznBzA1UEQSwW+
	 4+g7CoKU9ocvVZlk87QdBseryCArRqNvMhzKCZ9Gn8f+Px4N3nNuhIcDxh4aQR148X
	 2r8GODcidRwvQ==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 05FB33782113;
	Wed, 31 Jul 2024 09:35:03 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 2/3] media: test-drivers: Use V4L2_FMTDESC_FLAG_ENUM_ALL flag
Date: Wed, 31 Jul 2024 11:34:56 +0200
Message-ID: <20240731093457.29095-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240731093457.29095-1-benjamin.gaignard@collabora.com>
References: <20240731093457.29095-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_023505_766213_6F5E33C4 
X-CRM114-Status: GOOD (  13.23  )
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
change in version 6:
- Improve visl driver to enumerate one more pixel format when the flag
  is used.

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
