Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC8A7C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 16:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNYa6bpzd5J7ZC7aHku1G6YvMklJtOEguByknHXS2JI=; b=RQleib/hqrzOqt
	doONYGULPMulctJOjIMNvtNFFGM99QgpcZGX0PtzWdUPUTcJkZyb7bsyHGYtaySwjsl0HhUdzJ9BR
	UQblfkayezUZdIopADFDIJw5lEhtHbHsAxNg49e5Kigo4hrc0xfT3NZu+E91E0FGinZpC6ztYihQL
	kP8nlcfKrGv5w8IQ0b7Hy5WAotcrbZT+QzdUNq8W8G9WCaSnW5BUB6MeD72K7V1wpztfpcSc7o+TQ
	vM0XFMhV1x6Tfu1GjiOQ70n0VMzN7FBo0v08uwij21mpt4KJGL6PDmDn+FFY5A4zSbDIH5vXiwchy
	Mjkv95ijuiMPuufi9mdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBfEU-005eAL-JB; Wed, 13 Jul 2022 16:29:02 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBfES-005e8f-6B
	for linux-rockchip@lists.infradead.org; Wed, 13 Jul 2022 16:29:01 +0000
Received: from localhost (dynamic-002-247-252-243.2.247.pool.telefonica.de [2.247.252.243])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B56B2660191C;
	Wed, 13 Jul 2022 17:28:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657729739;
	bh=LVRQfIVTIi5K/igTKG49FQWCGWRcG10SSWqUlEl1A30=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aLXVbGm9zPp8AOmaiBTKwtKD+rzqutKp7ieoX6Rw5LrOL8/xdwkjEj57pRBNggZoD
	 XNZ6jdDAKcflsD7qxqYNXTmUIrZv4nojTYgP4G+UC9BO/LaF5Dd8pd+Hmes8zt3JFJ
	 vZ1tHcTOShe0+3QgIIMnYfaa2EUkf+RILQTQ0yXt98rr7TSnKe88El0gpfZmsJE1Te
	 REfIzZFhQmPXyKN+4AR6oOhNEFk/SjCYTqvTK5GnE8YSwmrfdFsVYHfpu7YnseIFdg
	 I7c3TSD/4evr/42bb8ublseYN54IhwPIDdjyDdSMZyWLIOKWmUPDXI9MmlsDihDTY+
	 GJwMjgHmCTVmg==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: linux-media@vger.kernel.org
Cc: jernej.skrabec@gmail.com,
	knaerzche@gmail.com,
	kernel@collabora.com,
	bob.beckett@collabora.com,
	ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	nicolas.dufresne@collabora.com,
	Jonas Karlman <jonas@kwiboo.se>,
	Yury Norov <yury.norov@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 2/6] media: v4l2-common: Add helpers to calculate bytesperline and sizeimage
Date: Wed, 13 Jul 2022 18:24:48 +0200
Message-Id: <20220713162449.133738-3-sebastian.fricke@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220713162449.133738-1-sebastian.fricke@collabora.com>
References: <20220713162449.133738-1-sebastian.fricke@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_092900_522021_80D766BD 
X-CRM114-Status: GOOD (  12.46  )
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

From: Jonas Karlman <jonas@kwiboo.se>

Add helper functions to calculate plane bytesperline and sizeimage, these
new helpers consider block width and height when calculating plane
bytesperline and sizeimage.

This prepare support for new pixel formats added in next patch that make
use of block width and height.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/media/v4l2-core/v4l2-common.c | 77 +++++++++++++--------------
 1 file changed, 38 insertions(+), 39 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index 23a0cb02ea3a..2ed78f0af508 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -339,6 +339,33 @@ static inline unsigned int v4l2_format_block_height(const struct v4l2_format_inf
 	return info->block_h[plane];
 }
 
+static inline unsigned int v4l2_format_plane_width(const struct v4l2_format_info *info, int plane,
+						   unsigned int width)
+{
+	unsigned int hdiv = plane ? info->hdiv : 1;
+	unsigned int bytes = DIV_ROUND_UP(width * info->bpp[plane],
+				v4l2_format_block_width(info, plane) *
+				v4l2_format_block_height(info, plane));
+
+	return DIV_ROUND_UP(bytes, hdiv);
+}
+
+static inline unsigned int v4l2_format_plane_height(const struct v4l2_format_info *info, int plane,
+						    unsigned int height)
+{
+	unsigned int vdiv = plane ? info->vdiv : 1;
+	unsigned int lines = ALIGN(height, v4l2_format_block_height(info, plane));
+
+	return DIV_ROUND_UP(lines, vdiv);
+}
+
+static inline unsigned int v4l2_format_plane_size(const struct v4l2_format_info *info, int plane,
+						  unsigned int width, unsigned int height)
+{
+	return v4l2_format_plane_width(info, plane, width) *
+	       v4l2_format_plane_height(info, plane, height);
+}
+
 void v4l2_apply_frmsize_constraints(u32 *width, u32 *height,
 				    const struct v4l2_frmsize_stepwise *frmsize)
 {
@@ -374,37 +401,19 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
 
 	if (info->mem_planes == 1) {
 		plane = &pixfmt->plane_fmt[0];
-		plane->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
+		plane->bytesperline = v4l2_format_plane_width(info, 0, width);
 		plane->sizeimage = 0;
 
-		for (i = 0; i < info->comp_planes; i++) {
-			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
-			unsigned int vdiv = (i == 0) ? 1 : info->vdiv;
-			unsigned int aligned_width;
-			unsigned int aligned_height;
-
-			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
-			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
-
-			plane->sizeimage += info->bpp[i] *
-				DIV_ROUND_UP(aligned_width, hdiv) *
-				DIV_ROUND_UP(aligned_height, vdiv);
-		}
+		for (i = 0; i < info->comp_planes; i++)
+			plane->sizeimage +=
+				v4l2_format_plane_size(info, i, width, height);
 	} else {
 		for (i = 0; i < info->comp_planes; i++) {
-			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
-			unsigned int vdiv = (i == 0) ? 1 : info->vdiv;
-			unsigned int aligned_width;
-			unsigned int aligned_height;
-
-			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
-			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
-
 			plane = &pixfmt->plane_fmt[i];
 			plane->bytesperline =
-				info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv);
-			plane->sizeimage =
-				plane->bytesperline * DIV_ROUND_UP(aligned_height, vdiv);
+				v4l2_format_plane_width(info, i, width);
+			plane->sizeimage = plane->bytesperline *
+				v4l2_format_plane_height(info, i, height);
 		}
 	}
 	return 0;
@@ -428,22 +437,12 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
 	pixfmt->width = width;
 	pixfmt->height = height;
 	pixfmt->pixelformat = pixelformat;
-	pixfmt->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
+	pixfmt->bytesperline = v4l2_format_plane_width(info, 0, width);
 	pixfmt->sizeimage = 0;
 
-	for (i = 0; i < info->comp_planes; i++) {
-		unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
-		unsigned int vdiv = (i == 0) ? 1 : info->vdiv;
-		unsigned int aligned_width;
-		unsigned int aligned_height;
-
-		aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
-		aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
-
-		pixfmt->sizeimage += info->bpp[i] *
-			DIV_ROUND_UP(aligned_width, hdiv) *
-			DIV_ROUND_UP(aligned_height, vdiv);
-	}
+	for (i = 0; i < info->comp_planes; i++)
+		pixfmt->sizeimage +=
+			v4l2_format_plane_size(info, i, width, height);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
