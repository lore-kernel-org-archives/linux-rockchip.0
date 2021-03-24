Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 243B0C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 06:47:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BDC01619D5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 06:47:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BDC01619D5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tceZ4WfuAT2rBXTQVbNppG/P3rp33gZgsRayjEaGVO4=; b=KPNxkWOmfwZX2zuiJhSDA0UhZ
	D11WB557layMipNV2myOZjdV/mRDYRcJmr1Q7PFEt8KAyeKh2vYxwMOd0kO1G7OqDL10Fc3PgUbrd
	wUrRrF+rrHzrKfUF3SF+RX1s2iY5rjs1D5y5Bo3Wh5GF6H7VOTpeCgmcqZxh03HnMeFAUXGiadugb
	oJR3+5HSjAHxfmERy+zA8hjhQzOjbtZM/mQSaCmq+JSwEhWxlvWbASH5y47RpBI0lIxD2L2uCefA5
	wkoKwQF82/au7Qw8HJUzkroLmJrNFbRyRrxKj1yfh5Joqp/K1D42ikglsqbRGn5P9qb3Dz8gErKIi
	yvOdsvGcA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOxIv-00GRBu-2r; Wed, 24 Mar 2021 06:47:45 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOxIl-00GRAX-N8
 for linux-rockchip@lists.infradead.org; Wed, 24 Mar 2021 06:47:39 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id A6A71C7C32;
 Wed, 24 Mar 2021 14:47:32 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24306T139685303748352S1616568451588231_; 
 Wed, 24 Mar 2021 14:47:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <dd30de153a8503bb2f4ea4cac913b5f3>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: huangtao@rock-chips.com, kever.yang@rock-chips.com,
 linus.walleij@linaro.org, heiko@sntech.de
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 7/7] gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set
 type
Date: Wed, 24 Mar 2021 14:47:30 +0800
Message-Id: <20210324064730.950335-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210324064541.949630-1-jay.xu@rock-chips.com>
References: <20210324064541.949630-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_064737_722023_F8FCBA25 
X-CRM114-Status: UNSURE (   9.13  )
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

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 048e7eecddba..c9c55614bbef 100644
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
