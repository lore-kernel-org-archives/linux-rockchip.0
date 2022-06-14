Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BBD3CCA47A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnZPHR2CPC3VEyqC4wOuo4mKpLkpMOgZPY04NiCI1ww=; b=J8uj9HkFuy+OWa
	h9j7KtHWqtLMzMaCKdhcakPM1sBotgmnl+Zro0L3nW5vGL7IAYwpTXaZ6CeK9aPFX/jPLpTDlvr3F
	ho6ax9o+A+Kj7dT3jF+p/rY4hidh6iuMAyykLAoJgUfqdKQ9wA1gQRzn8exHFWSgT35tfHZ00IUju
	8Y2MBTRX09dZpYH7wbXmkQZp14XjETsHsCuYIrECFTJYSdmZXrBmJxYPIn7lhSXxvZKmBnhNo5dj0
	0KJrByOlwmwunGZJ7uA0UNM4DPAis6mw3hkgJoxMxYqq7u4y7+LAiV5IbW87P3nP4X/e1Fw49Zktt
	snAEwNc7pXTYv9ild5pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bya-00Atmn-So; Tue, 14 Jun 2022 19:13:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1By6-00Atb8-HQ
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:51 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C8AF79E5;
	Tue, 14 Jun 2022 21:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233969;
	bh=KtK5dwW377NvXzCNP1bIxdNyOb6odWD4AMbMsOvO2T0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F086lYTvRWB6k/opHq61tQXg7462fUbFxUwgm6DYGzMcrgFR8OLYx6Y5+O0GEv8A3
	 F2rkRClcVK12GQoPl8jyvOaDYNrjuyY9TckZERO5Jn6EQ+EypbGqUhuHSmjuvG2gvo
	 i5e0AI/bUY1CcNXNvIYsUwGkakHxAJUkZQFrOUqw=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 15/55] media: rkisp1: Rename rkisp1_subdev_notifier() to rkisp1_subdev_notifier_register()
Date: Wed, 15 Jun 2022 04:10:47 +0900
Message-Id: <20220614191127.3420492-16-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121250_763842_EC9544E0 
X-CRM114-Status: GOOD (  10.23  )
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

The function name isn't very clear, rename it to
rkisp1_subdev_notifier_register().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 7bb1235cddea..386c1c17aec2 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -176,7 +176,7 @@ static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops =
 	.complete = rkisp1_subdev_notifier_complete,
 };
 
-static int rkisp1_subdev_notifier(struct rkisp1_device *rkisp1)
+static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 {
 	struct v4l2_async_notifier *ntf = &rkisp1->notifier;
 	unsigned int next_id = 0;
@@ -358,7 +358,7 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 	if (ret)
 		goto error;
 
-	ret = rkisp1_subdev_notifier(rkisp1);
+	ret = rkisp1_subdev_notifier_register(rkisp1);
 	if (ret) {
 		dev_err(rkisp1->dev,
 			"Failed to register subdev notifier(%d)\n", ret);
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
