Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9259C54E41
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 15:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bgDrZIs4330Rx8B0Jsd6NOJ2wWboI6z1+kuCsyvx+Ps=; b=O44wfdMa4vA5lr
	2eT9h/GUx98Wm4XhTGqmTnWquv0XUzZVFDGYSrRNxL/D93YRxenDY8xLshdu6rDtEAbGV/5NBRnPo
	SWdhdcDtL5FcQLMErdENsSCtIAdXYxvPaBU0Ylu+i65oj8CL0ZC9tlJv17Sm5CqzFpHjDIaZGL05U
	FFT3UqC7Madkx8JgZhmvaaZ/9p5bQNlY2AJm0izdW4E6Vc0lOd3hbDQzd0r6dsn/cs1ioCow/RmFW
	pTAHmUg6+Zip+Dhsa6cxm58dCFpr6kA6CwamZ7RGEr5/lHkZdPVe3aWnZlBYJoPCav0ii5bIVebkI
	AVHFOnBMFitJNHGRkhTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfigY-0000000E8De-0Ukc;
	Thu, 29 Feb 2024 15:51:02 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfig8-0000000E7yx-3wfI;
	Thu, 29 Feb 2024 15:50:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2AB95CE0229;
	Thu, 29 Feb 2024 15:50:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80EDCC433F1;
	Thu, 29 Feb 2024 15:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709221834;
	bh=8A546/n7jgq6mRsKQpZaS+4lWC8QWDJzykAsB1qA71o=;
	h=From:To:Cc:Subject:Date:From;
	b=gDX3JzBC9vzvzRRRgA3MZew8xOjDkt8WQYdE4ALUyRWc7nTXSbvQAPnrnR/uL64Sl
	 /MGrWDUsK+fnhxqLVnmgerli0xUW7/2+keWt/lgGP0lo1cgPE/RCPgo+r01WhlrsEe
	 EfXxqKgzD+GN5/Hm04PyMy4TXAIhEZfnCQa6YoyMBuRAVXbB7Dw+7OEnvzXeR2CP0h
	 AY7P65Fla5auHn0hp9pxs3FkyJ/fZQ2BPGlGjamUJF9gQmvI/LNle0b1yC9kBlA8uh
	 HMD6swzQSszfQaym/cWA/Elq2y5C44eos1dqetpBnT/T/8eieWk7aucN0ge2QY/4gj
	 eifG8lL0kSeOA==
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
Subject: [PATCH AUTOSEL 6.1 01/12] media: Revert "media: rkisp1: Drop IRQF_SHARED"
Date: Thu, 29 Feb 2024 10:50:18 -0500
Message-ID: <20240229155032.2850566-1-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.79
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_075037_462556_DE468BDC 
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
index aeb6bb63667eb..41abb18b00acb 100644
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
