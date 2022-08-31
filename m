Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B668ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 13:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4+HfIvuoo0Y14E3vnlTEmGl0rlXmDVRz9JpEDL308zk=; b=zX+EvTr4+jFJVO
	oGGZgvCJF3bgGiSG+HZyKQkUJHD7TXY2U7sraGvUVNUrJqcAflJqTCKiaP+Wywe49HcIp/AilThgI
	Cy8X+PdYnqwShhupEOwOvjYa0EqpeyBlmWTPJEwgWMsK7Ksm5DbyS7tV3Mwxnw/MeqNbSsW21UmLU
	MjEzaqeMFGr3fmB/2jB+zn2juTWm3m8Mzh1PgkVeL5z5iv7d+9KhFkFNBrtoM+cmpGrK9ivBtK0ne
	Y82sfvyezlS/9i6EXgSN5XdiATK3cyXKsfPmiRtyRIiJ80pSHjbsF+MRrgzLilFhrjywMYPUuNP8e
	1/cIw4a7e8DNezS5vovw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTO3E-006SDl-9v; Wed, 31 Aug 2022 13:46:40 +0000
Received: from mga03.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTO31-006S9x-Bi; Wed, 31 Aug 2022 13:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1661953587; x=1693489587;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=CPz8tFvmjCETRnWkDdN4A4m76OAij9MXx2jCl1f/FVc=;
  b=OXBaETVhFCGfpC+93jj28SgMoLU3w3tiq8TLPCIHQEGgQorouYWTtBdO
   oP6ry6vlyWIBoKXp8i6cTg9VBABzqhpaB2LqMCTB5MA36nSuJUt5XBvfB
   4E6hZHNb3+DP/lnnZSPMJjVEibeHhQHOU8FqSPWVTfMWVMmAFPbEhwluY
   ddizx15WaUh+8WaYtf9Qxo0+x4l6sSRLcZZTZlh4CqQxZayrpk9H4eTKs
   KmM5ZhiWJhpRBEdZPpIDKRdlu18jdXByAbSVukyc4Ye5nD4lx51VUk8yZ
   X+oaZ/RHbO0sgoZNc12tKI97rgL6zoBx2e2ILd+EpVne5funGZ8XXbZsU
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="296729504"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; 
   d="scan'208";a="296729504"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2022 06:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; 
   d="scan'208";a="589035277"
Received: from black.fi.intel.com ([10.237.72.28])
  by orsmga006.jf.intel.com with ESMTP; 31 Aug 2022 06:45:03 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 265F3174; Wed, 31 Aug 2022 16:45:18 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Bartosz Golaszewski <brgl@bgdev.pl>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v2 1/1] gpio: rockchip: Switch to use fwnode instead of of_node
Date: Wed, 31 Aug 2022 16:45:16 +0300
Message-Id: <20220831134516.78108-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_064627_472250_5B388156 
X-CRM114-Status: GOOD (  18.07  )
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

GPIO library now accepts fwnode as a firmware node, so
switch the driver to use it.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
v2: fixed compilation errors (LKP), replace some OF calls (Bart)
 drivers/gpio/gpio-rockchip.c       | 38 +++++++++++-------------------
 drivers/pinctrl/pinctrl-rockchip.h |  2 --
 2 files changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index bb50335239ac..e8fa99fd4c80 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -14,12 +14,11 @@
 #include <linux/init.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
-#include <linux/of_irq.h>
 #include <linux/pinctrl/pinconf-generic.h>
+#include <linux/property.h>
 #include <linux/regmap.h>
 
 #include "../pinctrl/core.h"
@@ -518,7 +517,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	struct irq_chip_generic *gc;
 	int ret;
 
