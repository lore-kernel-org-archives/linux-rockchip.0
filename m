Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 781BCC25B08
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Aug 2022 10:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VV/1E75vnLR1OxlHJ5NSn08f+Ffrru117WSofDVEWBM=; b=glXFdP3+HCKvVr
	GQao2KvdEF3lA4/lIp3N2ULyhSC09ZqvyE3j7/fFFk0JQaTAAGeOS5KAZcrQ/NaeLCHhXHF+D3WEh
	un3g0kkaJA6w50OC5P4yYsdtjUc5NnDgHA9vhHgvuR1wMZIbx1+R65PiEEzvSlYhzrA6NWx27YyTj
	AyWSbt+YVSgRVMdH5m7dyoXNG1/4km71ZlqXA0d31PcpL76kANm2cHQObTW8L6Xfs4wxC/2Kirrbg
	kJYlEUIOHXQSdyjNdE4WfNbJkldnlguX5M1njnfg6wvubVylrhBkny0j4Cofxwj4IBAOo+VA+VegB
	Q1XG9XLStAWWPYFNsiPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPLO3-007uY5-Bv; Sat, 20 Aug 2022 10:07:27 +0000
Received: from mail-m11885.qiye.163.com ([115.236.118.85])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPLNj-007t27-De; Sat, 20 Aug 2022 10:07:09 +0000
Received: from localhost (unknown [103.29.142.67])
	by mail-m11885.qiye.163.com (Hmail) with ESMTPA id 6B7974C0286;
	Sat, 20 Aug 2022 18:07:01 +0800 (CST)
From: Jeffy Chen <jeffy.chen@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Doug Anderson <dianders@chromium.org>
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] gpio/rockchip: Convert to generic_handle_domain_irq()
Date: Sat, 20 Aug 2022 17:59:32 +0800
Message-Id: <20220820095933.20234-1-jeffy.chen@rock-chips.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTUxLVkhIGU0ZSUIeSUtIGlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpLSFVJQlVKT0lVTUxZV1kWGg8SFR0UWUFZT0tIVUpKS0hKQ1VLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nk06Tzo*Vj03ShUeNVZPHBgZ
	TjAwCThVSlVKTU1LQkJLS0lKQ0xNVTMWGhIXVREeHR0CVRgTHhU7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUlITEs3Bg++
X-HM-Tid: 0a82bab85f4a2eb9kusn6b7974c0286
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220820_030707_698546_F7E36492 
X-CRM114-Status: UNSURE (   7.28  )
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

 drivers/gpio/gpio-rockchip.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index e342a6dc4c6c..a98351cd6821 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -333,16 +333,10 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 	pend = readl_relaxed(bank->reg_base + bank->gpio_regs->int_status);
 
 	while (pend) {
-		unsigned int irq, virq;
+		unsigned int irq;
 
 		irq = __ffs(pend);
 		pend &= ~BIT(irq);
-		virq = irq_find_mapping(bank->domain, irq);
-
-		if (!virq) {
-			dev_err(bank->dev, "unmapped irq %d\n", irq);
-			continue;
-		}
 
 		dev_dbg(bank->dev, "handling irq %d\n", irq);
 
@@ -377,7 +371,7 @@ static void rockchip_irq_demux(struct irq_desc *desc)
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
