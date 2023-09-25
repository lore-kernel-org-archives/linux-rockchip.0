Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A278CE7A97
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 00:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OU3v1Z4p1zj8HyJ0G7ReULDYk4qNdH8emFyFm2+BBhc=; b=KO7vUacsYFReAG
	R41QzdDhP4L9hwUszVXG/EASwZQcFRf70+wgCXpD1awOf2zL4063JazGoK7PJYyzRILwV7m0j35hs
	xzKnJjeLD4+GZYbpC5XgZAkFCT4/Ne8eV5eghINBfBOG3U/BtUBY5fs1pd0O45TIEhauWQa7uXwHR
	LHidyfPwMRnjyDX2uXCuypOHLrpbHAtM6Dehf1Y/p0VbP1eMI+yXbRxtxHOBEgO/FUZpa/TtkDbAi
	IQhkxuk/HBFX562kq7zpDP0G48D4gKG6FRGvq7/HfVSvylygWBdVRpDpcbEgOgykUSyYl7m5u106o
	n+Z8ALC7kTJLqwyymC8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZfB-00D26C-0j;
	Mon, 25 Sep 2023 00:41:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkZf8-00D22Q-0j
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 00:41:23 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 461D88E1;
	Mon, 25 Sep 2023 02:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695602381;
	bh=4CC4se0kQYbu5sKCaZGEoZwn9RO/cNevRn0IVl8Bwi0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Coj9WpDNbx5D/z5yOkzBQVxfDYRKex2BklKSADUx1I/YwsQQerv1AwxqWFm8Trjd6
	 pHhZZejslwiDKo32FqwcNqD6vGP+lZmqoy1tBpNajC+7pNK1ZfNvDgvkVpLq+RpBcn
	 HbPeuntEOzfLufZl6Oa3r4UedVgKKHHO5M/Yv7oU=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 13/14] media: rkisp1: resizer: Improve debug message when configuring resizer
Date: Mon, 25 Sep 2023 03:41:11 +0300
Message-ID: <20230925004112.22797-14-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
References: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_174122_455650_09BCAB2C 
X-CRM114-Status: GOOD (  10.76  )
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

The debug messages that show the resizer configuration are only printed
if the driver enables the resizer. This prevents checking the resizer
configuration when the driver believes it should be disabled. Fix it by
moving the dev_dbg() statements earlier.

Also, combine the two debug prints into a single one to gather all the
information in one place, which makes reading the log easier.

While at it, use %u instead of %d to print unsigned values.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-resizer.c  | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 1741ada7032b..92ae2d2e0f12 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -309,17 +309,17 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	src_c.width = src_y.width / src_yuv_info->hdiv;
 	src_c.height = src_y.height / src_yuv_info->vdiv;
 
+	dev_dbg(rsz->rkisp1->dev,
+		"stream %u rsz/scale: Y %ux%u -> %ux%u, CbCr %ux%u -> %ux%u\n",
+		rsz->id, sink_y->width, sink_y->height,
+		src_fmt->width, src_fmt->height,
+		sink_c.width, sink_c.height, src_c.width, src_c.height);
+
 	if (sink_c.width == src_c.width && sink_c.height == src_c.height) {
 		rkisp1_rsz_disable(rsz, when);
 		return;
 	}
 
-	dev_dbg(rsz->rkisp1->dev, "stream %d rsz/scale: %dx%d -> %dx%d\n",
-		rsz->id, sink_y->width, sink_y->height,
-		src_fmt->width, src_fmt->height);
-	dev_dbg(rsz->rkisp1->dev, "chroma scaling %dx%d -> %dx%d\n",
-		sink_c.width, sink_c.height, src_c.width, src_c.height);
-
 	/* set values in the hw */
 	rkisp1_rsz_config_regs(rsz, sink_y, &sink_c, &src_y, &src_c, when);
 }
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
