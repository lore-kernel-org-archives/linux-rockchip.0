Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2799C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jul 2024 10:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iblnd1/2I1va1gO/PMYM56RMPtbyK11HBBOmUBXq9YU=; b=10OhC44VaNiUel
	YH9KUHlzOkRGK75akho/SmBUVvCyaRkKYZs+i6i4SyGFcS+GbWrOiKF8A+gOa7jdlZRb0GeVVYwj9
	IHBSf5qd89QfJ3cuCec+3pgxF5yNythZHHIwbAyqrK6G2/huT59oIBnPdJgeH/CZziwqYOHj1HNOQ
	OzZqbsgV6dxZYa8W4sr0ZD0z7VZsQgc9ucLyaaQHkRaqQeIYGOAhGYi6oNwM97W08V/LjoUb/vpLz
	D6dqS8yz0ypO+xAmxQVDFKqmB91qU7qYWoM5WHecPK9Z83Dw5PNrDGwzJEr+v14DIcdr7H68Kmfl5
	QY5H2a25udVtoKpq9jpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSDXc-0000000HJsu-0IBt;
	Fri, 12 Jul 2024 10:30:16 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSDXV-0000000HJp8-445W
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jul 2024 10:30:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1720780207;
	bh=bELZrED6sIOc9BpYrGeP+56C/27OSrzikkUngJU8pDY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oxXgO+e7FmckzoixskpxSN5/Z9J0D0hGcVERZ1gi52+XRCypdyw9GQxfxWk5VLFXf
	 LTt57aarZV6I01SN3iyOKSWeKMUrXwpJp7OX3+1aF3THxuJU3IWVJEU1N+UkhpzKm9
	 rUGTBB3UUSfeRmNZNIeEQ550cBmVZ9pyd/0TP4nXStTUcpd8VpQH5OzLMZ7WEhiOZf
	 M8u1aF50KuPvgZOWe/HfvZcvQ9BMvJUdW2V1dxv3BuOSm1Qo91QhQkkwgt7Q43lp6Q
	 S/KsEQDVdRkk+B/Ft+kdhCsOjm/htlkKWuOXX9eYPp1V04VPSnHRKv+JA79TIrejcq
	 1qp29A3m9+NTQ==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2DA023782212;
	Fri, 12 Jul 2024 10:30:07 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 2/2] media: verisilicon: Use V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag
Date: Fri, 12 Jul 2024 12:30:00 +0200
Message-ID: <20240712103000.16655-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240712103000.16655-1-benjamin.gaignard@collabora.com>
References: <20240712103000.16655-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_033010_259575_EAFCB755 
X-CRM114-Status: GOOD (  12.34  )
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
version 3:
- Set V4L2_FMT_FLAG_ALL_FORMATS flag when needed.

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
