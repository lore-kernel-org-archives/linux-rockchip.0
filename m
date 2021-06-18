Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFFBC48BE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 06:29:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2AC9160C41
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 06:29:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2AC9160C41
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWJpycMlWL8NAodpnUhDsLdWVzP3JkKkPQ1ZfevqNXM=; b=r1LeH6yCJOct/M
	xH1v1UdYOqywuetPRj46k+wbtbzd6/gbdgFTicmj5tXiHJ/rNbr3EfnDgcC02Rcw2XzOoDgE8Jo/o
	whbl2j44M+gc1vPwGSOqhleWaizMOBveCUYKvhXs/T/DaGE0CMyTmcWcmDuhxoWNr6YrfDXFxUOZh
	r2JxZwrERbGDvM44ve1xq+XU1gre2GCYda1QgYc7lskjwBvXWg7nKsPkfZ8saKBcFQwPFjnCqTLgP
	mF9A3PYS7HuS1/ObFb1v1x0EJzuugxGfXlQmDCXINcVDOsjBiqo6WwIvKXwU25PUmsKTR/6IPkUMY
	zg/CU8tcZrP2irZtm/1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lu806-00CqRT-EI; Fri, 18 Jun 2021 06:29:10 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lu804-00CqQy-05
 for linux-rockchip@lists.infradead.org; Fri, 18 Jun 2021 06:29:09 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 9FBD9BA6BC;
 Fri, 18 Jun 2021 14:29:06 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16485T139919007667968S1623997744947849_; 
 Fri, 18 Jun 2021 14:29:06 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3367e283884d649e3e2fccbc997d39a6>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 7
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de,
	linus.walleij@linaro.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, kever.yang@rock-chips.com,
 Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 8/9] gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set
 type
Date: Fri, 18 Jun 2021 14:29:03 +0800
Message-Id: <20210618062903.1067494-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210618062449.1067106-1-jay.xu@rock-chips.com>
References: <20210618062449.1067106-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_232908_233750_2895048F 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
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

There has spin lock for irq set type already, so drop irq_gc_lock and
irq_gc_unlock.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index db1ce402e7dc..5ace197a0448 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -406,7 +406,6 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 		irq_set_handler_locked(d, handle_level_irq);
 
 	raw_spin_lock_irqsave(&bank->slock, flags);
-	irq_gc_lock(gc);
 
 	level = rockchip_gpio_readl(bank, bank->gpio_regs->int_type);
 	polarity = rockchip_gpio_readl(bank, bank->gpio_regs->int_polarity);
@@ -461,7 +460,6 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 	rockchip_gpio_writel(bank, level, bank->gpio_regs->int_type);
 	rockchip_gpio_writel(bank, polarity, bank->gpio_regs->int_polarity);
 out:
-	irq_gc_unlock(gc);
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
 
 	return ret;
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
