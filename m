Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C2A8C3DA41
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 16:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfzRN7VrU8SsSzB1J9TfHQwyUgU5rMAtfU5TXOiFc3Q=; b=dq4KoVLWD6y4Am
	F2RVItlT7C8DwzlHoQu+YmsSGdEIzYCJzk1XG6VbrnA1DRHeIMnW2uif/AafIxxwTzEEWieSFkg9D
	Shb8MmDF+ZdalO/yG02DXINj+dA9mCt7oGHaBxlstVpjKtW3NMYc1p/TZZHHNE149O9cWIt6ojja0
	ukY3KltDAnTc15dKVa7oV+r57koRPfwuukn7P6C3d04kirNpKSf0iBsrneVnqhkm33z3/Io9LPHBv
	f76BnZnk0QEm5mSTm/zS47U1KBHEiVc5UQf6MAw30nQoifJpmSz01RkrzJl8hA8FUfyGWdf2c06X+
	YDZoMV9aBWU5fuCZPiAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRDWu-00000007tqE-44HW;
	Tue, 09 Jul 2024 16:17:24 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRDWq-00000007toY-1fH9
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jul 2024 16:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1720541838;
	bh=kzYMEzDjxTpW5eugXBBcAXl8xSootQ7RO2p3jTHcEPo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KErRxHF+aBh0ns9MwcZyWn3AUq4HrqqVrf185PZ8SvL5ZBCD/duXPMIYO7Zx1lMiV
	 p5l5WSoJYxfzI53aE8x676kcdelt3r6wcOf1RwFTqSHvocwekAd7UyNWvMEa/IZr/b
	 ntU/3k3hkEMMPEG5MwctYLsDWJ2rROaY3z/L3zGUkNMDlomIro8GkoXzPAS+DoCPd7
	 pDLyGMfweM2zS8Q0e7O7l/Vm24aLcLyCNa+RJbGG65L/h84xGJj06EySRJHL4PlIXW
	 9jgXgpIhRuvCazLil0QZ2jHkGC/O3H7Xts2nQSuMa7pMdsIOaOYkgI782cHcwUOjAN
	 WOjGKF0FBiWtQ==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 96582378219C;
	Tue,  9 Jul 2024 16:17:17 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.or,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 2/2] media: verisilicon: Use V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag
Date: Tue,  9 Jul 2024 18:17:10 +0200
Message-ID: <20240709161710.83109-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240709161710.83109-1-benjamin.gaignard@collabora.com>
References: <20240709161710.83109-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_091720_588123_0993C885 
X-CRM114-Status: GOOD (  12.13  )
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
