Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36F67CCA47B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Pyh48Cab6TeURD00QwmOE9hGra9SiKnB7Zj02D8Dww=; b=ncDlkyL1Y+NtQA
	lYJSzr+x4BAb4gPY3sVlzAcHrGkhVCB7q0IRvzFTID9mf8dPBBYneoCJkS9qx4gBtJ2t0i+GRkNLt
	a/BQr4HnL674T+A/e9r/RyuEhmdB4zKu9q2UENSuNR3/bVmmXrU+9MV0nDOrk8sE2Qct8IbrXQLQy
	eJE1goKwTM5V1bFgdD8p2xANmXEzCTIHctaiUfYOe4uMy6JMLex5840mpyqhRCQtilDouvBOLaXrL
	UvIVqiBsN3AdsnIEP/4b4iqYo7piST2T4LzUpoXhA0JBeOKGDhkjECVxiMge2El5nhPfBKYn9tHn/
	AE7cm/1+goGmBKOmLBWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsyL-001fmB-He; Mon, 11 Jul 2022 12:57:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsl9-001Y9M-Fb
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:33 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 80D7F21DD;
	Mon, 11 Jul 2022 14:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543409;
	bh=YRJPm4p7YJMmDOw0V6pyRB6tZHXiaMbZRoiaQDsvi6k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ht7mKpW5QR75gSWM/z3DAsB3jw6In3TI/w7fChetO3VxeiXzhpgCBxC6yyI2DYbyv
	 AiTgWqPLwumVPr7CEDf0NF6p2o2uCUTdr3+1y3LZiDFfQKxOF78iwfB/JMbphTedaQ
	 t+1cgLJMI2Y3imAlmH3qHyfPCacMIfZmgrdTrpZc=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 17/46] media: rkisp1: Rename rkisp1_subdev_notifier() to rkisp1_subdev_notifier_register()
Date: Mon, 11 Jul 2022 15:42:19 +0300
Message-Id: <20220711124248.2683-18-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054331_730642_5300FBC1 
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

The function name isn't very clear, rename it to
rkisp1_subdev_notifier_register().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 4400dc0117a5..2e68f35e8ea5 100644
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
