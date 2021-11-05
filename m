Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FF2CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:50:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D0E0560C51
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:50:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D0E0560C51
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuaEYsfQOqGvjADz7N9euRWNQsxZa5JXlNaAVBhNgsc=; b=vTEKeLstHT9rRK
	B7s+2rPEuFlHl0tubyrqbPQTHqW/j6qY2G2J2Y+CaeqODsKcbaOPt+rWgrWgH1oL6hnoy6LVW8HLw
	ZkXmGe9Ovxh8Q77l8lT/u5l38yZ0rcuxXtkRAU1SVydaW++F0VVJ/jKgbeRrU/Vyzsof6JjyqaFfl
	y8MjjU3SkiX56iADm5MESdjNaf1N5q7MhNQBdvjHHd+gwuOHTarf8aw/kahv8u0ye8gnvX/os6y/C
	WFrTH/1IP3BZwuWHt1cSv1QXbzy6xAbOdJkVndaiLGRHax8Eo1EzZ5JPF2bJpHN3s5yKQYwPpdgoe
	MUE/CPtSD9nZlhq2sUWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miyfm-00BKWI-Lv; Fri, 05 Nov 2021 12:50:22 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYr-00BGVm-L1; Fri, 05 Nov 2021 12:43:15 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="232139848"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="232139848"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="498356092"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga007.fm.intel.com with ESMTP; 05 Nov 2021 05:43:09 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id D409E931; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
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
Subject: [PATCH v1 16/19] pinctrl: st: Convert to use dev_err_probe()
Date: Fri,  5 Nov 2021 14:42:39 +0200
Message-Id: <20211105124242.27288-16-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054313_721563_E503C327 
X-CRM114-Status: GOOD (  13.45  )
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

It's fine to call dev_err_probe() in ->probe() when error code is known.
Convert the driver to use dev_err_probe().

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/pinctrl/pinctrl-st.c | 30 ++++++++++--------------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-st.c b/drivers/pinctrl/pinctrl-st.c
index bccde0b8f012..9cb0da88b098 100644
--- a/drivers/pinctrl/pinctrl-st.c
+++ b/drivers/pinctrl/pinctrl-st.c
@@ -1255,10 +1255,8 @@ static int st_pctl_parse_functions(struct device_node *np,
 	func = &info->functions[index];
 	func->name = np->name;
 	func->ngroups = of_get_child_count(np);
-	if (func->ngroups == 0) {
-		dev_err(dev, "No groups defined\n");
-		return -EINVAL;
-	}
+	if (func->ngroups == 0)
+		return dev_err_probe(dev, -EINVAL, "No groups defined\n");
 	func->groups = devm_kcalloc(dev, func->ngroups, sizeof(*func->groups), GFP_KERNEL);
 	if (!func->groups)
 		return -ENOMEM;
@@ -1555,10 +1553,8 @@ static int st_gpiolib_register_bank(struct st_pinctrl *info,
 
 skip_irq:
 	err  = gpiochip_add_data(&bank->gpio_chip, bank);
-	if (err) {
-		dev_err(dev, "Failed to add gpiochip(%d)!\n", bank_num);
-		return err;
-	}
+	if (err)
+		return dev_err_probe(dev, err, "Failed to add gpiochip(%d)!\n", bank_num);
 	dev_info(dev, "%s bank added.\n", range->name);
 
 	return 0;
@@ -1585,10 +1581,8 @@ static int st_pctl_probe_dt(struct platform_device *pdev,
 	int irq = 0;
 
 	st_pctl_dt_child_count(info, np);
-	if (!info->nbanks) {
-		dev_err(dev, "you need at least one gpio bank\n");
-		return -EINVAL;
-	}
+	if (!info->nbanks)
+		return dev_err_probe(dev, -EINVAL, "you need at least one gpio bank\n");
 
 	dev_info(dev, "nbanks = %d\n", info->nbanks);
 	dev_info(dev, "nfunctions = %d\n", info->nfunctions);
@@ -1604,10 +1598,8 @@ static int st_pctl_probe_dt(struct platform_device *pdev,
 		return -ENOMEM;
 
 	info->regmap = syscon_regmap_lookup_by_phandle(np, "st,syscfg");
-	if (IS_ERR(info->regmap)) {
-		dev_err(dev, "No syscfg phandle specified\n");
-		return PTR_ERR(info->regmap);
-	}
+	if (IS_ERR(info->regmap))
+		return dev_err_probe(dev, PTR_ERR(info->regmap), "No syscfg phandle specified\n");
 	info->data = of_match_node(st_pctl_of_match, np)->data;
 
 	irq = platform_get_irq(pdev, 0);
@@ -1695,10 +1687,8 @@ static int st_pctl_probe(struct platform_device *pdev)
 	pctl_desc->name		= dev_name(dev);
 
 	info->pctl = devm_pinctrl_register(dev, pctl_desc, info);
-	if (IS_ERR(info->pctl)) {
-		dev_err(dev, "Failed pinctrl registration\n");
-		return PTR_ERR(info->pctl);
-	}
+	if (IS_ERR(info->pctl))
+		return dev_err_probe(dev, PTR_ERR(info->pctl), "Failed pinctrl registration\n");
 
 	for (i = 0; i < info->nbanks; i++)
 		pinctrl_add_gpio_range(info->pctl, &info->banks[i].range);
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
