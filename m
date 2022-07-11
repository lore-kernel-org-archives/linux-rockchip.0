Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C4CCCCA47B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UifYYErbAr2uTwxcLr8DTSw9Pt9j94WU5vEcLKFERM=; b=k5TwY58qfQdTsK
	+89w2xF2f13BEbfqL3/vgaL/GwEF7Fp7b1XBprt89yUlKAG/TNI3KwcnNG0GxAW0zaCPvQ+E1Ngll
	8bEz/BOcObagzAh++j7t9ciZ+a1b+umD4nF9hkk1d2koBE8sLcnckHsxlszlNvwJr/Bd8frX6rdj6
	zIRGD7uSMX1S/ai/HxiY2F5RfqWv+ZJdo7+OmEdBd2n+KOOsuZMlv3j10yXUjr9SdfbEovQeZKNrq
	HOV2WhjDe5rTtSREK9cmwPhQTeStGsVS4TGi7aAAJGMy8Mu2gp4JsEDh40ATHXLQ+rL/81d9GX0VM
	Laigmf2qulo5fimvE+tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsxV-001ezX-Qc; Mon, 11 Jul 2022 12:56:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsl3-001Y4R-DN
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:27 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B385A1A6C;
	Mon, 11 Jul 2022 14:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543403;
	bh=TO87x4/UQ0HOo0JMPn192z/08b9hafxddEW4oWgrS4o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OdCVF0DsYrVKpWnIFBYiDDy7s7ZBkOzhJB1EA1emXXULsil660Ocme7A4b/Rj4ro3
	 +LJTBXxBP9SlZE/AgCfhblDL0yRaftXTrHQItrQFX530Weqcz4iI7B0pxbT0zUPt9v
	 3/yv92bzfCrGsbAd+o2nL9iTuLSqkoRTLAvQz6do=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 06/46] media: rkisp1: Disable runtime PM in probe error path
Date: Mon, 11 Jul 2022 15:42:08 +0300
Message-Id: <20220711124248.2683-7-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054325_662292_9046DE91 
X-CRM114-Status: UNSURE (   8.89  )
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

If the v4l2_device_register() call fails, runtime PM is left enabled.
Fix it.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 97d569968285..248f0172ca62 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -523,7 +523,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 
 	ret = v4l2_device_register(rkisp1->dev, &rkisp1->v4l2_dev);
 	if (ret)
-		return ret;
+		goto err_pm_runtime_disable;
 
 	ret = media_device_register(&rkisp1->media_dev);
 	if (ret) {
@@ -543,6 +543,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	media_device_unregister(&rkisp1->media_dev);
 err_unreg_v4l2_dev:
 	v4l2_device_unregister(&rkisp1->v4l2_dev);
+err_pm_runtime_disable:
 	pm_runtime_disable(&pdev->dev);
 	return ret;
 }
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
