Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C8C3C52D1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 09:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pysdmUoSRSqzQFs62mH9qIbD1NbTB1HJZbkBCSttP5k=; b=LfhrjO7AC1p/R2
	DJMWQkHjSryjmoTRDmLaSJD/7SBWUOc+KN6IyJpw0vaocgeY+Ean1EYB/2/HtO5nQ71OaPOzbGBF6
	nJZC8nAw0wymSR8ivfBqgqQEWbolkw7beG5jj7fzYXRKpRakHK4mCk5uhs0jEqbwtyYwk2icNhZ1p
	X+cpgup3wHV667uWmHVikn+sdVr0i0K/cmWPodG2r5t6t8VDWPe0LFfg4bep6xMm2VLgVR1G9It7j
	MvKwlFmlnpAM/NmSsn9RmszQFo2SK62xGAW2xAZUSi85eQnoUYBsGBd2u8iRC/TuB4SE1Reso96AG
	v07Vn8aGDqZ/WhQye4ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5ji-00000000WgV-1A8E;
	Wed, 31 Jul 2024 09:35:10 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5je-00000000WdP-0fZP
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 09:35:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722418505;
	bh=OlPnoh/kLKwB+K1SAOzWnjDTIPXs1b69NoLFMlqj2FQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vjkpwMyAWerMuA+xGyrZse6LIgpQH6swgmQNUHPALFK+xPfzc6N8tsJJcp1da3xyG
	 oVEfGwMJipGbEdRaD8QY2M6Moj3COKquD/CzHQ/xBjZobx/T0sQa6rC2iW06xyakvk
	 1PGi8y28QXK9KpxJe+S10ROu9mw3E1LbhPRkHPuzuKYuvBxCZ1o/f2ZD/ND6HrUXUB
	 HdmZlRR8+2QKwzyzXsDWdmawogwSB1c7QnVMn2MYu7ys30eOwdMn3+JyiUmtGhUNzg
	 DMiZ19etfYCpU8OtRkb+6YK8riIoQz98aLjWsG/5fOG40ifeOUACyXdvZhdgQVFZxa
	 unPzNa917O1lQ==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 97527378215C;
	Wed, 31 Jul 2024 09:35:04 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 3/3] media: verisilicon: Use V4L2_FMTDESC_FLAG_ENUM_ALL flag
Date: Wed, 31 Jul 2024 11:34:57 +0200
Message-ID: <20240731093457.29095-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240731093457.29095-1-benjamin.gaignard@collabora.com>
References: <20240731093457.29095-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_023506_347699_8C5D0788 
X-CRM114-Status: GOOD (  14.30  )
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
