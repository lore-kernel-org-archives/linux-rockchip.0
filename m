Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99406C32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 01:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DwKU6zgs9HADM2H973Cee0g9J2Mwq0gIL0nSvgi2Y44=; b=oGnmFM1NebxCSQ
	qugY45RuT1Psr3ZCEjKt7cdArVC/riUoIWASYHgVk6UTG5EwrW5Jrc8E/m7a3Pxjc472KORvLNNAH
	wARPCCtv2HdalHkWJBjLdfN9hmF8s95iLCZOYS1zpj/tbkC1F0QEQa6tFOs715TAIWPcHKR+YYSz6
	lOaJEK3qPYFoGWZG55PnqfcnBJnvcI4KjO7THCN+JIoW5Z28G29LKWbb4tqhJNlnBEe7lwnouUvt/
	Z/6TsYFpsaJKrO4hDKvcA5X5O7XJd+6z1GAYRwXMeFpPiaa+DsH2gyWRWCS09D3A92A++zioVYMvV
	af2ZmhW6IFwMuRXHMSlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQexx-009kfk-EE; Wed, 24 Aug 2022 01:13:57 +0000
Received: from mail-m11885.qiye.163.com ([115.236.118.85])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQexh-009kWy-2I; Wed, 24 Aug 2022 01:13:42 +0000
Received: from localhost (unknown [103.29.142.67])
	by mail-m11885.qiye.163.com (Hmail) with ESMTPA id 3242A4C03C0;
	Wed, 24 Aug 2022 09:13:32 +0800 (CST)
From: Jeffy Chen <jeffy.chen@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Jianqun Xu <jay.xu@rock-chips.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] gpio/rockchip: Convert to generic_handle_domain_irq()
Date: Wed, 24 Aug 2022 09:06:05 +0800
Message-Id: <20220824010605.14256-1-jeffy.chen@rock-chips.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSE1NVkodGkNPHR1PTUIfQ1UTARMWGhIXJBQOD1
	lXWRgSC1lBWUpLSFVJQlVKT0lVTUxZV1kWGg8SFR0UWUFZT0tIVUpKS0hKQ1VLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OC46CCo5AT0wSg8iLxMjATgJ
	LQkKCU5VSlVKTU1KSEtITUpMSktCVTMWGhIXVREeHR0CVRgTHhU7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUlDS043Bg++
X-HM-Tid: 0a82cd69633c2eb9kusn3242a4c03c0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_181341_270186_F84FAA74 
X-CRM114-Status: UNSURE (   7.83  )
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

Follow commit dbd1c54fc820 ("gpio: Bulk conversion to
generic_handle_domain_irq()").

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

Changes in v2:
Use for_each_set_bit().

 drivers/gpio/gpio-rockchip.c | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index e342a6dc4c6c..03b05a56a66f 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -324,26 +324,15 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 {
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 	struct rockchip_pin_bank *bank = irq_desc_get_handler_data(desc);
-	u32 pend;
+	unsigned long pending;
+	unsigned int irq;
 
 	dev_dbg(bank->dev, "got irq for bank %s\n", bank->name);
 
 	chained_irq_enter(chip, desc);
 
-	pend = readl_relaxed(bank->reg_base + bank->gpio_regs->int_status);
-
-	while (pend) {
-		unsigned int irq, virq;
-
-		irq = __ffs(pend);
-		pend &= ~BIT(irq);
-		virq = irq_find_mapping(bank->domain, irq);
-
-		if (!virq) {
-			dev_err(bank->dev, "unmapped irq %d\n", irq);
-			continue;
-		}
-
+	pending = readl_relaxed(bank->reg_base + bank->gpio_regs->int_status);
+	for_each_set_bit(irq, &pending, 32) {
 		dev_dbg(bank->dev, "handling irq %d\n", irq);
 
 		/*
@@ -377,7 +366,7 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 			} while ((data & BIT(irq)) != (data_old & BIT(irq)));
 		}
 
-		generic_handle_irq(virq);
+		generic_handle_domain_irq(bank->domain, irq);
 	}
 
 	chained_irq_exit(chip, desc);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
