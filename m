Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE4BFC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 08:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OATgVaBqaZNKmM9aexUIW5O+v6Zlh90w4whV3swNm/w=; b=oldBYnb8yxU8jN
	RhqrEA4cRP1QZEBerXj4pre7eLvG3QtnLs2OA6zgGuabP6zMOgUXDhs12RPdic39/b71+ma4pdKp9
	5Fwk3nDFAQNSpNUNZm0nzlNtLsbIHboxPkta3zvmE+HC3IKvRQv5erfyhF/GFfqCTj6LaXmzmR31Q
	UXdnkMCUTWWkThodfHTekK/Hi4m56QGIwSM0eYtK+1AQcFiLJfevOV8GJLeZqpIxjlNSVODrtNp6o
	MJeEkWsP6+9aP5+ZTZugWEvHk5oGu23+/3R20ss25a3/8TGXHaUHN8plg1lZgBSojsPZcuT+dCUJQ
	WFKc8TCH0bAFMT/GozgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovaWR-00BmJp-A8; Thu, 17 Nov 2022 08:45:23 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovaTv-00Bkox-AS; Thu, 17 Nov 2022 08:42:49 +0000
Received: from pyrite.tail37cf.ts.net (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 52BF3929;
	Thu, 17 Nov 2022 09:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668674560;
	bh=6nANnb2tFZVVVLtK7LKX6bWvaoeBArVUuO1Oxpluxjw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qIqpC4iqosbPtJ42CZ0+8TDCR/xAc5Bg9iIbqjt6rDSt9L0NYTuDgKsbozKFZa1oW
	 h30+EW4tqG0NkHlE+TIghUNVV57nYgEmQHaV46ua/S+OygY6mN9M03y8OPPk5Lwwap
	 4w7k9MZriguUkJouFkUB+PD9Kdno9kgbLogvrbLI=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 2/3] media: rkisp1: Make local immutable array variables static const
Date: Thu, 17 Nov 2022 17:42:16 +0900
Message-Id: <20221117084217.3892680-3-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
References: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_004247_529588_6A0C4E1F 
X-CRM114-Status: GOOD (  11.56  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The max_widths and max_heights variables in rkisp1_try_fmt() are
immutable and don't need to be allocated on the stack every time the
function is called. Make them static.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 7695ef134908..91e685fdbbe9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1150,13 +1150,17 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
 			   const struct rkisp1_capture_fmt_cfg **fmt_cfg,
 			   const struct v4l2_format_info **fmt_info)
 {
+	static const unsigned int max_widths[] = {
+		RKISP1_RSZ_MP_SRC_MAX_WIDTH,
+		RKISP1_RSZ_SP_SRC_MAX_WIDTH,
+	};
+	static const unsigned int max_heights[] = {
+		RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
+		RKISP1_RSZ_SP_SRC_MAX_HEIGHT,
+	};
 	const struct rkisp1_capture_config *config = cap->config;
 	const struct rkisp1_capture_fmt_cfg *fmt;
 	const struct v4l2_format_info *info;
-	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
-					    RKISP1_RSZ_SP_SRC_MAX_WIDTH };
-	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
-					     RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
 
 	fmt = rkisp1_find_fmt_cfg(cap, pixm->pixelformat);
 	if (!fmt) {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
