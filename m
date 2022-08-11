Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86A01C25B0C
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Aug 2022 15:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzusVUqd2UFGKHYIVsxoZENfWN35dpALC2BFvoNoNYE=; b=DR7MuA184cAZLO
	7RwqsdnKf19uPHb2j0iJ/d56U4JCurvOsWP/jwR1kohCoPZFiIX3qZWGAIyjc1ujr47oTR3bpy4fZ
	2cjjDYa2cCzA37ymBFflbW7wi9x+oKGN7GkiucFc5nrIQ1fLUlmNmzIq0htZNrn0i/T5WW73Iai9Y
	RgUzEqBsm2NBMbeJq3Gle1UXxmKUggURUX5ul8vI0L2O2RdGgARGZFP0hwxzk0jOn3gT+zASZg02n
	qISbu3ohpYTcnohOwhhclP3D58nm55B2/a1mvXSaBjETkUIBRG8lhu7aHcqYq/Kitjj5fwIdWVCJV
	fFTG4r70dWnesX55w8EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMAVN-00EQa5-8t; Thu, 11 Aug 2022 15:53:53 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMAUo-00EMBu-Gh; Thu, 11 Aug 2022 15:53:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 36E28B82166;
	Thu, 11 Aug 2022 15:53:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94D75C433C1;
	Thu, 11 Aug 2022 15:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660233195;
	bh=uBbdPrkQnNq5sVsrdMiCei9SdKxa/e8fnHqBZoUb4Oc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=b8+x2zWwzrPg/e7BO5kPuj5Uws498SaLtyzQPAfHSJGy7keJVxMGAuspCekjJgKfy
	 SeUzZlwOfgTGNJQJWJSll7yl0jYb7dZSaSW0T9oWkjF0sCHhDqs6NCrnHI+U0PhqKI
	 qj+UXqXm1pRybESiDsOsqMdG1XPXJiWAQG+iAIvJWpwKRzDqQEZeHxGSpIjGm4wTUU
	 ENlVRMXp4Iy2A5owLOmxxGhbJyofQ/tJ4HF1lRxt5jOOdJUcsSZUz+PQ6we/1qJT/a
	 Cnv2pi12bujKLSBx/2d7s7lrv9Ex+JGFcizp1YKJdOgddxxxuqFdYfMa726bUZ6fl7
	 7y5vbED04qNXw==
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
Subject: [PATCH AUTOSEL 5.18 66/93] media: rkisp1: Disable runtime PM in probe error path
Date: Thu, 11 Aug 2022 11:42:00 -0400
Message-Id: <20220811154237.1531313-66-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220811154237.1531313-1-sashal@kernel.org>
References: <20220811154237.1531313-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220811_085320_621321_CBA430AE 
X-CRM114-Status: GOOD (  12.42  )
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
index 3f5cfa7eb937..471226d95dbf 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -552,7 +552,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 
 	ret = v4l2_device_register(rkisp1->dev, &rkisp1->v4l2_dev);
 	if (ret)
-		return ret;
+		goto err_pm_runtime_disable;
 
 	ret = media_device_register(&rkisp1->media_dev);
 	if (ret) {
@@ -572,6 +572,7 @@ static int rkisp1_probe(struct platform_device *pdev)
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
