Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 355F2C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkDtvyBzV+Bh8ntA0pcZKn4BjlMVXgusKnCT38lMB1Y=; b=iqHt5tvY4S6b6x
	zBXl4fbEQUoaijmwZG8JLdMCqMWJlSRqJbB+hUY7uDCHcz5QYen+kNYJnGE8Knv+AZYVutc3Qrt4n
	uUY3cBR80wwWL6yH/gPPE1YAdYIXHGxiRCdXWW99fJ7CHWxdyiAhb6vVREHoO9Z30ZpjINph+CeIh
	8lvm15dIRtPy4Z6zstA75KQvSFTNvhsQINOQXWNh4fEXo6X0qIepUvgaN/V1fS+6ZXETvOYHJqzNk
	n6qXl1968AKAFdRma5cjjkbQyVLwtgGSBeQxlD0XSP0ROY8gUiKZzUa4nxEg5QfST/9vJszpGxWw5
	B7491uqrNwcATPJKIg/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAszb-001h0M-R7; Mon, 11 Jul 2022 12:58:27 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslL-001YJ0-QE
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:45 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D13B12B64;
	Mon, 11 Jul 2022 14:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543422;
	bh=N3hccJTZaKwLIucsH11uAzhxQ0X+ZEraF0MdIfMal/k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sZ0Qzm2yWyxUpjkK4m5a3ltcFchO0PvnwqKUvqBrIr+uIzLiqWS0dszVfqfX//sHV
	 msY0ZCHEFYbvwBCOZ/KOI8QLF+R80wWN/Sg3KJleZZ4xK7pVeLl1LOcs9HGNTsnVqb
	 RZo2+cGvaJu/AjD/y2bKX8ZbIg4f5Y7d8TWec9qA=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 37/46] media: rkisp1: isp: Rename rkisp1_get_remote_source()
Date: Mon, 11 Jul 2022 15:42:39 +0300
Message-Id: <20220711124248.2683-38-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054344_076031_484B726E 
X-CRM114-Status: GOOD (  10.62  )
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

Rename the rkisp1_get_remote_source() function to
rkisp1_isp_get_source() to use a consistent rkisp1_isp_* prefix for all
ISP functions, and drop the "remote" as the source can't be local.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 2ba227b2f6a1..37623b73b1d9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -58,7 +58,7 @@
  * Helpers
  */
 
-static struct v4l2_subdev *rkisp1_get_remote_source(struct v4l2_subdev *sd)
+static struct v4l2_subdev *rkisp1_isp_get_source(struct v4l2_subdev *sd)
 {
 	struct media_pad *local, *remote;
 	struct media_entity *sensor_me;
@@ -754,7 +754,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		return 0;
 	}
 
-	rkisp1->source = rkisp1_get_remote_source(sd);
+	rkisp1->source = rkisp1_isp_get_source(sd);
 	if (!rkisp1->source) {
 		dev_warn(rkisp1->dev, "No link between isp and source\n");
 		return -ENODEV;
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
