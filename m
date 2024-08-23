Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D624C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYx3GP1ZRZaWDjgf1S9NUGeVlSVSLUYHI1vafEeMu7o=; b=R8nWa5182P8/RH
	CK6KvHYAh6mMzGptcyCnmWeoWLNFNyMdhzmkTkQqXtmRx0yXjqbnM3kV/O49/2F4Mgk3UJ1lozoAP
	rqePLMn1mCgLN3mYhRRsFVvB71wYP4u0jNEt8TN+NWs0pBF4jGDW9Hviu2gD1h4otKFvOz3Y2DuyR
	Y7SeYtBeOsSSOCfwhPtLrOGwLCgTpgv5lwQ2Qdmd3cSDDGJP+b4wfGNPv1s0xnNDrjEeH8xSaQMnV
	ZqQC6hNUQxJbqg52Y4d+gOuvepsaI5TwKg8JeKY3kkFDZRXZhDliyEj7L/VxQsywrP57iGbZgTowH
	zfjDdg1o7T78I3kowGsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLKz-0000000F6du-1y98;
	Fri, 23 Aug 2024 03:51:45 +0000
Received: from mail-m49238.qiye.163.com ([45.254.49.238])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEq-0000000F531-1cLL;
	Fri, 23 Aug 2024 03:45:28 +0000
DKIM-Signature: a=rsa-sha256;
	b=YUXGOkhiCgppJmZDw8LULJpQZH4iVy7URitzlNbFh84KL9KbTIu/xqBM5/ZBQOooT8/V/jTRbVOxH00pk8mWXjCogwC2+mdmgSvyXlPm6uyONTVAv+fJxx3oejMOwOFgro9qwyoUrnXKYJnlvShCaM4wnPajHMT2QLLpDam0Xbo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=qSWtEbz+MubGSx0kOmIrCU0+CejCtYpgAPmr1u5z7Mc=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 7E84B7E02C7;
	Fri, 23 Aug 2024 11:45:10 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com,
	andriy.shevchenko@linux.intel.com,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com,
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: [PATCH v2] gpio: rockchip: support ACPI
Date: Fri, 23 Aug 2024 11:43:13 +0800
Message-Id: <20240823034314.62305-11-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhpISFZDSx1JSBoYS05IGklWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917d56923e09cfkunm7e84b7e02c7
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PCI6Exw4OTI6TywQCTVRTkwX
	KVEwChNVSlVKTElPSENPTEpJTkxIVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBQ0xPTDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204524_678174_DAE6FC55 
X-CRM114-Status: GOOD (  16.48  )
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

Adds support for Advanced Configuration and Power Interface (ACPI) within
the Rockchip GPIO driver.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 160 +++++++++++++++++++++++------------
 1 file changed, 105 insertions(+), 55 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 4f8d50626fcc..9e4a8cd94c66 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -6,6 +6,7 @@
  * Copyright (c) 2021 Rockchip Electronics Co. Ltd.
  */
 
+#include <linux/acpi.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/device.h>
@@ -17,10 +18,12 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/pinctrl/pinconf-generic.h>
 #include <linux/platform_device.h>
+#include <linux/property.h>
 #include <linux/regmap.h>
 
 #include "../pinctrl/core.h"
@@ -210,6 +213,7 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 		freq = clk_get_rate(bank->db_clk);
 		if (!freq)
 			return -EINVAL;
+
 		div = (u64)(GENMASK(23, 0) + 1) * 1000000;
 		if (bank->gpio_type == GPIO_TYPE_V2)
 			max_debounce = DIV_ROUND_CLOSEST_ULL(div, freq);
@@ -515,7 +519,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	struct irq_chip_generic *gc;
 	int ret;
 
-	bank->domain = irq_domain_add_linear(bank->of_node, 32,
+	bank->domain = irq_domain_create_linear(dev_fwnode(bank->dev), 32,
 					&irq_generic_chip_ops, NULL);
 	if (!bank->domain) {
 		dev_warn(bank->dev, "could not init irq domain for bank %s\n",
@@ -637,25 +641,9 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	return ret;
 }
 
-static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
+static void rockchip_gpio_get_ver(struct rockchip_pin_bank *bank)
 {
-	struct resource res;
-	int id = 0;
-
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
-	id = readl(bank->reg_base + gpio_regs_v2.version_id);
+	int id = readl(bank->reg_base + gpio_regs_v2.version_id);
 
 	switch (id) {
 	case GPIO_TYPE_V2:
@@ -672,8 +660,6 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 		bank->gpio_type = GPIO_TYPE_V1;
 		pr_info("Note: Use default GPIO_TYPE_V1!\n");
 	}
-
-	return 0;
 }
 
 static struct rockchip_pin_bank *
@@ -695,61 +681,120 @@ rockchip_gpio_find_bank(struct pinctrl_dev *pctldev, int id)
 	return found ? bank : NULL;
 }
 
+static int rockchip_gpio_of_get_bank_id(struct device *dev)
+{
+	static int gpio;
+	int bank_id = -1;
+
+	if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
+		bank_id = of_alias_get_id(dev->of_node, "gpio");
+		if (bank_id < 0)
+			bank_id = gpio++;
+	}
+
+	return bank_id;
+}
+
+#ifdef CONFIG_ACPI
+static int rockchip_gpio_acpi_get_bank_id(struct device *dev)
+{
+	struct acpi_device *adev;
+	unsigned long bank_id = -1;
+	const char *uid;
+	int ret;
+
+	adev = ACPI_COMPANION(dev);
+	if (!adev)
+		return -ENXIO;
+
+	uid = acpi_device_uid(adev);
+	if (!uid || !(*uid)) {
+		dev_err(dev, "Cannot retrieve UID\n");
+		return -ENODEV;
+	}
+
+	ret = kstrtoul(uid, 0, &bank_id);
+
+	return !ret ? bank_id : -ERANGE;
+}
+#else
+static int rockchip_gpio_acpi_get_bank_id(struct device *dev)
+{
+	return -ENOENT;
+}
+#endif /* CONFIG_ACPI */
+
 static int rockchip_gpio_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
