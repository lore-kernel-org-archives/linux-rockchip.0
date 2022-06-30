Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0FC5C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6if4HKSj4jc/M8fiegA00lJP42pTzmbmfVbxPeFeMI=; b=l4bpXgSK+cQ2Az
	ob1HswiQgZLvwIvZLY5mKqiJkGVLQW/rVR2gB5Ptn5vKnjBxThqqPHw4Y0nFTpVKhhd1LmamZchwb
	d7MvdyNdN1ZzqWR00KlkTNw7k0M+6kxOIgXx24Bjn2/HGYHToYjTPraflR8ahw71XKmVuBEK7lvDD
	/24jUaV51xZ8yIhI/4IBC0pSugk6aQXBK4xpjXwUf2iYHAQYdQ59+jn/qHjGSD0frTJ8BQJ3nBk5q
	fKGCbqb9FFl0teIepDwQKVPpDmo9uUXknuzqMmrzuO4rpP4XfqycA8qE2zH29RJ9ytRMQX6Zu34Wc
	qQ3S14E1HUHg4whgcRwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gw-0020ik-Ki; Thu, 30 Jun 2022 23:08:30 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GT-0020On-KI
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:14 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C9ECB29F3;
	Fri,  1 Jul 2022 01:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630480;
	bh=vM+Q5vUk3nCD2h953d/yNGgWUWEpVhZ4V2w1vUhHO6U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EH7rexm0Wd2yv/QAYR+xWO/A+mCRWceabWjGSG+Cjcsy/qqCEoPvHgQd0YC+oWoJo
	 w2tMlLHWvYsJ+Epm7X5ggtmOvJ4C8GncKY74Yo9LURkOiDw5rO9aUtOJFuTSRRbBwJ
	 bwNwvfEoFrj2KlXuzwWhOPEjc1+UwqhTMKrTZB3g=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 35/55] media: rkisp1: isp: Fix whitespace issues
Date: Fri,  1 Jul 2022 02:06:53 +0300
Message-Id: <20220630230713.10580-36-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160801_858501_020D645F 
X-CRM114-Status: UNSURE (   8.54  )
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

Add missing blank lines after variable declaration blocks, and fix
indentation issues.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 53f0516594ef..944d7bfa9b41 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -79,7 +79,8 @@ rkisp1_isp_get_pad_fmt(struct rkisp1_isp *isp,
 {
 	struct v4l2_subdev_state state = {
 		.pads = isp->pad_cfg
-		};
+	};
+
 	if (which == V4L2_SUBDEV_FORMAT_TRY)
 		return v4l2_subdev_get_try_format(&isp->sd, sd_state, pad);
 	else
@@ -93,7 +94,8 @@ rkisp1_isp_get_pad_crop(struct rkisp1_isp *isp,
 {
 	struct v4l2_subdev_state state = {
 		.pads = isp->pad_cfg
-		};
+	};
+
 	if (which == V4L2_SUBDEV_FORMAT_TRY)
 		return v4l2_subdev_get_try_crop(&isp->sd, sd_state, pad);
 	else
@@ -893,8 +895,8 @@ static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
 	struct v4l2_event event = {
 		.type = V4L2_EVENT_FRAME_SYNC,
 	};
+
 	event.u.frame_sync.frame_sequence = isp->frame_sequence;
-
 	v4l2_event_queue(isp->sd.devnode, &event);
 }
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
