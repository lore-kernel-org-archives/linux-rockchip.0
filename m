Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BCDEECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 02:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akY0L1l62ZcuZnR0zzTYHaRefFC6kvsrnx5cLB7EBgs=; b=uzSC6fKoBFWkGP
	WchBe+Ahka2xaeloYh5hlTaQz0l5sQjCqW+mewvf0Pr6H+5kB3Vsz0SoZJmdFEB+woj4cvwDE23AN
	MvPdMKIe8RMDO4TonNVKIUn/25Cic+eIFzJOJ/uyFR0BXAIc/L6OfZAqESGph+2Svlw473chYjXZ2
	r2+Qt4siVNRCG3apB+wpHrRxWX1ahKf4uof/zxre3zvuUOHjzmuLyHD9OZn0SznCiQGK7NxvHKM6C
	njyzawJ1AjtkNifEkq8AWCKrl2wWdOFJjeV1DQKrfHEzYsP+UbqCQRM3A7TLusTGRva9FiJ3uS8Rl
	+Ml3qp575sYqsRgQU6CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeNm-00F8NW-JL; Thu, 15 Sep 2022 02:13:38 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeNf-00F7sb-2Z
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 02:13:35 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id ECBD79003B3;
	Thu, 15 Sep 2022 10:13:23 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jbx6244@gmail.com,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 3/3] gpio: rockchip: support acpi
Date: Thu, 15 Sep 2022 10:13:20 +0800
Message-Id: <20220915021320.80364-4-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220915021320.80364-1-jay.xu@rock-chips.com>
References: <20220915021320.80364-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHkwaVkJNT0pNTE4YT0saQ1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kwg6Sgw6HT0ePi06Iws6MxIr
	IRUwCw1VSlVKTU1ISUtDS0tPTE5JVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUpKT0NNNwY+
X-HM-Tid: 0a833eec1a452eafkusnecbd79003b3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_191331_416161_FC2A5563 
X-CRM114-Status: GOOD (  24.75  )
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

The gpio driver for rockchip gpio controller is seperated from rockchip
pinctrl driver, at the first version, it keeps things original to make
the patch easy to be reviewed, such as the gpio driver must work with
the pinctrl dt node to be its parent node.

This patch wants to fix driver to support acpi since gpio controller
should work well during acpi is enabled. But during upstream, driver is
better to fix other thing together includes:
 - add 'clock-names' to allow driver to get clocks by devm_clk_get().
 - get io resource and irq by platform common apis.
 - use fwnode instead of of_node from device structure.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 194 ++++++++++++++++++++++-------------
 1 file changed, 120 insertions(+), 74 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index ebb50c25a461..60fe948febec 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -6,9 +6,9 @@
  * Copyright (c) 2021 Rockchip Electronics Co. Ltd.
  */
 
+#include <linux/acpi.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
-#include <linux/device.h>
 #include <linux/err.h>
 #include <linux/gpio/driver.h>
 #include <linux/init.h>
@@ -16,10 +16,9 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
-#include <linux/of_irq.h>
+#include <linux/platform_device.h>
 #include <linux/pinctrl/pinconf-generic.h>
+#include <linux/property.h>
 #include <linux/regmap.h>
 
 #include "../pinctrl/core.h"
@@ -29,6 +28,8 @@
 #define GPIO_TYPE_V2		(0x01000C2B)  /* GPIO Version ID 0x01000C2B */
 #define GPIO_TYPE_V2_1		(0x0101157C)  /* GPIO Version ID 0x0101157C */
 