-	struct device_node *pctlnp = of_get_parent(np);
 	struct pinctrl_dev *pctldev = NULL;
 	struct rockchip_pin_bank *bank = NULL;
-	struct rockchip_pin_deferred *cfg;
-	static int gpio;
-	int id, ret;
+	int bank_id = 0;
+	int ret;
 
-	if (!np || !pctlnp)
-		return -ENODEV;
+	bank_id = rockchip_gpio_acpi_get_bank_id(dev);
+	if (bank_id < 0) {
+		bank_id = rockchip_gpio_of_get_bank_id(dev);
+		if (bank_id < 0)
+			return bank_id;
+	}
 
-	pctldev = of_pinctrl_get(pctlnp);
-	of_node_put(pctlnp);
-	if (!pctldev)
-		return -EPROBE_DEFER;
+	if (!ACPI_COMPANION(dev)) {
+		struct device_node *pctlnp = of_get_parent(dev->of_node);
 
-	id = of_alias_get_id(np, "gpio");
-	if (id < 0)
-		id = gpio++;
+		pctldev = of_pinctrl_get(pctlnp);
+		of_node_put(pctlnp);
+		if (!pctldev)
+			return -EPROBE_DEFER;
 
-	bank = rockchip_gpio_find_bank(pctldev, id);
-	if (!bank)
-		return -EINVAL;
+		bank = rockchip_gpio_find_bank(pctldev, bank_id);
+		if (!bank)
+			return -ENODEV;
+	}
 
+	if (!bank) {
+		bank = devm_kzalloc(dev, sizeof(*bank), GFP_KERNEL);
+		if (!bank)
+			return -ENOMEM;
+	}
+
+	bank->bank_num = bank_id;
 	bank->dev = dev;
-	bank->of_node = np;
+	bank->of_node = dev->of_node;
+
+	bank->reg_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(bank->reg_base))
+		return PTR_ERR(bank->reg_base);
+
+	bank->irq = platform_get_irq(pdev, 0);
+	if (bank->irq < 0)
+		return bank->irq;
 
 	raw_spin_lock_init(&bank->slock);
 
-	bank->clk = devm_clk_get(dev, "bus");
-	if (IS_ERR(bank->clk)) {
-		bank->clk = of_clk_get(dev->of_node, 0);
+	if (!ACPI_COMPANION(dev)) {
+		bank->clk = devm_clk_get(dev, "bus");
 		if (IS_ERR(bank->clk)) {
-			dev_err(dev, "fail to get apb clock\n");
-			return PTR_ERR(bank->clk);
+			bank->clk = of_clk_get(dev->of_node, 0);
+			if (IS_ERR(bank->clk)) {
+				dev_err(dev, "fail to get apb clock\n");
+				return PTR_ERR(bank->clk);
+			}
 		}
-	}
 
-	ret = rockchip_get_bank_data(bank);
-	if (ret)
-		return ret;
-
-	bank->db_clk = devm_clk_get(dev, "db");
-	if (IS_ERR(bank->db_clk)) {
-		bank->db_clk = of_clk_get(dev->of_node, 1);
-		if (IS_ERR(bank->db_clk))
-			bank->db_clk = NULL;
+		bank->db_clk = devm_clk_get(dev, "db");
+		if (IS_ERR(bank->db_clk)) {
+			bank->db_clk = of_clk_get(dev->of_node, 1);
+			if (IS_ERR(bank->db_clk))
+				bank->db_clk = NULL;
+		}
 	}
 
 	clk_prepare_enable(bank->clk);
 	clk_prepare_enable(bank->db_clk);
 
+	rockchip_gpio_get_ver(bank);
+
 	/*
 	 * Prevent clashes with a deferred output setting
 	 * being added right at this moment.
@@ -763,8 +808,13 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	}
 
 	while (!list_empty(&bank->deferred_pins)) {
+		struct rockchip_pin_deferred *cfg;
+
 		cfg = list_first_entry(&bank->deferred_pins,
 				       struct rockchip_pin_deferred, head);
+		if (!cfg)
+			break;
+
 		list_del(&cfg->head);
 
 		switch (cfg->param) {
@@ -789,7 +839,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	mutex_unlock(&bank->deferred_lock);
 
 	platform_set_drvdata(pdev, bank);
-	dev_info(dev, "probed %pOF\n", np);
+	dev_info(dev, "probed %pfw\n", dev_fwnode(dev));
 
 	return 0;
 err_unlock:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
