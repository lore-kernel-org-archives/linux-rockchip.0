Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06DC7C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 06:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=covrzxqz/39brgf+K7VniAoq6waHMq9WLXGJZK2IM2A=; b=RYn6z4JvC9Xw1/
	2+x20XsbFfnXmkhu51p6MsV4poqLFMtDgJmpkobBbx0QiT7P5WgdP3TsEmfV+QLlfH585ieZOf4cJ
	hGikOZKHZEQYP9fuWf+VXcz+0X58FiXKL2W0ut1ENSiwGTc4n9XGH19lcquCDh5ooLyt+3lM1ekvX
	73DftV4TIVN59LCY9tDQobXDojuyiMmKBNuBAmVd1irL0CHN7xOXUfmZ97xvcQ53D5RgWcq3s6OJ8
	ywjemT0LiX/fMlVslbhifc/Xo43lDmL70B0lZmRZ9erPoU7xhwl67yjIMJmowC55SLNsgC5G10qrN
	OWUVfSvMcfOD/iyr6XWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRTCD-002mAi-1y; Tue, 08 Mar 2022 06:19:45 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRTC8-002m8A-CB
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 06:19:43 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id 18F8A1DF400;
 Tue,  8 Mar 2022 14:19:38 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de
Cc: linus.walleij@linaro.org, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/4] gpio: rockchip: get irq support for both dt and acpi
Date: Tue,  8 Mar 2022 14:19:33 +0800
Message-Id: <20220308061935.2441447-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220308061935.2441447-1-jay.xu@rock-chips.com>
References: <20220308061935.2441447-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlCGEhWGE4ZGkNITU
 odSEsYVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NzI6EQw4Sz4CSjI9LBAIKz4r
 FRkwCxFVSlVKTU9NTElLSExDT0xIVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUhKS0w3Bg++
X-HM-Tid: 0a7f682ee593da2bkuws18f8a1df400
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_221940_620523_5BC3326B 
X-CRM114-Status: GOOD (  12.84  )
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

Get the irq of gpio controller with fwnode apis, support for both dt
node and acpi.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 28 +++++++++++++++++++++++-----
 1 file changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index b67038572285..3703c3d71809 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -5,7 +5,7 @@
  *
  * Copyright (c) 2021 Rockchip Electronics Co. Ltd.
  */
-
+#include <linux/acpi.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/device.h>
@@ -639,10 +639,6 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 {
 	int id = 0;
 
-	bank->irq = irq_of_parse_and_map(bank->of_node, 0);
-	if (!bank->irq)
-		return -EINVAL;
-
 	bank->clk = of_clk_get(bank->of_node, 0);
 	if (IS_ERR(bank->clk))
 		return PTR_ERR(bank->clk);
@@ -668,6 +664,24 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 	return 0;
 }
 
+static int rockchip_gpio_get_irq(struct rockchip_pin_bank *bank)
+{
+	struct device *dev = bank->dev;
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+	struct device_node *np = NULL;
+	int irq = 0;
+
+	if (fwnode_property_read_bool(fwnode, "interrupt-controller"))
+		np = to_of_node(fwnode);
+
+	if (np)
+		irq = irq_of_parse_and_map(np, 0);
+	else if (has_acpi_companion(dev))
+		irq = platform_get_irq_optional(to_platform_device(dev), 0);
+
+	return irq;
+}
+
 static struct rockchip_pin_bank *
 rockchip_gpio_find_bank(struct pinctrl_dev *pctldev, int id)
 {
@@ -721,6 +735,10 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	if (IS_ERR(bank->reg_base))
 		return PTR_ERR(bank->reg_base);
 
+	bank->irq = rockchip_gpio_get_irq(bank);
+	if (bank->irq < 0)
+		return bank->irq;
+
 	ret = rockchip_get_bank_data(bank);
 	if (ret)
 		return ret;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
