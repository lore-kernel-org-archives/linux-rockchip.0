Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DC8C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:44:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 934C7611EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:44:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 934C7611EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4K6DpJqDqPa1cUK0Dt++yVqbHg9g+5bix9XtiF+cLc=; b=2nPhgHBbYQOnOd
	nvawGtg7+KGbNmDcfQhtvYI7+IDEcp+wmitbqKoe1UO2J9xMhzIFbcmQW7Lj3pXmugbC3Od1GNxxe
	u9PSyn5+JsJ5WigkkXST8n0WTimZRVwmpKkQDI3IGgkV+HXQpMpmQc9QCFBIO94LqCMdiy4/FloeH
	+Qsy2lNWU2BKJ6gmtTwtQUw+wqs5kaYZWTJeMo8uTaZmKpew/UuETVmjGOvznRyk0dXf7QIEyUkac
	zWcGXFArhPsfcJFZJtTysrxt1T79i2D7xAYIsqh3EUbOinLR9sEgm8l54/H+TJs2m4zkcmGee5zf8
	FAxo32S4NqqbniTX+7Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miyZp-00BH2B-D2; Fri, 05 Nov 2021 12:44:13 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYn-00BGVm-G2; Fri, 05 Nov 2021 12:43:10 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="232139835"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="232139835"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="498356083"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga007.fm.intel.com with ESMTP; 05 Nov 2021 05:43:04 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 5863A4B4; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
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
Subject: [PATCH v1 06/19] pinctrl/rockchip: Convert to use dev_err_probe()
Date: Fri,  5 Nov 2021 14:42:29 +0200
Message-Id: <20211105124242.27288-6-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054309_568419_6D5C4D63 
X-CRM114-Status: GOOD (  12.39  )
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
 drivers/pinctrl/pinctrl-rockchip.c | 30 ++++++++++--------------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 7206ee30a6b2..929c96ea621a 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2331,10 +2331,8 @@ static int rockchip_pinctrl_parse_groups(struct device_node *np,
 	list = of_get_property(np, "rockchip,pins", &size);
 	/* we do not check return since it's safe node passed down */
 	size /= sizeof(*list);
-	if (!size || size % 4) {
-		dev_err(dev, "wrong pins number or pins and configs should be by 4\n");
-		return -EINVAL;
-	}
+	if (!size || size % 4)
+		return dev_err_probe(dev, -EINVAL, "wrong pins number or pins and configs should be by 4\n");
 
 	grp->npins = size / 4;
 
@@ -2489,10 +2487,8 @@ static int rockchip_pinctrl_register(struct platform_device *pdev,
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
@@ -2673,10 +2669,8 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	void __iomem *base;
 	int ret;
 
-	if (!dev->of_node) {
-		dev_err(dev, "device tree node not found\n");
-		return -ENODEV;
-	}
+	if (!dev->of_node)
+		return dev_err_probe(dev, -ENODEV, "device tree node not found\n");
 
 	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 	if (!info)
@@ -2685,10 +2679,8 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	info->dev = dev;
 
 	ctrl = rockchip_pinctrl_get_soc_data(info, pdev);
-	if (!ctrl) {
-		dev_err(dev, "driver data not available\n");
-		return -EINVAL;
-	}
+	if (!ctrl)
+		return dev_err_probe(dev, -EINVAL, "driver data not available\n");
 	info->ctrl = ctrl;
 
 	node = of_parse_phandle(np, "rockchip,grf", 0);
@@ -2737,10 +2729,8 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, info);
 
 	ret = of_platform_populate(np, rockchip_bank_match, NULL, NULL);
-	if (ret) {
-		dev_err(dev, "failed to register gpio device\n");
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register gpio device\n");
 
 	return 0;
 }
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
