Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BBC4C48BF6
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 15:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cJsy3e0y0vDmUre+W4TeQ7b4/JtmtTwWyoBxS1+pA8E=; b=cHySYI9jz8Oire
	l+zhNiwLqioGpLXhFMhyN/Xb/6GwnxuaOeNRgtd02YKotq/zwCb+GbFIJGWvxVnOMluDwngPSXn2c
	UYsxcIIzytip3shQz0ee8AiK3a8Gld/7WWhH8mjdAAiIiIcOoVRiOQAM3nrI4lueZVs5UApEztPUT
	sfWH5CvxHFktXWjeupxHPp7vgFXKIhX4n1IUGtd0atvFD0nxCOY+N46gtSnm2n3cyl4k0fM2pCAcD
	JCN2t8TALnJGc9iwQ34h99xxn3C+sylJ3uHi2k6ZFv0yAkMNayvl/MgjMIvQm8YAFjHpd8YR3+PXV
	ug6BDrCIZ+v6JCPLmY9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfifX-0000000E7Z0-2cPH;
	Thu, 29 Feb 2024 15:49:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfifN-0000000E7Rd-0PVc;
	Thu, 29 Feb 2024 15:49:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7ECD261129;
	Thu, 29 Feb 2024 15:49:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A39ADC433C7;
	Thu, 29 Feb 2024 15:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709221788;
	bh=WjyUUH4IyA8kfmC6HN4ybuY6b7RS7b5tdCPSoD9L/Bk=;
	h=From:To:Cc:Subject:Date:From;
	b=t/1NhnRDEz+m+mps36X0hOseC+DJOSA++I5U8nRDkc6/I4VDZoSk5dAnBzeYZmp0h
	 SeHP++XE8Z1K0Eydmlbv2umUjr1SwrrLkaOFvNF4vLzBvdA4TLyFOFizRosVlzq7jH
	 WZ9HGejqsrdtBjnq5AgBVQGByuu8VUh88zoEj7lcNXvZsnNMGcocdmqjyHdvStDwzv
	 51aQax1Jpz0Khvg+hQ4CQe2ypa0CrbcefEFGC3/ks1X2uefOk66bQDnwG66Y4txNwK
	 BQC8u0CZNyDEEvgGrxILer3NiuSOv/EchFXzJLMXPV3IQMHFwO5W6PQwRoBt8iVj2W
	 EHY6P8HXgEF3Q==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dafna@fastmail.com,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 01/21] media: Revert "media: rkisp1: Drop IRQF_SHARED"
Date: Thu, 29 Feb 2024 10:49:21 -0500
Message-ID: <20240229154946.2850012-1-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.18
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_074949_197485_84BA3383 
X-CRM114-Status: GOOD (  11.44  )
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

From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

[ Upstream commit a107d643b2a3382e0a2d2c4ef08bf8c6bff4561d ]

This reverts commit 85d2a31fe4d9be1555f621ead7a520d8791e0f74.

The rkisp1 does share interrupt lines on some platforms, after all. Thus
we need to revert this, and implement a fix for the rkisp1 shared irq
handling in a follow-up patch.

Closes: https://lore.kernel.org/all/87o7eo8vym.fsf@gmail.com/
Link: https://lore.kernel.org/r/20231218-rkisp-shirq-fix-v1-1-173007628248@ideasonboard.com

Reported-by: Mikhail Rudenko <mike.rudenko@gmail.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index f96f821a7b50d..acc559652d6eb 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -559,7 +559,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 				rkisp1->irqs[il] = irq;
 		}
 
-		ret = devm_request_irq(dev, irq, info->isrs[i].isr, 0,
+		ret = devm_request_irq(dev, irq, info->isrs[i].isr, IRQF_SHARED,
 				       dev_driver_string(dev), dev);
 		if (ret) {
 			dev_err(dev, "request irq failed: %d\n", ret);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
