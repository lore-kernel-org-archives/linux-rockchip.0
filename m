Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73401C6FA8B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 10:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQmAd7CI37HF3RFZCHuq+28rccY+QWTnoQUKDZaa6Q8=; b=NhG5WrZlycp8fq
	cnBzxTvLsZFYkUuYRu6AJZMm/e66QrIhIlJcmVkNP1Ga13LCnzDFtzPetkFGY89oAtdDmol6qB5rs
	yl1Bpiy2E8TGR+mmRtoV6wPexWvEyuVVQHPoQLuyUnQmyJpDzg72OYlFeaV+6iY3Io9w04idXWUR3
	YcWM5IUM7D7Y0wtY7dU1tDwudL6BLr5i3xlNr4RLUwatNco04f5YxMk4NOiy2dfaMdYMI8PKi4o07
	4uHCLsLKhFSWZrkOmfbQCvWTAzU1Fz/nlgQVqV84Foglzmsz0AnQmONsjvMRgdFxMvL3M55ZIghNt
	SltPE9f6FpXEyCE51Dbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXI-002yNM-Hb; Tue, 20 Sep 2022 10:31:28 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaX5-002yHa-LZ
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 10:31:26 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 88F27280B5E;
	Tue, 20 Sep 2022 18:31:11 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de,
	brgl@bgdev.pl,
	andriy.shevchenko@linux.intel.com
Cc: robert.moore@intel.com,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	lenb@kernel.org,
	rafael@kernel.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 02/20] pinctrl/rockchip: populate GPIO platform early
Date: Tue, 20 Sep 2022 18:30:50 +0800
Message-Id: <20220920103108.23074-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920103108.23074-1-jay.xu@rock-chips.com>
References: <20220920103108.23074-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSkpOVh5PQ0xPTUxJSUlOSFUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktPSElVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTY6Djo4Fz0qTRw2VgsuLyxI
	TDJPFChVSlVKTU1ITU1CQ0xJSUtOVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlOSks3Bg++
X-HM-Tid: 0a835a73a4c42eb1kusn88f27280b5e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033118_690888_08378317 
X-CRM114-Status: UNSURE (   8.61  )
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

It is better to register GPIO devices before pinctrl device, so move the
populate GPIO platform early before pinctrl do really probe.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index a91061f9c2ac..25633c7b4244 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3302,6 +3302,10 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	if (!dev->of_node)
 		return dev_err_probe(dev, -ENODEV, "device tree node not found\n");
 
+	ret = of_platform_populate(np, NULL, NULL, dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register gpio device\n");
+
 	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 	if (!info)
 		return -ENOMEM;
@@ -3360,10 +3364,6 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, info);
 
-	ret = of_platform_populate(np, NULL, NULL, &pdev->dev);
-	if (ret)
-		return dev_err_probe(dev, ret, "failed to register gpio device\n");
-
 	return 0;
 }
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
