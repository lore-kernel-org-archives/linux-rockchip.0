Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6F31C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:46:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85E9560F21
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:46:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 85E9560F21
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYFZ3Y3pecUMq3LOHTxxq2OFhygRqGUcLYGb0wtMzOE=; b=D4uPtVzhw9Lrgv
	B0AHNt46JQOeHuVTxtLc0/tkcjhd3jbkTLO75pc3R3ms10ZtYpbwtO333ax0uYNxwGkDqb+Ecq2jW
	Cws4K44G13MnHZl0tAExPKnGuDI0NCZ1hwvCUS+Iy+raemcHIvBYp0odON7YsGZ5+8QVi5B8gGlHI
	eHioZH2HZjWfPfM/wpRKkuysrfqCGa8f3waQvwH8kJAguD2j9Wog1b5Mc+AjJTkFjTLe+BJ6n5pXf
	QH8zjcu2HP04tXvtYF0+6DIi1Ry6v9OjVWSWAQyvh0MOmGe0lAf8bnCd3H1/bygwLXu9fiHlxIYr+
	CJIebrm1lBm7+W7ma6bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miycQ-00BIix-7E; Fri, 05 Nov 2021 12:46:54 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYp-00BGUD-Pg; Fri, 05 Nov 2021 12:43:13 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="255539420"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="255539420"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="490310817"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga007.jf.intel.com with ESMTP; 05 Nov 2021 05:43:05 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id A3A167AF; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
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
Subject: [PATCH v1 12/19] pinctrl: armada-37xx: Switch to use
 devm_kasprintf_strarray()
Date: Fri,  5 Nov 2021 14:42:35 +0200
Message-Id: <20211105124242.27288-12-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054311_897785_C834804B 
X-CRM114-Status: GOOD (  15.77  )
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

Since we have a generic helper, switch the module to use it.

As a side effect, add check for the memory allocation failures and
cleanup it either in error case or when driver is unloading.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index f48745c43419..08cad14042e2 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
@@ -23,6 +23,7 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
+#include <linux/string_helpers.h>
 
 #include "../pinctrl-utils.h"
 
@@ -951,6 +952,7 @@ static int armada_37xx_pinctrl_register(struct platform_device *pdev,
 	struct pinctrl_desc *ctrldesc = &info->pctl;
 	struct pinctrl_pin_desc *pindesc, *pdesc;
 	struct device *dev = &pdev->dev;
+	char **pin_names;
 	int pin, ret;
 
 	info->groups = pin_data->groups;
@@ -969,11 +971,14 @@ static int armada_37xx_pinctrl_register(struct platform_device *pdev,
 	ctrldesc->pins = pindesc;
 	ctrldesc->npins = pin_data->nr_pins;
 
+	pin_names = devm_kasprintf_strarray(dev, pin_data->name, pin_data->nr_pins);
+	if (IS_ERR(pin_names))
+		return PTR_ERR(pin_names);
+
 	pdesc = pindesc;
 	for (pin = 0; pin < pin_data->nr_pins; pin++) {
 		pdesc->number = pin;
-		pdesc->name = kasprintf(GFP_KERNEL, "%s-%d",
-					pin_data->name, pin);
+		pdesc->name = pin_names[pin];
 		pdesc++;
 	}
 
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
