Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F529C19F2A
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Aug 2022 16:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2deflVniQq6hJgJiQUIwaDlICMFrJwmckqzQ8UA7w4=; b=RsPe9Cd5CSZhrj
	X/wvaktIq/5kLimbRPjmXWr42z3QXG1TTgzHCh17k5W13lWb4Z2BmZwfPX9wpKSXJ66VTnE9eNjn5
	UZ+dgo51c80d85VR9ZhIRIYn5rAcB2dHp9+80xzOfgVXz0Fb5iVGUE7aGBoH38LzEnbGmforntkr/
	5gZUYlCNUZWIP73PLqVmaTzxZ6g/4EnfJk3Lqx9UmQd8HJaUHrDUWhHJ8EzwJzWyvNi/eKr2I4IOu
	ey2m2T3Ocr+GoyGlGaMabP6q40MjMCv4cbqi1Dvjh8QdLQ1HzEzMeO/e2NZOK36h3p89qrnG3zUxQ
	iu/JScWuDoSW+hnDEhLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMAdv-00EdVH-Gq; Thu, 11 Aug 2022 16:02:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMAda-00EdAb-Jd; Thu, 11 Aug 2022 16:02:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0323761381;
	Thu, 11 Aug 2022 16:02:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01C33C433D6;
	Thu, 11 Aug 2022 16:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660233741;
	bh=BV8jj4uDtRkShNpde69E+aTS/tFXYjqy6nYKYoj5vrs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B8GU+AZK72+70tPLCON3fNdIHBnIFzv7jfaQ1wDfwdBQtnMBAI34ljr14tlQGcJsj
	 TuAr/rY/UjfMq/v4L0duEa+GFZlKS1iAVtOkaWXLneZHITlM2oMjM2S7xStw5tYwGd
	 Zq3z8I3iAs6A0k0qps4Or+nuShJ1MuZEiN9l85ShIAoG7vlR1QZwhg2sgrh/JUQD3J
	 +pgyxoyO2B16HixQbcTMXDaL+Ur50BUtV8YBNyI5syvjqB24x7vzbx+Xs6E7hsW5dY
	 Ercx/sGTfdmwgxwHGGMjoFUmCbpR2eQt4Le9V+dA6X3y1a5Uwc9oiOTYy5SElRet0h
	 GLFy+iTHk8Ylw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 53/69] media: rkisp1: Disable runtime PM in probe error path
Date: Thu, 11 Aug 2022 11:56:02 -0400
Message-Id: <20220811155632.1536867-53-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220811155632.1536867-1-sashal@kernel.org>
References: <20220811155632.1536867-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220811_090222_758553_989B17A7 
X-CRM114-Status: GOOD (  12.52  )
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

[ Upstream commit 13c9810281f8b24af9b7712cd84a1fce61843e93 ]

If the v4l2_device_register() call fails, runtime PM is left enabled.
Fix it.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 560f928c3752..79cfa99f2a64 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -514,7 +514,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 
 	ret = v4l2_device_register(rkisp1->dev, &rkisp1->v4l2_dev);
 	if (ret)
-		return ret;
+		goto err_pm_runtime_disable;
 
 	ret = media_device_register(&rkisp1->media_dev);
 	if (ret) {
@@ -534,6 +534,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	media_device_unregister(&rkisp1->media_dev);
 err_unreg_v4l2_dev:
 	v4l2_device_unregister(&rkisp1->v4l2_dev);
+err_pm_runtime_disable:
 	pm_runtime_disable(&pdev->dev);
 	return ret;
 }
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
