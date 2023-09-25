Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63896CE7A96
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 00:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZ28ripV3gpdUc1S/2QELbCLUUELkrM/Z/avOo2XMsk=; b=v/6aGdWqyLOztq
	OQ/Hv5/L1TJEsGukW6E3G3BnFuFdbR8qLXp8WgOLfCvWdiJFHe+BGBFCE6gv9ngSEp/yTGNNkOLZ2
	YNb/61lE8iBUKrDxg6ADlWa4ZAUJxEbqNlP/clepRuHH1C6YGsyYawqlFVwmS/SQpfcii3YKB04AH
	3//CzYK7Tob2ezUtuodRoSYKiJArHEqWgA6dE0mp7HrN+QMg9pdIrSjSHSD8kf8rf71JILXklmAyR
	cPUjVFSBfxstEAUyY3D4B3TeuQSfZftfkuX45ubDe7guQrq/dVIHopQz2AufORHRJKRHL9xJJKCoQ
	a/yCyWAU8tYKAzlTGGqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf4-00D208-18;
	Mon, 25 Sep 2023 00:41:18 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZez-00D1w4-1w
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 00:41:14 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9D1832CF;
	Mon, 25 Sep 2023 02:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695602372;
	bh=p36jN2uaI3nsLt9GCf4RazFnx5SCbQz4V6wr9yJ4OGY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RXmK5akcszYJflXdZxU05qn6HKt6tB7m5eaNHoUfGFr2qBCDWMvHdOaE1s54lMkRd
	 7x0j2E4Lq4p4+d/8arqkbML+W1icpcv2WB4lDjr1J7667/21Z+60fStkpKZDjxZig2
	 xYNe9zxe16eKtM3swoMRGsAVNNiV9XY3ybvzKENM=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 07/14] media: rkisp1: Fix line stride calculation
Date: Mon, 25 Sep 2023 03:41:05 +0300
Message-ID: <20230925004112.22797-8-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
References: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_174113_798061_3C122FFA 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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

The line stride is expressed in the hardware as a number of pixels for
the first plane. The bytesperline must thus be a multiple of the first
plane's bpp value. Enforce this constraint.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 20 ++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 8f3cba319762..3c1e2c1a8bbe 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1101,14 +1101,20 @@ rkisp1_fill_pixfmt(struct v4l2_pix_format_mplane *pixm,
 	memset(pixm->plane_fmt, 0, sizeof(pixm->plane_fmt));
 	info = v4l2_format_info(pixm->pixelformat);
 	pixm->num_planes = info->mem_planes;
-	stride = info->bpp[0] * pixm->width;
-	/* Self path supports custom stride but Main path doesn't */
-	if (id == RKISP1_MAINPATH || plane_y->bytesperline < stride)
-		plane_y->bytesperline = stride;
-	plane_y->sizeimage = plane_y->bytesperline * pixm->height;
 
-	/* normalize stride to pixels per line */
-	stride = DIV_ROUND_UP(plane_y->bytesperline, info->bpp[0]);
+	/*
+	 * The SP supports custom strides, expressed as a number of pixels for
+	 * the Y plane. Clamp the stride to a reasonable value to avoid integer
+	 * overflows when calculating the bytesperline and sizeimage values.
+	 */
+	if (id == RKISP1_SELFPATH)
+		stride = clamp(DIV_ROUND_UP(plane_y->bytesperline, info->bpp[0]),
+			       pixm->width, 65536U);
+	else
+		stride = pixm->width;
+
+	plane_y->bytesperline = stride * info->bpp[0];
+	plane_y->sizeimage = plane_y->bytesperline * pixm->height;
 
 	for (i = 1; i < info->comp_planes; i++) {
 		struct v4l2_plane_pix_format *plane = &pixm->plane_fmt[i];
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
