Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BEE7C00140
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 01:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dnnv7++CpC9uVRgq5rSeCL57ztPO/r0/vwxWxtgmo3c=; b=k4fKRu+94BNPi/
	E9TfpoEFnxzYLCKFYFI2Rza0WsSlfP9aLCsQFygmdJ1ZzuHNqq2TackPDvwjbwnWUy4wX9q5MQ5Ol
	GqjYqYW6Rx339l/ezx+ysR50mqOuJHczHzZN+4wTJ5BowzLbUA0VP1blOjaFWwNsazj6dKrTPi+ld
	W2jrnXaCuHx6FcufXjKQ43gLHvG7QfmCEkqpifuq1eNoVH7+uGEZIYAc+JClv3en9FW41Aofi+hvj
	45OIIzqv4MZo1rSVjymn4TRLGPhYL0tA+yPjvpABAGwprhDtxinTZCEv9hPcpXYa3e8vfitTWAd+k
	KjMDSOfvx/0zLY2Zxwfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOr12-00DVNd-2j; Fri, 19 Aug 2022 01:41:40 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOr0y-00DVE3-N4
	for linux-rockchip@lists.infradead.org; Fri, 19 Aug 2022 01:41:38 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id E22AD900383;
	Fri, 19 Aug 2022 09:41:27 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de
Cc: linus.walleij@linaro.org,
	jeffy.chen@rock-chips.com,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH] gpio/rockchip: handle irq before toggle trigger for edge type irq
Date: Fri, 19 Aug 2022 09:41:26 +0800
Message-Id: <20220819014126.1235390-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZSxhLVk4aQ0geGUpCHklCQ1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ojo6Thw*Fj0yGRdMMTkoM1YY
	OitPCShVSlVKTU1LQ0xISUNDT01PVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlMSkw3Bg++
X-HM-Tid: 0a82b3c329b82eafkusne22ad900383
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_184136_950470_86E1A53A 
X-CRM114-Status: UNSURE (   8.87  )
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

The irq demux for rockchip gpio interrupts do real irq handle after loop
over the bits from int status register. Some oldder SoCs such as RK3308
has no both edge trigger type support, replaced by a soft both type
which switch trigger type once a level type triggered.

For example, a irq is set to a IRQ_TYPE_EDGE_BOTH trigger type, but the
SoC not support really both edge trigger type, use a
IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING instead.

        --------
    ____|      |______

        ^      ^
	|      |
	|      [0] the falling edge come before irq ack set by driver !
	|
        rockchip_irq_demux set to EDGE_FALLING type
	rockchip_irq_demux call generic_handle_irq
	                          -> handle_edge_irq
				    -> irq_gc_ack_set_bit

The [0] irq will lost by software on board test.

With this patch, the generic_handle_irq has been move ahead before
trigger toggle to fix the [0] lost issue.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index f91e876fd969..952d628a6f7e 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -346,6 +346,7 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 		}
 
 		dev_dbg(bank->dev, "handling irq %d\n", irq);
+		generic_handle_irq(virq);
 
 		/*
 		 * Triggering IRQ on both rising and falling edge
@@ -377,8 +378,6 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 						     bank->gpio_regs->ext_port);
 			} while ((data & BIT(irq)) != (data_old & BIT(irq)));
 		}
-
-		generic_handle_irq(virq);
 	}
 
 	chained_irq_exit(chip, desc);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