-	bank->domain = irq_domain_add_linear(bank->of_node, 32,
+	bank->domain = irq_domain_create_linear(dev_fwnode(bank->dev), 32,
 					&irq_generic_chip_ops, NULL);
 	if (!bank->domain) {
 		dev_warn(bank->dev, "could not init irq domain for bank %s\n",
@@ -606,14 +605,10 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	 * files which don't set the "gpio-ranges" property or systems that
 	 * utilize ACPI the driver has to call gpiochip_add_pin_range().
 	 */
-	if (!of_property_read_bool(bank->of_node, "gpio-ranges")) {
-		struct device_node *pctlnp = of_get_parent(bank->of_node);
+	if (!device_property_read_bool(bank->dev, "gpio-ranges")) {
 		struct pinctrl_dev *pctldev = NULL;
 
-		if (!pctlnp)
-			return -ENODATA;
-
-		pctldev = of_pinctrl_get(pctlnp);
+		pctldev = pinctrl_get(bank->dev->parent);
 		if (!pctldev)
 			return -ENODEV;
 
@@ -641,23 +636,20 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 
 static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 {
+	struct platform_device *pdev = to_platform_device(bank->dev);
+	struct device_node *np = bank->dev->of_node;
 	struct resource res;
 	int id = 0;
 
-	if (of_address_to_resource(bank->of_node, 0, &res)) {
-		dev_err(bank->dev, "cannot find IO resource for bank\n");
-		return -ENOENT;
-	}
-
-	bank->reg_base = devm_ioremap_resource(bank->dev, &res);
+	bank->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(bank->reg_base))
 		return PTR_ERR(bank->reg_base);
 
-	bank->irq = irq_of_parse_and_map(bank->of_node, 0);
+	bank->irq = platform_get_irq(pdev, 0);
 	if (!bank->irq)
 		return -EINVAL;
 
-	bank->clk = of_clk_get(bank->of_node, 0);
+	bank->clk = of_clk_get(np, 0);
 	if (IS_ERR(bank->clk))
 		return PTR_ERR(bank->clk);
 
@@ -668,7 +660,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
 		bank->gpio_regs = &gpio_regs_v2;
 		bank->gpio_type = GPIO_TYPE_V2;
-		bank->db_clk = of_clk_get(bank->of_node, 1);
+		bank->db_clk = of_clk_get(np, 1);
 		if (IS_ERR(bank->db_clk)) {
 			dev_err(bank->dev, "cannot find debounce clk\n");
 			clk_disable_unprepare(bank->clk);
@@ -705,17 +697,16 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct device_node *pctlnp = of_get_parent(np);
 	struct pinctrl_dev *pctldev = NULL;
 	struct rockchip_pin_bank *bank = NULL;
 	struct rockchip_pin_deferred *cfg;
 	static int gpio;
 	int id, ret;
 
-	if (!np || !pctlnp)
+	if (!dev->parent)
 		return -ENODEV;
 
-	pctldev = of_pinctrl_get(pctlnp);
+	pctldev = pinctrl_get(dev->parent);
 	if (!pctldev)
 		return -EPROBE_DEFER;
 
@@ -728,7 +719,6 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 		return -EINVAL;
 
 	bank->dev = dev;
-	bank->of_node = np;
 
 	raw_spin_lock_init(&bank->slock);
 
@@ -776,7 +766,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	mutex_unlock(&bank->deferred_lock);
 
 	platform_set_drvdata(pdev, bank);
-	dev_info(dev, "probed %pOF\n", np);
+	dev_info(dev, "probed %pfw\n", dev_fwnode(dev));
 
 	return 0;
 }
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index 4759f336941e..37a0501bcc03 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -299,7 +299,6 @@ struct rockchip_drv {
  * @drv: array describing the 4 drive strength sources of the bank
  * @pull_type: array describing the 4 pull type sources of the bank
  * @valid: is all necessary information present
- * @of_node: dt node of this bank
  * @drvdata: common pinctrl basedata
  * @domain: irqdomain of the gpio bank
  * @gpio_chip: gpiolib chip
@@ -327,7 +326,6 @@ struct rockchip_pin_bank {
 	struct rockchip_drv		drv[4];
 	enum rockchip_pin_pull_type	pull_type[4];
 	bool				valid;
-	struct device_node		*of_node;
 	struct rockchip_pinctrl		*drvdata;
 	struct irq_domain		*domain;
 	struct gpio_chip		gpio_chip;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
