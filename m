Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B888BECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvgAebjkLUKxitN71/RyqCNLp7uDwZyUlF86AaRBPio=; b=aVoYzcuGcQmXaT
	JB83PBRkFr9+CpPnZaMCpq2LRMLR9ZO2kWoATd7Y4z4CFq3ND0PF/sPWDStDlMC3S+Zmb3gM3HbEz
	7qQ3UfX7sSWeG3dKUshsxDgflzO90lAvTGBG9W1MbAJk1nz7VK4SDZT3354MkQNvvkmzIixCLnFzx
	mEWUqUxR4TVQH15iFGehUTbpyGN/pWiuzejQpl64J88TCJ/uaz+A+U/+kcbMij8S5LBpXjUb3RAz+
	L+0LnsdfVG3fYpNejlKtPS9PB5GBjbRbQzBpYXlEzcdG+cf4YiwAszBeGZvmWzIxCer2tU0GipShk
	LxGrFqPvkz+z0zE4P65w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXv-002z8d-K2; Tue, 20 Sep 2022 10:32:07 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXM-002yRH-CF
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 10:31:35 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 05D0A280BDB;
	Tue, 20 Sep 2022 18:31:24 +0800 (CST)
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
Subject: [PATCH 20/20] pinctrl/rockchip: find existed gpiochip by gpio label
Date: Tue, 20 Sep 2022 18:31:08 +0800
Message-Id: <20220920103108.23074-21-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920103108.23074-1-jay.xu@rock-chips.com>
References: <20220920103108.23074-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSRhMVkMeTBgeGh1OGU4YSVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ky46Ohw5HD0tSRwiPQoPLxRJ
	DxQwCRlVSlVKTU1ITU1CQ0NOQ0hOVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU9PSUo3Bg++
X-HM-Tid: 0a835a73d9e42eb1kusn05d0a280bdb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033132_612396_00539568 
X-CRM114-Status: GOOD (  16.05  )
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
Rockchip platform, the pinctrl driver creates the gpiochips and pass to
the GPIO driver.

This patch makes the member of pinctrl structure from gpiochip to
*gpiochip, switch to find existed gpiochips instead of creating them,
that requires the GPIO driver to create them and earlier than the
pinctrl driver.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 24 +++++++++++++++++++++---
 drivers/pinctrl/pinctrl-rockchip.h |  2 +-
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 97af52bb5481..05e688cd8536 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2725,7 +2725,7 @@ static int rockchip_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 {
 	struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 	struct rockchip_pin_bank *bank = pin_to_bank(info, pin);
-	struct gpio_chip *gpio = &bank->gpio_chip;
+	struct gpio_chip *gpio = bank->gpio_chip;
 	enum pin_config_param param;
 	u32 arg;
 	int i;
@@ -2828,7 +2828,7 @@ static int rockchip_pinconf_get(struct pinctrl_dev *pctldev, unsigned int pin,
 {
 	struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 	struct rockchip_pin_bank *bank = pin_to_bank(info, pin);
-	struct gpio_chip *gpio = &bank->gpio_chip;
+	struct gpio_chip *gpio = bank->gpio_chip;
 	enum pin_config_param param = pinconf_to_config_param(*config);
 	u16 arg;
 	int rc;
@@ -3293,7 +3293,7 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	struct rockchip_pin_ctrl *ctrl;
 	struct resource *res;
 	void __iomem *base;
-	int ret;
+	int ret, i;
 
 	if (is_of_node(fwnode)) {
 		ret = of_platform_populate(np, NULL, NULL, dev);
@@ -3357,6 +3357,24 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	for (i = 0; i < ctrl->nr_banks; i++) {
+		struct gpio_chip *gc;
+		struct rockchip_pin_bank *bank = &ctrl->pin_banks[i];
+
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
 	platform_set_drvdata(pdev, info);
 	dev_info(dev, "probed %pfw\n", fwnode);
 
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index 3531633c0397..8b44e02bce97 100644
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
