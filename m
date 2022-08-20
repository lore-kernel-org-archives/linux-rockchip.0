Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E94C25B08
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Aug 2022 10:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sfm5wXSpNqtYc96yR4MqC0AVJo9re82SXTAKn7CrwhY=; b=mdSGY/f8DY0poU
	pgEs6Q+GUNT2h6gk+VUAbAe8jY5qvaCLDjVOwLpswLD3iE2LJwDB0+myJ8zAiIijy7b/MjbZS0X6h
	6uuJWnEArdgkmYbpyDntF6bT8AXBgbH0x6zdHdwhrfzrhAZkUaSjM2QJwkTjxosW3zNy8TwGggbiZ
	NDKbZYd5QRQl8qKCKyrUuBnPXLN6tiwmPU1KJapmevt0HeycAB3psY3Bi3OZolTu4ZjCCso9c4AbC
	GZN9AzNWZNbJEoKG1A0gbysC+KjPWH03dL6w/6hwpPh3gGIT4CTmhJVucKBb4LJ1KmfgPh296k7T2
	XrKM+m5Q0QGjrzmBP2NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPLO2-007uWv-WB; Sat, 20 Aug 2022 10:07:27 +0000
Received: from mail-m11885.qiye.163.com ([115.236.118.85])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPLNj-007t7d-EI; Sat, 20 Aug 2022 10:07:09 +0000
Received: from localhost (unknown [103.29.142.67])
	by mail-m11885.qiye.163.com (Hmail) with ESMTPA id A28F04C0309;
	Sat, 20 Aug 2022 18:07:02 +0800 (CST)
From: Jeffy Chen <jeffy.chen@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Doug Anderson <dianders@chromium.org>
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] gpio/rockchip: Toggle edge trigger mode after acking
Date: Sat, 20 Aug 2022 17:59:33 +0800
Message-Id: <20220820095933.20234-2-jeffy.chen@rock-chips.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220820095933.20234-1-jeffy.chen@rock-chips.com>
References: <20220820095933.20234-1-jeffy.chen@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZHUNOVk0eH0pLSk5NTE5IH1UTARMWGhIXJBQOD1
	lXWRgSC1lBWUpLSFVJQlVKT0lVTUxZV1kWGg8SFR0UWUFZT0tIVUpISkJITVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OCI6Dxw4ST0rCRUyD1YzHAo#
	ORkKC1ZVSlVKTU1LQkJLS0lISktPVTMWGhIXVREeHR0CVRgTHhU7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUlOSUg3Bg++
X-HM-Tid: 0a82bab864142eb9kusna28f04c0309
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220820_030707_698751_F49F1C94 
X-CRM114-Status: UNSURE (   7.08  )
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

Otherwise the trigger mode might be out-of-sync when a level change
occurred in between.

Fixes: 53b1bfc76df2 ("pinctrl: rockchip: Avoid losing interrupts when supporting both edges")
Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

 drivers/gpio/gpio-rockchip.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index a98351cd6821..736b4d90f1ca 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -338,7 +338,7 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 		irq = __ffs(pend);
 		pend &= ~BIT(irq);
 
-		dev_dbg(bank->dev, "handling irq %d\n", irq);
+		generic_handle_domain_irq(bank->domain, irq);
 
 		/*
 		 * Triggering IRQ on both rising and falling edge
@@ -370,8 +370,6 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 						     bank->gpio_regs->ext_port);
 			} while ((data & BIT(irq)) != (data_old & BIT(irq)));
 		}
-
-		generic_handle_domain_irq(bank->domain, irq);
 	}
 
 	chained_irq_exit(chip, desc);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
