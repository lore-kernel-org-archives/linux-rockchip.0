Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3E84C6FA91
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 08:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RnNi08r4MHyGLFvN1hlMUszOpCW+Yacs3nbnftqHzvU=; b=kFLOg4PtCb7iPO
	I086by4T4t4nRmgvXQoHLhcGX24wiEgCz8FveM/mtQMT1J2bWXbOPHV4F2WMLAE21z/qvvxHcGxK7
	8+USs2NINYnOv9vY5pLwFSx8FZy17b4zXkLCg0KRUubbSRB9vEA4mArYulymIaLNGk4AVqGcLmbk1
	4JVC4EFg1/JXQwUfu1kpsqd5YjaQTp2tXKxFE7n7gZKHpMPXJGRIVjYm/8/datxZaO4xf1+OMlNfx
	xyFCKv5hsNwdkEANHf4EUUMHbHUm7QC4lVmfcUZktVohLm2irI7RiPPaCeEP5Vs6TvUKTONZNu8f0
	/ba/GgKbdBj5GZzy2gbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ6x1-00BH9L-Mu; Fri, 16 Sep 2022 08:43:55 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ6ww-00BH2y-PM
	for linux-rockchip@lists.infradead.org; Fri, 16 Sep 2022 08:43:53 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id D4526900911;
	Fri, 16 Sep 2022 16:43:44 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jbx6244@gmail.com,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH] pinctrl: rockchip: find gpiochip by name from gpio module
Date: Fri, 16 Sep 2022 16:43:43 +0800
Message-Id: <20220916084343.458566-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSh8ZVklPGRkdH0tLT05LTFUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PFE6Sgw*UT0oPiJJNRIJDi8W
	CQkKCQNVSlVKTU1ISEpMQ0lOT09MVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU9DTUI3Bg++
X-HM-Tid: 0a834577d61e2eafkusnd4526900911
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_014351_034014_15ED4DAB 
X-CRM114-Status: GOOD (  13.95  )
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

Currently the pinctrl device acts as parent for the gpio devices for
rockchip platform, the pinctrl driver probes first and then populate the
gpio platform lastly.

This patch makes the pinctrl to populate gpio platform firstly and then
do probe after gpio probed successfully. And get gpiochips througth a
find function by the gpio label.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 36 +++++++++++++++++++++++++-----
 drivers/pinctrl/pinctrl-rockchip.h |  2 +-
 2 files changed, 31 insertions(+), 7 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index a91061f9c2ac..f8572026cb56 100644
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
@@ -3289,6 +3289,13 @@ static int __maybe_unused rockchip_pinctrl_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(rockchip_pinctrl_dev_pm_ops, rockchip_pinctrl_suspend,
 			 rockchip_pinctrl_resume);
 
+static int gpiochip_match_name(struct gpio_chip *gc, void *data)
+{
+	const char *name = data;
+
+	return !strcmp(gc->label, name);
+}
+
 static int rockchip_pinctrl_probe(struct platform_device *pdev)
 {
 	struct rockchip_pinctrl *info;
@@ -3297,11 +3304,15 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	struct rockchip_pin_ctrl *ctrl;
 	struct resource *res;
 	void __iomem *base;
-	int ret;
+	int ret, i;
 
 	if (!dev->of_node)
 		return dev_err_probe(dev, -ENODEV, "device tree node not found\n");
 
+	ret = of_platform_populate(np, NULL, NULL, NULL);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register gpio device\n");
+
 	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 	if (!info)
 		return -ENOMEM;
@@ -3359,10 +3370,23 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 		return ret;
 
 	platform_set_drvdata(pdev, info);
+	for (i = 0; i < ctrl->nr_banks; i++) {
+		struct gpio_chip *gc;
+		struct rockchip_pin_bank *bank = &ctrl->pin_banks[i];
 
-	ret = of_platform_populate(np, NULL, NULL, &pdev->dev);
-	if (ret)
-		return dev_err_probe(dev, ret, "failed to register gpio device\n");
+		gc = gpiochip_find((void *)ctrl->pin_banks[i].name, gpiochip_match_name);
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
