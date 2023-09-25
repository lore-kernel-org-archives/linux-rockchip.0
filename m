Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D2E8CE7A94
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 00:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pD25G3vKeUfOUkqHGBEtekKbqNYjT/2RMerLuEwXBOc=; b=cYpGfxv1OjXDdd
	TQJo+AYkBVut1zPf3MLHENmBfSAptEN9ejwN8J4nOTqBOFEkrHe4XXb0E3PEkksTcsx3JkACeN1Gr
	DkHjJ9Fjazr/qDrXYqtMqInVEx9BdMbwv6/tsH/FPS5gzItfuKNkwKvaDBYdwW3ya0fvbUbhWwlAl
	kh23OZCu6DRjQQIJw1JCH8hoTYFi959MDAb32Qnbutq/X8301EftuH2PZzQpC0WEOoHudHXD9/onb
	E1TAOVLyr/JsE1oHoKwvTslNIA6+AThtrpb3WOxYyi32O8nU5i+SMkXPli2jL2n+nwUteC+iMqiTV
	bhVfDr3DWgxEzsh011GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZfD-00D28B-0j;
	Mon, 25 Sep 2023 00:41:27 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf9-00D23i-1y
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 00:41:25 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9D70A3360;
	Mon, 25 Sep 2023 02:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695602382;
	bh=4lwUG9HuxVn6eGcWzJtMyscIeqIRgO/I28PrtXx5giM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vHuzcDx5JRHCkDxCIXuf+EaUjq5vJVM54poP291Sh4HRBexebLSwxhW1BU3Q76twU
	 PfetoOh3vhvq60M/FwDk5Qsi/xlLJq9qOYU8unGxAIKOPq85NSHb3ZHUXW5pLJN6VV
	 YAs4fdzJvS14r7Z5h9u+98S9MEyUoH69rXNaa+xQ=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 14/14] media: rkisp1: resizer: Fix resizer disable check when starting stream
Date: Mon, 25 Sep 2023 03:41:12 +0300
Message-ID: <20230925004112.22797-15-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
References: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_174123_794542_24F33C6C 
X-CRM114-Status: GOOD (  16.29  )
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

The resizer is used to scale the image, but also to change the
subsampling of YUV formats. Both the luma and chroma dimensions need to
be taken into account to decide whether or not to enable the resizer.
The current implementation disables the resizer if the chroma vertical
size isn't changed, which would be the case when scaling up by a factor
of 2 vertically while at the same time converting from YUV 4:2:2 to
4:2:0. Fix it by checking the luma sizes too.

While at it, reflow and clarify comments in the function.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-resizer.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 92ae2d2e0f12..28ecc7347d54 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -284,8 +284,8 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	src_yuv_info = rkisp1_rsz_get_yuv_mbus_info(src_fmt->code);
 
 	/*
-	 * The resizer only works on yuv formats,
-	 * so return if it is bayer format.
+	 * The resizer only works on yuv formats, so return if it is bayer
+	 * format.
 	 */
 	if (!sink_yuv_info) {
 		rkisp1_rsz_disable(rsz, when);
@@ -299,15 +299,15 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 
 	src_y.width = src_fmt->width;
 	src_y.height = src_fmt->height;
+	src_c.width = src_y.width / src_yuv_info->hdiv;
+	src_c.height = src_y.height / src_yuv_info->vdiv;
 
 	/*
 	 * The resizer is used not only to change the dimensions of the frame
-	 * but also to change the scale for YUV formats,
-	 * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
-	 * streams should be set according to the media bus format in the src pad.
+	 * but also to change the subsampling for YUV formats (for instance
+	 * converting from 4:2:2 to 4:2:0). Check both the luma and chroma
+	 * dimensions to decide whether or not to enable the resizer.
 	 */
-	src_c.width = src_y.width / src_yuv_info->hdiv;
-	src_c.height = src_y.height / src_yuv_info->vdiv;
 
 	dev_dbg(rsz->rkisp1->dev,
 		"stream %u rsz/scale: Y %ux%u -> %ux%u, CbCr %ux%u -> %ux%u\n",
@@ -315,12 +315,13 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 		src_fmt->width, src_fmt->height,
 		sink_c.width, sink_c.height, src_c.width, src_c.height);
 
-	if (sink_c.width == src_c.width && sink_c.height == src_c.height) {
+	if (sink_y->width == src_y.width && sink_y->height == src_y.height &&
+	    sink_c.width == src_c.width && sink_c.height == src_c.height) {
 		rkisp1_rsz_disable(rsz, when);
 		return;
 	}
 
-	/* set values in the hw */
+	/* Set values in the hardware. */
 	rkisp1_rsz_config_regs(rsz, sink_y, &sink_c, &src_y, &src_c, when);
 }
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