+#define GPIO_MAX_PINS	(32)
+
 static const struct rockchip_gpio_regs gpio_regs_v1 = {
 	.port_dr = 0x00,
 	.port_ddr = 0x04,
@@ -200,6 +201,9 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
 		div_debounce_support = true;
 		freq = clk_get_rate(bank->db_clk);
+		if (!freq)
+			return -EINVAL;
+
 		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
 		if (debounce > max_debounce)
 			return -EINVAL;
@@ -507,15 +511,16 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	struct irq_chip_generic *gc;
 	int ret;
 
-	bank->domain = irq_domain_add_linear(bank->of_node, 32,
-					&irq_generic_chip_ops, NULL);
+	bank->domain = irq_domain_create_linear(dev_fwnode(bank->dev),
+						GPIO_MAX_PINS,
+						&irq_generic_chip_ops, NULL);
 	if (!bank->domain) {
 		dev_warn(bank->dev, "could not init irq domain for bank %s\n",
 			 bank->name);
 		return -EINVAL;
 	}
 
-	ret = irq_alloc_domain_generic_chips(bank->domain, 32, 1,
+	ret = irq_alloc_domain_generic_chips(bank->domain, GPIO_MAX_PINS, 1,
 					     "rockchip_gpio_irq",
 					     handle_level_irq,
 					     clr, 0, 0);
@@ -565,7 +570,8 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	return 0;
 }
 
-static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
+static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank,
+				     struct pinctrl_dev *pctldev)
 {
 	struct gpio_chip *gc;
 	int ret;
@@ -578,6 +584,17 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	gc->label = bank->name;
 	gc->parent = bank->dev;
 
+	if (!gc->base)
+		gc->base = GPIO_MAX_PINS * bank->bank_num;
+	if (!gc->ngpio)
+		gc->ngpio = GPIO_MAX_PINS;
+	if (!gc->label) {
+		gc->label = devm_kasprintf(bank->dev, GFP_KERNEL, "gpio%d",
+					   bank->bank_num);
+		if (!gc->label)
+			return -ENOMEM;
+	}
+
 	ret = gpiochip_add_data(gc, bank);
 	if (ret) {
 		dev_err(bank->dev, "failed to add gpiochip %s, %d\n",
@@ -595,17 +612,7 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	 * files which don't set the "gpio-ranges" property or systems that
 	 * utilize ACPI the driver has to call gpiochip_add_pin_range().
 	 */
-	if (!of_property_read_bool(bank->of_node, "gpio-ranges")) {
-		struct device_node *pctlnp = of_get_parent(bank->of_node);
-		struct pinctrl_dev *pctldev = NULL;
-
-		if (!pctlnp)
-			return -ENODATA;
-
-		pctldev = of_pinctrl_get(pctlnp);
-		if (!pctldev)
-			return -ENODEV;
-
+	if (!device_property_read_bool(bank->dev, "gpio-ranges") && pctldev) {
 		ret = gpiochip_add_pin_range(gc, dev_name(pctldev->dev), 0,
 					     gc->base, gc->ngpio);
 		if (ret) {
@@ -628,46 +635,42 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	return ret;
 }
 
-static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
+static int rockchip_gpio_set_regs(struct rockchip_pin_bank *bank)
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
+	struct device *dev = bank->dev;
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+	int version_id;
+	int ret;
 
-	bank->clk = of_clk_get(bank->of_node, 0);
-	if (IS_ERR(bank->clk))
-		return PTR_ERR(bank->clk);
+	if (is_of_node(fwnode)) {
+		bank->clk = of_clk_get(to_of_node(fwnode), 0);
+		if (IS_ERR(bank->clk))
+			return PTR_ERR(bank->clk);
 
-	clk_prepare_enable(bank->clk);
-	id = readl(bank->reg_base + gpio_regs_v2.version_id);
+		ret = clk_prepare_enable(bank->clk);
+		if (ret < 0)
+			return ret;
+	}
 
-	/* If not gpio v2, that is default to v1. */
-	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
+	version_id = readl(bank->reg_base + gpio_regs_v2.version_id);
+	if (version_id == GPIO_TYPE_V2 || version_id == GPIO_TYPE_V2_1) {
 		bank->gpio_regs = &gpio_regs_v2;
 		bank->gpio_type = GPIO_TYPE_V2;
-		bank->db_clk = of_clk_get(bank->of_node, 1);
-		if (IS_ERR(bank->db_clk)) {
-			dev_err(bank->dev, "cannot find debounce clk\n");
-			clk_disable_unprepare(bank->clk);
-			return -EINVAL;
-		}
 	} else {
 		bank->gpio_regs = &gpio_regs_v1;
 		bank->gpio_type = GPIO_TYPE_V1;
 	}
 
+	if (bank->gpio_type == GPIO_TYPE_V2 && is_of_node(fwnode)) {
+		bank->db_clk = of_clk_get(to_of_node(fwnode), 1);
+		if (IS_ERR(bank->db_clk))
+			return PTR_ERR(bank->db_clk);
+
+		ret = clk_prepare_enable(bank->db_clk);
+		if (ret < 0)
+			return ret;
+	}
+
 	return 0;
 }
 
@@ -690,57 +693,93 @@ rockchip_gpio_find_bank(struct pinctrl_dev *pctldev, int id)
 	return found ? bank : NULL;
 }
 
+static int rockchip_gpio_get_bank_id(struct device *dev)
+{
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+	int bank_id = -EINVAL;
+	u64 uid;
+	int ret;
+	static int gpio;
+
+	if (is_acpi_node(fwnode)) {
+		ret = acpi_dev_uid_to_integer(ACPI_COMPANION(dev), &uid);
+		if (ret < 0)
+			return ret;
+
+		bank_id = uid;
+	} else {
+		bank_id = of_alias_get_id(to_of_node(fwnode), "gpio");
+		if (bank_id < 0)
+			bank_id = gpio++;
+	}
+
+	return bank_id;
+}
+
 static int rockchip_gpio_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
-	struct device_node *pctlnp = of_get_parent(np);
-	struct pinctrl_dev *pctldev = NULL;
-	struct rockchip_pin_bank *bank = NULL;
-	struct rockchip_pin_deferred *cfg;
-	static int gpio;
-	int id, ret;
+	struct rockchip_pin_bank *bank;
+	struct pinctrl_dev *pctldev;
+	void __iomem *base;
+	int irq;
+	int id;
+	int ret;
 
-	if (!np || !pctlnp)
-		return -ENODEV;
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
-	pctldev = of_pinctrl_get(pctlnp);
-	if (!pctldev)
-		return -EPROBE_DEFER;
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return irq;
 
-	id = of_alias_get_id(np, "gpio");
+	id = rockchip_gpio_get_bank_id(dev);
 	if (id < 0)
-		id = gpio++;
+		return id;
 
-	bank = rockchip_gpio_find_bank(pctldev, id);
-	if (!bank)
-		return -EINVAL;
+	pctldev = get_pinctrl_dev_from_devname("pinctrl");
+	if (pctldev) {
+		bank = rockchip_gpio_find_bank(pctldev, id);
+		if (!bank)
+			return -ENODEV;
+	} else {
+		bank = devm_kzalloc(dev, sizeof(*bank), GFP_KERNEL);
+		if (!bank)
+			return -ENOMEM;
+	}
 
 	bank->dev = dev;
-	bank->of_node = np;
+	bank->irq = irq;
+	bank->bank_num = id;
+	bank->reg_base = base;
 
-	raw_spin_lock_init(&bank->slock);
-
-	ret = rockchip_get_bank_data(bank);
+	ret = rockchip_gpio_set_regs(bank);
 	if (ret)
 		return ret;
 
+	raw_spin_lock_init(&bank->slock);
+
 	/*
 	 * Prevent clashes with a deferred output setting
 	 * being added right at this moment.
 	 */
 	mutex_lock(&bank->deferred_lock);
 
-	ret = rockchip_gpiolib_register(bank);
+	ret = rockchip_gpiolib_register(bank, pctldev);
 	if (ret) {
-		clk_disable_unprepare(bank->clk);
-		mutex_unlock(&bank->deferred_lock);
-		return ret;
+		dev_err(bank->dev, "Failed to register gpio %d\n", ret);
+		goto err_unlock;
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
@@ -765,9 +804,15 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	mutex_unlock(&bank->deferred_lock);
 
 	platform_set_drvdata(pdev, bank);
-	dev_info(dev, "probed %pOF\n", np);
+	dev_info(dev, "probed %pfw\n", dev_fwnode(dev));
 
 	return 0;
+err_unlock:
+	mutex_unlock(&bank->deferred_lock);
+	clk_disable_unprepare(bank->clk);
+	clk_disable_unprepare(bank->db_clk);
+
+	return ret;
 }
 
 static int rockchip_gpio_remove(struct platform_device *pdev)
@@ -775,6 +820,7 @@ static int rockchip_gpio_remove(struct platform_device *pdev)
 	struct rockchip_pin_bank *bank = platform_get_drvdata(pdev);
 
 	clk_disable_unprepare(bank->clk);
+	clk_disable_unprepare(bank->db_clk);
 	gpiochip_remove(&bank->gpio_chip);
 
 	return 0;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
