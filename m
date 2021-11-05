Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4298DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:45:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1308B60F21
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:45:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1308B60F21
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o81ta9oVaF2cSKKVRsY2AmVa0hYxAtoCxH+i7dmZ9vI=; b=KZ0FD5QmLRlgnx
	AryjWBmAP09yQwuaap7edWXd2nVSEnGGqhNMUqKhChUDYOAILp7XNiVnRnFGv5zuomxQNJOieeX/D
	53stzfyPpgCuyuH3qthRLpksJJ0hGl3sn6iCrMJbWCG1FB2ZvhvkUbrX41Gity/TVVLoofy/Y5rcJ
	3ASO9nScHvXsEqTmmlFbYJH+hgBgetVzohX7TlPdCsqlZKq/gJAm6yOLvFhlNmndV9m8nfkc00y0n
	OuKQz3Xoyueanc7yJl4wx0zAFeNlJhYVk9tYfGi5ase9+XHDdHMmPYRH0ZMpGZAnCiKMPKNQAkYc+
	HZAzV3yLS89LZvbBMZdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miybJ-00BI2p-TG; Fri, 05 Nov 2021 12:45:45 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYo-00BGWo-Rj; Fri, 05 Nov 2021 12:43:12 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="255539419"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="255539419"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="501921083"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga008.jf.intel.com with ESMTP; 05 Nov 2021 05:43:05 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 970FE74D; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
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
Subject: [PATCH v1 11/19] pinctrl: armada-37xx: Convert to use dev_err_probe()
Date: Fri,  5 Nov 2021 14:42:34 +0200
Message-Id: <20211105124242.27288-11-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054310_945159_0B2C3E47 
X-CRM114-Status: GOOD (  12.96  )
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
 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index 282b3fac3bec..f48745c43419 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
@@ -736,10 +736,8 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
 			break;
 		}
 	}
-	if (ret) {
-		dev_err(dev, "no gpio-controller child node\n");
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret, "no gpio-controller child node\n");
 
 	nr_irq_parent = of_irq_count(np);
 	spin_lock_init(&info->irq_lock);
@@ -996,10 +994,8 @@ static int armada_37xx_pinctrl_register(struct platform_device *pdev,
 		return ret;
 
 	info->pctl_dev = devm_pinctrl_register(dev, ctrldesc, info);
-	if (IS_ERR(info->pctl_dev)) {
-		dev_err(dev, "could not register pinctrl driver\n");
-		return PTR_ERR(info->pctl_dev);
-	}
+	if (IS_ERR(info->pctl_dev))
+		return dev_err_probe(dev, PTR_ERR(info->pctl_dev), "could not register pinctrl driver\n");
 
 	return 0;
 }
@@ -1135,10 +1131,8 @@ static int __init armada_37xx_pinctrl_probe(struct platform_device *pdev)
 	info->dev = dev;
 
 	regmap = syscon_node_to_regmap(np);
-	if (IS_ERR(regmap)) {
-		dev_err(dev, "cannot get regmap\n");
-		return PTR_ERR(regmap);
-	}
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap), "cannot get regmap\n");
 	info->regmap = regmap;
 
 	info->data = of_device_get_match_data(dev);
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
