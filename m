Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF69C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:48:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 584FB206F0
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 08:48:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qt1ryJZR"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 584FB206F0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X7KRfDkq4UC62TpvY4KCTwVN94xibG1tbztKmMQl5z4=; b=qt1ryJZR+UOf6fsHygiKEKfp7Z
	PQPCd64IYAASGHOFUwFdnMTZKqyrwBCR17UbIyvExhNg+tlyJsR9KkUn2sSbwavaXyfxb6Cgf0mjN
	77LcmwJK34bZPwtoydmaBTVkVhsT+i+2pFh0j4Aqwgn/vmM5hNX9S1E4Hr9l5fty5GSoWNc9g26fG
	IZkPHvuux8VCA7PGVqLRyVfywvP7IbqW5+Pb5ah/OZU1vOogvuDPt14Fa1WkVbj88guFYi6Hh4xKH
	U8Qp4V3nc30wQZnY/1fNerzKiwERz7ejdvnFQtUPQSXruPA0bugnCk/GIo0+AOyFrDX6N8hB96Zvh
	B/Fk7x2Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCfU5-0008UY-K4; Mon, 31 Aug 2020 08:48:13 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCfTz-0008RB-TR
 for linux-rockchip@lists.infradead.org; Mon, 31 Aug 2020 08:48:09 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id C99C1A26F2;
 Mon, 31 Aug 2020 16:47:57 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11834T140500763920128S1598863675343235_; 
 Mon, 31 Aug 2020 16:47:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <285836fc2de071a5ee547ddde3bb3a1b>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Subject: [PATCH 3/6] pinctrl: rockchip: create irq mapping in gpio_to_irq
Date: Mon, 31 Aug 2020 16:47:50 +0800
Message-Id: <20200831084753.7115-4-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200831084753.7115-1-jay.xu@rock-chips.com>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_044808_483464_9A40DC45 
X-CRM114-Status: GOOD (  13.39  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Remove totally irq mappings create in probe, the gpio irq mapping will
be created when do
    gpio_to_irq ->
        rockchip_gpio_to_irq ->
            irq_create_mapping

This patch can speed up system boot on, also abandon many unused irq
mappings' create.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 28 ++++++++++++----------------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 54abda7b7be8..265d64b8c4f5 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3196,7 +3196,7 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 
 		irq = __ffs(pend);
 		pend &= ~BIT(irq);
-		virq = irq_linear_revmap(bank->domain, irq);
+		virq = irq_find_mapping(bank->domain, irq);
 
 		if (!virq) {
 			dev_err(bank->drvdata->dev, "unmapped irq %d\n", irq);
@@ -3375,7 +3375,7 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
 	unsigned int clr = IRQ_NOREQUEST | IRQ_NOPROBE | IRQ_NOAUTOEN;
 	struct irq_chip_generic *gc;
 	int ret;
-	int i, j;
+	int i;
 
 	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
 		if (!bank->valid) {
@@ -3402,7 +3402,7 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
 
 		ret = irq_alloc_domain_generic_chips(bank->domain, 32, 1,
 					 "rockchip_gpio_irq", handle_level_irq,
-					 clr, 0, IRQ_GC_INIT_MASK_CACHE);
+					 clr, 0, 0);
 		if (ret) {
 			dev_err(&pdev->dev, "could not alloc generic chips for bank %s\n",
 				bank->name);
@@ -3411,14 +3411,6 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
 			continue;
 		}
 
-		/*
-		 * Linux assumes that all interrupts start out disabled/masked.
-		 * Our driver only uses the concept of masked and always keeps
-		 * things enabled, so for us that's all masked and all enabled.
-		 */
-		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTMASK);
-		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTEN);
-
 		gc = irq_get_domain_generic_chip(bank->domain, 0);
 		gc->reg_base = bank->reg_base;
 		gc->private = bank;
@@ -3435,13 +3427,17 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
 		gc->chip_types[0].chip.irq_set_type = rockchip_irq_set_type;
 		gc->wake_enabled = IRQ_MSK(bank->nr_pins);
 
+		/*
+		 * Linux assumes that all interrupts start out disabled/masked.
+		 * Our driver only uses the concept of masked and always keeps
+		 * things enabled, so for us that's all masked and all enabled.
+		 */
+		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTMASK);
+		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTEN);
+		gc->mask_cache = 0xffffffff;
+
 		irq_set_chained_handler_and_data(bank->irq,
 						 rockchip_irq_demux, bank);
-
-		/* map the gpio irqs here, when the clock is still running */
-		for (j = 0 ; j < 32 ; j++)
-			irq_create_mapping(bank->domain, j);
-
 		clk_disable(bank->clk);
 	}
 
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
