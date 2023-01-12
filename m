Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 196B2C54EBC
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 12:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ctp40i356LV8XXawk+qoznneur157/VC0/89BZjdCCY=; b=T+/ejI1q7xcWmT
	dpfDuNh68ui0/MFk1qo4+7Z7Kl2EzpYvLfAx1aZJ1DNKjA5ajbgC4eQvyfLmw/03l/Z5HcxooTgFN
	s+Vv/03VVkuDsXHC6RfJuYpKrhP5oMkiVN29Y2pyTPRBAAB/YKGjTN44AmFCAez5lmTaAoRJ6shOv
	K7kvQJYjk7Oa6jfZl0Gw2zQXC/ct1QVW3hrCxvIJp60F+N/HkYi0o6/FPkpYkP0aaSnSUf6g+RS0e
	LG0RDEEMxzF1ZNX8Q4zwGO2GaxpgTegGg/g4GSDfkrPonFl5Txy+IsG9pkoWlPim0AotmH4zIepdB
	dyEJb3LQidGQ1lFOMfBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8L-00F3p3-7B; Thu, 12 Jan 2023 12:56:41 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8G-00F3ly-HF
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 12:56:38 +0000
Received: from localhost (89-26-75-29.goll.dyn.salzburg-online.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2E7356602DBC;
	Thu, 12 Jan 2023 12:56:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673528195;
	bh=TMBuSYYQgufdE8ilX8+9MkfvSRLEsm/O1NHAsGj+B/Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XOPL1XeRQInEt43srKZYrnrk2C/E2t6TlKO5p4bXvoEV/zBpFhHONeClKtTqj6JBz
	 4o16E9P1tWHpCvOrfc/+9iIjNnCFUEt3alSQI9jpYrBa97dU0lspWglEQG7xskQ+Vh
	 XgKtlMfpbzLXq5q5BhUkbtzWVHVDkvZEYFxOjhJNvkgCXtU1KoG3oR4M3PnfACexdl
	 9q7Korw+75cBpygJm/0frQyYKChkqDwnB9NkXuNDQiZrBS9TrMrOaalV1OFgwXKasX
	 moplnbm24XFPXMFZ9qSAmZAwk4rp/hYi5DzvT741iOfZxvOz2Ti1iZicgEHEOkRIEQ
	 VFf5gm44ncdsA==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Thu, 12 Jan 2023 13:56:17 +0100
Subject: [PATCH v2 02/12] media: v4l2-common: Add helpers to calculate
 bytesperline and sizeimage
MIME-Version: 1.0
Message-Id: <20230101-patch-series-v2-6-2-rc1-v2-2-fa1897efac14@collabora.com>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
In-Reply-To:  <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel-domain <kernel@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>
X-Mailer: b4 0.11.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1673528186; l=4683;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=LcMmGvBIJq4nek85HGURC0+BOvaXuS5YxkC2HDnyM4I=;
 b=21yB2ximJGHXO2qRmwC71wOACLdxQEDfraCFxz9My9OOeP/Bg30IT6qXnRdRmTEICA6UNWxjEJjI
 0AsKrLSDBeIJqIIhK3dU2M8+aYSDn/AyK7/xOhcyFbJLtFv1L49Z
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_045636_867626_9B6D14DE 
X-CRM114-Status: GOOD (  13.25  )
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

This prepares support for a new pixel format added in next patch that makes
use of block width and height.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/media/v4l2-core/v4l2-common.c | 77 +++++++++++++++++------------------
 1 file changed, 38 insertions(+), 39 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index be23e319fb3a..12c1d2f409b0 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -340,6 +340,33 @@ static inline unsigned int v4l2_format_block_height(const struct v4l2_format_inf
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
@@ -375,37 +402,19 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
 
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
@@ -429,22 +438,12 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
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
