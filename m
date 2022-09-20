Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A4A0C6FA92
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 10:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mj+sveVojh5n9zfP53YyQQmOwad5gXSmKnTP3M9MuLE=; b=y9NL308QHBSPY1
	mKg8AfRv/bRE5cSdATr2hfYzI49VNGmnbPBoZS7YXea2yia2WCrlg++cdN8HuqDXFW5X9r7DV50Ea
	6viu1kCcuCBkF6bi6oY7Qq8JFY1saTTYur4E1aLt3aHmiVU1zqP1S57qZu4/AnoPjro7JJy5W8i5n
	CvLJjZSHZn94Wdcv9hZOr6yB9D/2pZoqAqPk38Q1ZOd9Ue7nZz73GNahknaQ9QJIU3mdjUrz66YZV
	Y3g7GAkdlvulbdlDiN3OwzRqt+xaq+5CEyqq4glavdQmA4B2wEIPY9dglFUJcNARU2HvBXOuavbMJ
	OlN5RpXHMI0zT2y97mKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXt-002z5S-LU; Tue, 20 Sep 2022 10:32:05 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXK-002yPB-Na
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 10:31:33 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 8D360280BD5;
	Tue, 20 Sep 2022 18:31:23 +0800 (CST)
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
Subject: [PATCH 18/20] gpio/rockchip: make use of device property
Date: Tue, 20 Sep 2022 18:31:06 +0800
Message-Id: <20220920103108.23074-19-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920103108.23074-1-jay.xu@rock-chips.com>
References: <20220920103108.23074-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZSU9NVkgfShlPQxhLSEpMT1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MVE6Eio6DD0vOhwCLRRJLw9N
	MU8aCQlVSlVKTU1ITU1CQ0NPSUpDVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUhISEI3Bg++
X-HM-Tid: 0a835a73d3b82eb1kusn8d360280bd5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033130_977575_F0289D98 
X-CRM114-Status: GOOD (  10.77  )
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

Get the iomem resource by devm_platform_ioremap_resource and get the irq
by platform_get_irq.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index d08435619f12..a94ebd95d285 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -9,7 +9,6 @@
 #include <linux/acpi.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
-#include <linux/device.h>
 #include <linux/err.h>
 #include <linux/gpio/driver.h>
 #include <linux/init.h>
@@ -17,6 +16,8 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
@@ -651,22 +652,8 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 
 static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 {
-	struct resource res;
 	int id = 0;
 
-	if (of_address_to_resource(bank->of_node, 0, &res)) {
-		dev_err(bank->dev, "cannot find IO resource for bank\n");
-		return -ENOENT;
-	}
-
-	bank->reg_base = devm_ioremap_resource(bank->dev, &res);
-	if (IS_ERR(bank->reg_base))
-		return PTR_ERR(bank->reg_base);
-
-	bank->irq = irq_of_parse_and_map(bank->of_node, 0);
-	if (!bank->irq)
-		return -EINVAL;
-
 	bank->clk = of_clk_get(bank->of_node, 0);
 	if (IS_ERR(bank->clk))
 		return PTR_ERR(bank->clk);
@@ -765,6 +752,14 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	bank->reg_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(bank->reg_base))
+		return PTR_ERR(bank->reg_base);
+
+	bank->irq = platform_get_irq(pdev, 0);
+	if (bank->irq < 0)
+		return bank->irq;
+
 	ret = rockchip_gpiolib_register(bank);
 	if (ret) {
 		dev_err(bank->dev, "Failed to register gpio %d\n", ret);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
