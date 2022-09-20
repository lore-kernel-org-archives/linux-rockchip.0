Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43218C6FA91
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 10:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kEnQqD34XxaoBgYau7nFObg3hzKstGHsLXacJ6xuz64=; b=lfJvNlop/J7Pwx
	75oVsrhKF66aW/x8ZIcYpzgFRxDjBHpjiZ2sGshFpRinyZqWBbJQZCtOdPROOiGc5YetyZN8UKDol
	NAA5+oYlO0fv60mNmlPnI4QX6hTTt1lGO5wUAdh+UKYIdoRt5anZmT82Ph09n1gWmg23Cr+HtAiEW
	l8fordaaTRy3RFYLRb/yjxKHxRh+zX4umixIOzav6iQG01hLz82d1pxsuDUbT2F3PRf3wEnY+4q7x
	1WZ5zGflWyeGB7GeFr3T2GEeuE3ZvM7mXWAwffn5uaY4uVbd8i5ANUJz1tCRhBIBz8flsCyzcpuO/
	yt9FeUEXz47Nj7IfF7Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXS-002yXn-AR; Tue, 20 Sep 2022 10:31:38 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXH-002yLS-Tu
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 10:31:29 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id A4626280B8F;
	Tue, 20 Sep 2022 18:31:13 +0800 (CST)
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
Subject: [PATCH 05/20] pinctrl/rockchip: of_populate_platform for gpio only for of node
Date: Tue, 20 Sep 2022 18:30:53 +0800
Message-Id: <20220920103108.23074-6-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920103108.23074-1-jay.xu@rock-chips.com>
References: <20220920103108.23074-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDHk4ZVkxKQh4aGRlOS0lIT1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PQg6SSo*ST0hDBxPLQsSLyEs
	Kz0wFElVSlVKTU1ITU1CQ0xPSEpCVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlPSUs3Bg++
X-HM-Tid: 0a835a73ad052eb1kusna4626280b8f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033128_144672_AE979FD0 
X-CRM114-Status: UNSURE (   9.51  )
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

As the of_populate_platform named with prefix "of_", it should be done
only when the of node is exist.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 8f102f327af8..42aa3552417a 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3296,12 +3296,11 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	void __iomem *base;
 	int ret;
 
-	if (!is_of_node(fwnode))
-		return dev_err_probe(dev, -ENODEV, "device tree node not found\n");
-
-	ret = of_platform_populate(np, NULL, NULL, dev);
-	if (ret)
-		return dev_err_probe(dev, ret, "failed to register gpio device\n");
+	if (is_of_node(fwnode)) {
+		ret = of_platform_populate(np, NULL, NULL, dev);
+		if (ret)
+			return dev_err_probe(dev, ret, "failed to register gpio device\n");
+	}
 
 	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 	if (!info)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
