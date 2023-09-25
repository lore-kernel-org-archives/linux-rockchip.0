Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE9B7CE7A8B
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 00:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIOaGUarrZSp+5Hciq3+0oTQbI5aIDrPtgMpi7W0P+A=; b=Ya1oyxGvKRpb5U
	N3IvHIcLpy+DxZ3i3VaOc3J7A2fGPxZwwWf/u6ui6rhreesW5IppeNKCXT/KqrtyLA6F2XIYknHdd
	vvIP5JxcS/1V1o/1OBmkh3CofdvjIwvWRrD6KdnsSqetf7z0BAc4SydyOAuaVikzr3hY+5bL6dBD1
	k5mu+9Md4aW0T7WmkSOHSkugQ7eYFxcoWEhTH1zxP+4CogN7XyBA3nzizXHmofNSWrFqee3rb5OUd
	3PeQknBjRWpSpDMU78Y8YurfJCiiCba7vYI5lSsG+5sTEA1CiM5mYXLM88CAmbqC8swEVLsE51jY8
	hm0gT0qVSSG6JKyemLtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZfA-00D25o-2c;
	Mon, 25 Sep 2023 00:41:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf6-00D21L-2O
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 00:41:22 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BAB05DD9;
	Mon, 25 Sep 2023 02:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695602380;
	bh=j/LzFNmymhs9E+9rhXNgo91vyteuhcCclHMywY9XmL4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W1bdQILaInTVE1yqlROUsPlCCE1Ps2KxKSjOiZAl0mC4qeLVEa56CpEZHu/m7DiGd
	 FkrS3gB027XqOKKTnrQkMkluL7dRud1MADfsl8FMw+aTza3WqQx6Lr1NkFJQXaLPlf
	 Nb+s9Wrnt1R2t6JMSsQVcV97+EQIq2Zs/r2G1T/w=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 12/14] media: rkisp1: resizer: Drop unneeded local variable
Date: Mon, 25 Sep 2023 03:41:10 +0300
Message-ID: <20230925004112.22797-13-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
References: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_174120_928403_92537BA4 
X-CRM114-Status: GOOD (  11.46  )
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

The sink_y local variable in rkisp1_rsz_config() stores a copy of the
sink_crop crop rectangle. Drop it, and rename sink_crop to sink_y.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-resizer.c | 20 +++++++++----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 8700be7d19aa..1741ada7032b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -271,14 +271,12 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 {
 	const struct rkisp1_rsz_yuv_mbus_info *sink_yuv_info, *src_yuv_info;
 	const struct v4l2_mbus_framefmt *src_fmt, *sink_fmt;
-	const struct v4l2_rect *sink_crop;
-	struct v4l2_rect sink_y, sink_c;
+	const struct v4l2_rect *sink_y;
 	struct v4l2_area src_y, src_c;
+	struct v4l2_rect sink_c;
 
 	sink_fmt = v4l2_subdev_get_pad_format(&rsz->sd, sd_state,
 					      RKISP1_RSZ_PAD_SINK);
-	sink_crop = v4l2_subdev_get_pad_crop(&rsz->sd, sd_state,
-					     RKISP1_RSZ_PAD_SINK);
 	src_fmt = v4l2_subdev_get_pad_format(&rsz->sd, sd_state,
 					     RKISP1_RSZ_PAD_SRC);
 
@@ -294,14 +292,14 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 		return;
 	}
 
-	sink_y.width = sink_crop->width;
-	sink_y.height = sink_crop->height;
+	sink_y = v4l2_subdev_get_pad_crop(&rsz->sd, sd_state,
+					  RKISP1_RSZ_PAD_SINK);
+	sink_c.width = sink_y->width / sink_yuv_info->hdiv;
+	sink_c.height = sink_y->height / sink_yuv_info->vdiv;
+
 	src_y.width = src_fmt->width;
 	src_y.height = src_fmt->height;
 
-	sink_c.width = sink_y.width / sink_yuv_info->hdiv;
-	sink_c.height = sink_y.height / sink_yuv_info->vdiv;
-
 	/*
 	 * The resizer is used not only to change the dimensions of the frame
 	 * but also to change the scale for YUV formats,
@@ -317,13 +315,13 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	}
 
 	dev_dbg(rsz->rkisp1->dev, "stream %d rsz/scale: %dx%d -> %dx%d\n",
-		rsz->id, sink_crop->width, sink_crop->height,
+		rsz->id, sink_y->width, sink_y->height,
 		src_fmt->width, src_fmt->height);
 	dev_dbg(rsz->rkisp1->dev, "chroma scaling %dx%d -> %dx%d\n",
 		sink_c.width, sink_c.height, src_c.width, src_c.height);
 
 	/* set values in the hw */
-	rkisp1_rsz_config_regs(rsz, &sink_y, &sink_c, &src_y, &src_c, when);
+	rkisp1_rsz_config_regs(rsz, sink_y, &sink_c, &src_y, &src_c, when);
 }
 
 /* ----------------------------------------------------------------------------
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
