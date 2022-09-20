Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06282C6FA8E
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 10:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wnbk64164H0y6P1JQlgK83rSq5PIYQB1SBP/wpWhOkw=; b=z3A0J37wuN3smM
	3zab6SckF4NlpueMDdokbcPoE/3DIphEF1MyJf6zf1/uNRQxanE1HR4XQEStd7G6yp+hriUp+oXKd
	0dFgew5wQV2xfa7khm4vMM1amBfOvao3koE0i1Rhwooz1zhfyFeNVTFSdSLnxtL4rqyEKWWA+SrcW
	uL08aaXv1D1Ec+7YPcHviBGMmHBfGczRyUoNZl8PHUzvmHd/dMPts54h5MTb/EaPQZRgL7Jg9VICF
	eAHBGAwHiwd44GQRSYJrXPVgV9ShNNVZfgjAMfygjaMc3/K1xY2ZU8beO1shLAufyvSiJ0GzoCcb8
	YJS/nFBX2c7TuKYrej0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXs-002z3B-93; Tue, 20 Sep 2022 10:32:04 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXJ-002yNG-BK
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 10:31:33 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 9870B280BA9;
	Tue, 20 Sep 2022 18:31:20 +0800 (CST)
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
Subject: [PATCH 14/20] gpio/rockchip: switch to use irq_domain_create_linear
Date: Tue, 20 Sep 2022 18:31:02 +0800
Message-Id: <20220920103108.23074-15-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920103108.23074-1-jay.xu@rock-chips.com>
References: <20220920103108.23074-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDTBpCVh9NSxofSB9ISU5PQlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NC46DDo4SD0eDBxNPQpPLy0*
	CjlPCxxVSlVKTU1ITU1CQ0NKSUNKVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlMTEM3Bg++
X-HM-Tid: 0a835a73c82c2eb1kusn9870b280ba9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033129_702310_DFAF1E7C 
X-CRM114-Status: UNSURE (   8.97  )
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

Switch to use irq_domain_create_linear to create the irq domain for the
Rockchip GPIO bank, whose argument is fwnode istead of of_node.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 1a800f972594..4fcd75d710c1 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -28,6 +28,8 @@
 #define GPIO_TYPE_V2		(0x01000C2B)  /* GPIO Version ID 0x01000C2B */
 #define GPIO_TYPE_V2_1		(0x0101157C)  /* GPIO Version ID 0x0101157C */
 
+#define GPIO_MAX_PINS	(32)
+
 static const struct rockchip_gpio_regs gpio_regs_v1 = {
 	.port_dr = 0x00,
 	.port_ddr = 0x04,
@@ -520,14 +522,15 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	struct irq_chip_generic *gc;
 	int ret;
 
-	bank->domain = irq_domain_add_linear(bank->of_node, 32,
-					&irq_generic_chip_ops, NULL);
+	bank->domain = irq_domain_create_linear(dev_fwnode(bank->dev),
+						GPIO_MAX_PINS,
+						&irq_generic_chip_ops, NULL);
 	if (!bank->domain) {
 		dev_warn(bank->dev, "could not init irq domain\n");
 		return -EINVAL;
 	}
 
-	ret = irq_alloc_domain_generic_chips(bank->domain, 32, 1,
+	ret = irq_alloc_domain_generic_chips(bank->domain, GPIO_MAX_PINS, 1,
 					     "rockchip_gpio_irq",
 					     handle_level_irq,
 					     clr, 0, 0);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
