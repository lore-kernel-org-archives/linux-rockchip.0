Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39795C6FA8B
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 10:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZO04Tzbt8/iXRMxUYsZsl3ghKgeb5K7GpLof+UJ9Ew=; b=JnvpL0Jm/PkK5X
	qPHhHgCOBvok68T6ptkmwhBT0gsclioS7Pymo5QrhQsFtDJIUi3c9cvJOhyj7eNwhEgiXI5tMJA0A
	3Fw9ECH1NQfHEbO6Td2zBJMcNIJpi0mH7rM0SZLoCDvc15DYN9AUFMztOuWA1k8GGPcpguHIK53wF
	ohVX+wAKqCqMMlbv6kLvAOuX63ifURrA8shHH9RQe/cX+Jib9AsLaf2tZod1czmmw2bUOktD6ptH4
	T53jipjSMTgJA2hcYhL2k18d5tCtNMBpH5C4rQJMVFu8XtJTXtMF4WkRb/dnemOv0ihN4V+54azuU
	CfplUshiiwSR3NgIcczg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXe-002yiy-DP; Tue, 20 Sep 2022 10:31:51 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXJ-002yN3-6U
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 10:31:31 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 71C22280B29;
	Tue, 20 Sep 2022 18:31:16 +0800 (CST)
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
Subject: [PATCH 09/20] gpio/rockchip: drop 'bank->name' from the driver
Date: Tue, 20 Sep 2022 18:30:57 +0800
Message-Id: <20220920103108.23074-10-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920103108.23074-1-jay.xu@rock-chips.com>
References: <20220920103108.23074-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGUpJVh4eSU4fS01IHx5MSVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NzI6Ogw5GD0eFBxLPQk6Lx8s
	FBZPCzFVSlVKTU1ITU1CQ0xMSkNIVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUhKTEs3Bg++
X-HM-Tid: 0a835a73b7f12eb1kusn71c22280b29
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033129_421998_C71AF0AE 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
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

Not to use the 'bank->name' and create 'gc->lable' by the bank number.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index bb50335239ac..dafcc8be1687 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -327,7 +327,7 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 	struct rockchip_pin_bank *bank = irq_desc_get_handler_data(desc);
 	u32 pend;
 
-	dev_dbg(bank->dev, "got irq for bank %s\n", bank->name);
+	dev_dbg(bank->dev, "got irq\n");
 
 	chained_irq_enter(chip, desc);
 
@@ -521,8 +521,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	bank->domain = irq_domain_add_linear(bank->of_node, 32,
 					&irq_generic_chip_ops, NULL);
 	if (!bank->domain) {
-		dev_warn(bank->dev, "could not init irq domain for bank %s\n",
-			 bank->name);
+		dev_warn(bank->dev, "could not init irq domain\n");
 		return -EINVAL;
 	}
 
@@ -531,8 +530,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 					     handle_level_irq,
 					     clr, 0, 0);
 	if (ret) {
-		dev_err(bank->dev, "could not alloc generic chips for bank %s\n",
-			bank->name);
+		dev_err(bank->dev, "could not alloc generic chips\n");
 		irq_domain_remove(bank->domain);
 		return -EINVAL;
 	}
@@ -586,8 +584,10 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	gc = &bank->gpio_chip;
 	gc->base = bank->pin_base;
 	gc->ngpio = bank->nr_pins;
-	gc->label = bank->name;
 	gc->parent = bank->dev;
+	gc->label = devm_kasprintf(bank->dev, GFP_KERNEL, "gpio%d", bank->bank_num);
+	if (!gc->label)
+		return -ENOMEM;
 
 	ret = gpiochip_add_data(gc, bank);
 	if (ret) {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
