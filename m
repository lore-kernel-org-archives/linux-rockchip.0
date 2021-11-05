Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93873C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:47:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 55E0C603E9
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:47:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 55E0C603E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQyClWoW1gYC2v7BDa1Fo1aSTRR2arSQl/jY721UZrA=; b=mCCK8Qlactzfec
	+I+fSKTkyoi55yukakedc0obtOlOE5gpVA3TcaNQInxUy9D8UiyxWcd0oXNS2lzVdT0zKykcM9ljN
	rhb8sVnCgIn8mKJ7kHoNXYsekXvGera19UUCL+Zdi84aAyXVGdkQTfV9bHhg1/e+O/0NmsTP9hMo3
	eQexlQWdMg1vAUmOXjgdfL4phZNIU5LJa6UuR1PZcLsVeDtkUhZy1kYF4UxtGfTuiIQ7pgK0DX7Ue
	PKijjicdvpeHESsOY4peXLlmy1kafDApEYY5PIZPBE54NQhXFh2F9pmmCkX7bBZMoOzp7sh+zg6xz
	/YPr+SoNzRmsGAbGr0VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miycr-00BIyz-CW; Fri, 05 Nov 2021 12:47:21 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYp-00BGW6-R9; Fri, 05 Nov 2021 12:43:13 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="211941088"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="211941088"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="542718192"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 05 Nov 2021 05:43:05 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 89BCA69F; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: [PATCH v1 10/19] pinctrl: armada-37xx: Make use of the
 devm_platform_ioremap_resource()
Date: Fri,  5 Nov 2021 14:42:33 +0200
Message-Id: <20211105124242.27288-10-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054311_966510_023670B6 
X-CRM114-Status: GOOD (  11.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Use the devm_platform_ioremap_resource() helper instead of
calling of_address_to_resource() and devm_ioremap_resource()
separately.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index 37f92dc54d7a..282b3fac3bec 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
@@ -727,7 +727,6 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
 	struct gpio_irq_chip *girq = &gc->irq;
 	struct device *dev = &pdev->dev;
 	struct device_node *np;
-	struct resource res;
 	int ret = -ENODEV, i, nr_irq_parent;
 
 	/* Check if we have at least one gpio-controller child node */
@@ -750,12 +749,7 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
 		return 0;
 	}
 
-	if (of_address_to_resource(dev->of_node, 1, &res)) {
-		dev_err(dev, "cannot find IO resource\n");
-		return -ENOENT;
-	}
-
-	info->base = devm_ioremap_resource(dev, &res);
+	info->base = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(info->base))
 		return PTR_ERR(info->base);
 
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
