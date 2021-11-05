Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3046C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:45:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8DF8C611EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:45:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8DF8C611EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lni9IM/Bn3qA10qrc7JlQWnYxNjAJ0K1N9FpUtfYHEQ=; b=Dq7ANMKS/8mimC
	0C9Tg/9TPeSML6Z8rx5yaLBJbNEDAYzls3/JzOB5qTEOqV23hVwI0PGwUo2OoWUBFQu7mOYrJxjtK
	k2mUi03Ys/XIS0+9eJmtDeoI+yJ5d3HE6LAfL8MUKWAx6Oblx80sm6KguoaYgzgHMUvwH4mdObSNI
	tIOOAMFjL0R7yNUQPOVqIZq9rcB+UggTdErSlfsII3Wd5vV+En+hP1ZIQrzsdM9Nz1wJF7NeCKqbv
	gS9l6MSBQ4VHiTeXu83DQZJuuMQIiCDE2onjUGo/aIgQ4Zq21oCwe8kAiLU8YsZeIAxi6thqhFCsw
	VjHC2BkAsPTa89wMF99g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miyaZ-00BHVw-Rt; Fri, 05 Nov 2021 12:44:59 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYo-00BGUD-Es; Fri, 05 Nov 2021 12:43:11 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="255539415"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="255539415"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="501921085"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga008.jf.intel.com with ESMTP; 05 Nov 2021 05:43:05 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id C9C8D904; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
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
Subject: [PATCH v1 15/19] pinctrl: st: Make use of the
 devm_platform_ioremap_resource_byname()
Date: Fri,  5 Nov 2021 14:42:38 +0200
Message-Id: <20211105124242.27288-15-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054310_547555_CEDC61B9 
X-CRM114-Status: GOOD (  12.44  )
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

Use the devm_platform_ioremap_resource_byname() helper instead of
calling platform_get_resource_byname() and devm_ioremap_resource()
separately.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/pinctrl/pinctrl-st.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-st.c b/drivers/pinctrl/pinctrl-st.c
index f592e9ad93fc..bccde0b8f012 100644
--- a/drivers/pinctrl/pinctrl-st.c
+++ b/drivers/pinctrl/pinctrl-st.c
@@ -1583,7 +1583,6 @@ static int st_pctl_probe_dt(struct platform_device *pdev,
 	struct device_node *child;
 	int grp_index = 0;
 	int irq = 0;
-	struct resource *res;
 
 	st_pctl_dt_child_count(info, np);
 	if (!info->nbanks) {
@@ -1614,16 +1613,12 @@ static int st_pctl_probe_dt(struct platform_device *pdev,
 	irq = platform_get_irq(pdev, 0);
 
 	if (irq > 0) {
-		res = platform_get_resource_byname(pdev,
-					IORESOURCE_MEM, "irqmux");
-		info->irqmux_base = devm_ioremap_resource(dev, res);
-
+		info->irqmux_base = devm_platform_ioremap_resource_byname(pdev, "irqmux");
 		if (IS_ERR(info->irqmux_base))
 			return PTR_ERR(info->irqmux_base);
 
 		irq_set_chained_handler_and_data(irq, st_gpio_irqmux_handler,
 						 info);
-
 	}
 
 	pctl_desc->npins = info->nbanks * ST_GPIO_PINS_PER_BANK;
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
