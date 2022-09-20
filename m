Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54AF1ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 03:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocFUMz+I8tsMaMsGJfY9NL4+INy/MnMUychTYvVLBEk=; b=Gw7NXHsSUnYXz/
	UGuecwLS3uWaG0caUBIFBRUw4PKR3NJ6vQ8C8drYZDa4u2fGkU9O8oIHNpLBZMaT2375qRZdcKJiB
	dc3yLIUX4/JNBrapJHqKrrsvSBYN+cA83eCxH9KZArIFCxMw+14vICHLDwwHJBON2d02Ycy4rQXYB
	u+OLYE7HqIoCEURGOl+S+bAW5epOFYt7QYnyjQe1bB33F8sylm6QjImzC+JtV45fny9ny9iD/Q8A7
	CN3xXBHuuxP9yXxCNCSrHnxCSJ9EBVUliwlEVvKP81oDOu+la/YWww154pccTP+db8XlTHkE6mwoF
	wU0X3Ook/x2JtddY8SIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaU1V-0002pa-EI; Tue, 20 Sep 2022 03:34:13 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaU1R-0002jb-9j
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 03:34:11 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id F02952805EB;
	Tue, 20 Sep 2022 11:34:05 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jbx6244@gmail.com,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v3 1/2] pinctrl: rockchip: find gpiochip by gpio label
Date: Tue, 20 Sep 2022 11:34:03 +0800
Message-Id: <20220920033404.885527-2-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920033404.885527-1-jay.xu@rock-chips.com>
References: <20220920033404.885527-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCQ0tPVh9KSU1LTUIYTB0YH1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRA6Qio6Mj0YDB0UAU8MTToO
	IghPCTlVSlVKTU1ITU9PQ09NTElMVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU5LSUw3Bg++
X-HM-Tid: 0a8358f5c85c2eb1kusnf02952805eb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_203409_503970_C7FE0505 
X-CRM114-Status: GOOD (  15.68  )
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

Currently the pinctrl device acts as parent for the GPIO devices for
Rockchip platform, the pinctrl driver probes first and then populate the
GPIO platform lastly.

This patch makes the pinctrl to populate GPIO platform firstly and then
do probe after GPIO probed successfully. Also get the gpiochip by label.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 41 ++++++++++++++++++++++--------
 drivers/pinctrl/pinctrl-rockchip.h |  2 +-
 2 files changed, 31 insertions(+), 12 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index a91061f9c2ac..de86b2bc6380 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2726,7 +2726,7 @@ static int rockchip_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 {
 	struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 	struct rockchip_pin_bank *bank = pin_to_bank(info, pin);
-	struct gpio_chip *gpio = &bank->gpio_chip;
+	struct gpio_chip *gpio = bank->gpio_chip;
 	enum pin_config_param param;
 	u32 arg;
 	int i;
@@ -2832,7 +2832,7 @@ static int rockchip_pinconf_get(struct pinctrl_dev *pctldev, unsigned int pin,
 {
 	struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 	struct rockchip_pin_bank *bank = pin_to_bank(info, pin);
-	struct gpio_chip *gpio = &bank->gpio_chip;
+	struct gpio_chip *gpio = bank->gpio_chip;
 	enum pin_config_param param = pinconf_to_config_param(*config);
 	u16 arg;
 	int rc;
@@ -3291,16 +3291,20 @@ static SIMPLE_DEV_PM_OPS(rockchip_pinctrl_dev_pm_ops, rockchip_pinctrl_suspend,
 
 static int rockchip_pinctrl_probe(struct platform_device *pdev)
 {
-	struct rockchip_pinctrl *info;
 	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node, *node;
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+	struct rockchip_pinctrl *info;
 	struct rockchip_pin_ctrl *ctrl;
+	struct device_node *np, *node;
 	struct resource *res;
 	void __iomem *base;
-	int ret;
+	int ret, i;
 
-	if (!dev->of_node)
-		return dev_err_probe(dev, -ENODEV, "device tree node not found\n");
+	if (is_of_node(fwnode)) {
+		ret = of_platform_populate(to_of_node(fwnode), NULL, NULL, NULL);
+		if (ret)
+			return dev_err_probe(dev, ret, "failed to register gpio device\n");
+	}
 
 	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 	if (!info)
@@ -3358,11 +3362,26 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	platform_set_drvdata(pdev, info);
+	for (i = 0; i < ctrl->nr_banks; i++) {
+		struct gpio_chip *gc;
+		struct rockchip_pin_bank *bank = &ctrl->pin_banks[i];
 
-	ret = of_platform_populate(np, NULL, NULL, &pdev->dev);
-	if (ret)
-		return dev_err_probe(dev, ret, "failed to register gpio device\n");
+		gc = gpiochip_find_by_name((void *)ctrl->pin_banks[i].name);
+		if (!gc) {
+			dev_err(dev, "fail to find gpiochip\n");
+			return ret;
+		}
+
+		ret = gpiochip_add_pin_range(gc, dev_name(dev), 0, gc->base, gc->ngpio);
+		if (ret) {
+			dev_err(dev, "fail to add pin range\n");
+			return ret;
+		}
+		bank->gpio_chip = gc;
+	}
+
+	platform_set_drvdata(pdev, info);
+	dev_info(dev, "probed %pfw\n", fwnode);
 
 	return 0;
 }
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index 4759f336941e..2be12e76b2c4 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -330,7 +330,7 @@ struct rockchip_pin_bank {
 	struct device_node		*of_node;
 	struct rockchip_pinctrl		*drvdata;
 	struct irq_domain		*domain;
-	struct gpio_chip		gpio_chip;
+	struct gpio_chip		*gpio_chip;
 	struct pinctrl_gpio_range	grange;
 	raw_spinlock_t			slock;
 	const struct rockchip_gpio_regs	*gpio_regs;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
