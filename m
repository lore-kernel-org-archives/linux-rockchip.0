Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03B88C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaKHILw8DXNOAW1bpr9Ety/Vhof9wLe8wRV5KxVBDQM=; b=Hg5ZI6gfFsAmuC
	P6uu85LUL2eR5NJoAJlARvjJ7WZUV0/kN7bXGMXO1S84pfL8TpAzNYl27Z5/GZcrJ+3ooZZuc6pDX
	5cEOeI7WzXoOPCErjbsFg2sctqnO+awVnJ/RXugqxqFQGCYLrjs/F/VN9XySfTY9pxPqWyOsofYdX
	gaVqGdcaF/FCKyX65cxJQVixNiwCIsc87aHAFRC53xJ7ldggBou3E+gliGN4Ky/uuYEe/UaRjTD9W
	Fd/3CmQ7TJEWNkowtWFF9ucmOFWUaMYNSpTNB5uToD/3tBWBiv/HcAkYFarcA/UIIgkmOnFtyjGd6
	vMUmRYhnI6o/f/PnSPoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLLh-0000000F6rj-43Jj;
	Fri, 23 Aug 2024 03:52:29 +0000
Received: from mail-m121150.qiye.163.com ([115.236.121.150])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEr-0000000F53f-34aS;
	Fri, 23 Aug 2024 03:45:28 +0000
DKIM-Signature: a=rsa-sha256;
	b=G/RTs6YMV5W952IdhazbtNNLgQxMQIOuIcys2+3IayROxZhHW7EiEvlMhSzF6ot4i7s+KzodcwcEYI4OyoQk6oJ8AzBDvLmdQdskdOcfcMKrC/BbnyOSPpzXxeXDyegCrwhHZli/FpYdeaGZHx8JKt/FOU0OH88uvyJUKXeK1d4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=nqazWTlBDwdnoSXZcg2BRCub0agiIIoWnnlcJAAVPXk=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id A6A0A7E01AD;
	Fri, 23 Aug 2024 11:45:12 +0800 (CST)
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
Subject: [PATCH v2] gpio: rockchip: driver works without pinctrl device
Date: Fri, 23 Aug 2024 11:43:14 +0800
Message-Id: <20240823034314.62305-12-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUNOGFZDSk5JGk1JTx9PGRpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a917d569aae09cfkunma6a0a7e01ad
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OBw6ETo6EDI8NCwPGStRTgEP
	Dk0KCSlVSlVKTElPSENPTEpIQ0lMVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0NMTjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204526_166832_E3C6B725 
X-CRM114-Status: GOOD (  17.53  )
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

updates the Rockchip GPIO driver to function correctly even when the
pinctrl device is not present.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 54 +++++++++++++++---------------------
 1 file changed, 23 insertions(+), 31 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 9e4a8cd94c66..8dd8903423be 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -34,6 +34,8 @@
 #define GPIO_TYPE_V2_1		(0x0101157C)  /* GPIO Version ID 0x0101157C */
 #define GPIO_TYPE_V2_2		(0x010219C8)  /* GPIO Version ID 0x010219C8 */
 
+#define GPIO_MAX_PINS	(32)
+
 static const struct rockchip_gpio_regs gpio_regs_v1 = {
 	.port_dr = 0x00,
 	.port_ddr = 0x04,
@@ -590,6 +592,16 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	gc->label = bank->name;
 	gc->parent = bank->dev;
 
+	if (!gc->base)
+		gc->base = GPIO_MAX_PINS * bank->bank_num;
+	if (!gc->ngpio)
+		gc->ngpio = GPIO_MAX_PINS;
+	if (!gc->label) {
+		gc->label = kasprintf(GFP_KERNEL, "gpio%d", bank->bank_num);
+		if (!gc->label)
+			return -ENOMEM;
+	}
+
 	ret = gpiochip_add_data(gc, bank);
 	if (ret) {
 		dev_err(bank->dev, "failed to add gpiochip %s, %d\n",
@@ -597,36 +609,6 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 		return ret;
 	}
 
-	/*
-	 * For DeviceTree-supported systems, the gpio core checks the
-	 * pinctrl's device node for the "gpio-ranges" property.
-	 * If it is present, it takes care of adding the pin ranges
-	 * for the driver. In this case the driver can skip ahead.
-	 *
-	 * In order to remain compatible with older, existing DeviceTree
-	 * files which don't set the "gpio-ranges" property or systems that
-	 * utilize ACPI the driver has to call gpiochip_add_pin_range().
-	 */
-	if (!of_property_read_bool(bank->of_node, "gpio-ranges")) {
-		struct device_node *pctlnp = of_get_parent(bank->of_node);
-		struct pinctrl_dev *pctldev = NULL;
-
-		if (!pctlnp)
-			return -ENODATA;
-
-		pctldev = of_pinctrl_get(pctlnp);
-		of_node_put(pctlnp);
-		if (!pctldev)
-			return -ENODEV;
-
-		ret = gpiochip_add_pin_range(gc, dev_name(pctldev->dev), 0,
-					     gc->base, gc->ngpio);
-		if (ret) {
-			dev_err(bank->dev, "Failed to add pin range\n");
-			goto fail;
-		}
-	}
-
 	ret = rockchip_interrupts_register(bank);
 	if (ret) {
 		dev_err(bank->dev, "failed to register interrupt, %d\n", ret);
@@ -760,7 +742,6 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 
 	bank->bank_num = bank_id;
 	bank->dev = dev;
-	bank->of_node = dev->of_node;
 
 	bank->reg_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(bank->reg_base))
@@ -807,6 +788,17 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 		goto err_unlock;
 	}
 
+	if (!device_property_read_bool(bank->dev, "gpio-ranges") && pctldev) {
+		struct gpio_chip *gc = &bank->gpio_chip;
+
+		ret = gpiochip_add_pin_range(gc, dev_name(pctldev->dev), 0,
+					     gc->base, gc->ngpio);
+		if (ret) {
+			dev_err(bank->dev, "Failed to add pin range\n");
+			goto err_unlock;
+		}
+	}
+
 	while (!list_empty(&bank->deferred_pins)) {
 		struct rockchip_pin_deferred *cfg;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
