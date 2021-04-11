Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D43C43461
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:31:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3015C610CB
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:31:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3015C610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QMoVHfOYdDIpzBz66IZe7St+J1tYVyUOewZDkI9l4cM=; b=BqrQZBDn4IU5/y8vItOf1YFoF
	e2pe1TESOqyvTujqFdTaDLqZitHNMXIjuVE5SjXrxnQSPz5hJHULwM4mi8Gh7V/129Zmok2efpUTb
	crwChdjbIahxKpRag2BtJR7MXBuHsFF0B9+YNwIRz14v9R7662oaMcOYgLwCmuTOuqzaUgCtwNLHz
	9jUaGaIrT6e8imJ739gbICOO1/H2KaiRbi8uD+scTgfc8mXpn8ZeWRtmx0mUVTiKexx9XCvvYjUqb
	vHAiXKiWvkcNhTJ+XmZIpx7JOVXKtj+0YEALYYRGrQ2mJmQwH8rM0pGg4mjPWvsB+TZvakM6JxV7z
	sKetyoljg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVaBE-004WMb-2m; Sun, 11 Apr 2021 13:31:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVaB3-004WJM-To
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 13:31:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=2eqxUj7kqqTxIWTpSmZUiIaQvPPsrBpQagqRLVBwiGk=; b=nFUMBHAfaLFuSlClvANiox8A3r
 PmyxM7ANSa/61BLj0hQIk+jsAOV8MQPqEEaSams0K/ipgCTdeKn9kqSIIQS9COF5DYwL8SgGOLa/R
 Td41FN27LFsCy75CI6OomOCoyTebQ2H/XJYChO1OmEBS+eZ2+RkygrNGg23LCRFc3fauVmvSBS9k2
 ATBoW3/J+CkG6+eytdp9o3oCndL3mjlyXwPsG7Tylr6IudyjEBiMvA4JIcMywJRbz7lpP3mLbaZdc
 R3siqf76MgykntBOKXCcghfUcC5BUcPb1FeHzp3NvghEGGlEC6Ut4B8cASgo116Dzlhe1TYnysmAW
 jFJ9akBA==;
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVaAz-005Wq5-Ir
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 13:31:00 +0000
Received: by mail-qk1-x735.google.com with SMTP id o5so10700211qkb.0
 for <linux-rockchip@lists.infradead.org>; Sun, 11 Apr 2021 06:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2eqxUj7kqqTxIWTpSmZUiIaQvPPsrBpQagqRLVBwiGk=;
 b=AkiDhglVTjhO7KHQQ6CVSduTns7170s1mXly0Vy150pXR0GETB4M5SU0A5glXNMmYz
 OkXAlKyVLmZZNPdKjzjzfefOuWjzpqoaeUVWCYLCAf2eyIVLrOKiMhNKEMxF8W5d2JGL
 EefmCjfxBi5O9WiII7W/UFwSX8aNaX1flCGgV0ow+bktwvoA3JyvEO7A7OZXEnS2Ektq
 PV/6IXNe9q1fo/3pJoIm/+qtm7/3lx1B1WaHFNO/JP/hx4iexJgNVnhZlwEki++rm+Yp
 3ecwwolE+x0XhyLeGb7IGEJQF/h4Lx0IuGlz6ydhFNVukEFCr4ao5fqEKZ5wZ0sSK2E5
 pTXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2eqxUj7kqqTxIWTpSmZUiIaQvPPsrBpQagqRLVBwiGk=;
 b=EBH/XL6xZIUifbN7zEEgePOAvdYZ0SxIuNHG6gihCgVR0hA+9EXdDqDH//tuj17XuL
 813Ri7yr6cAAf7fz7Y4SKnw31kjhzNNWjW2uNXb0hdwsaQ2xksWRvhLwOampwmFBZ2lJ
 mw5lhep5PU7Ocl6WjQlRfZcbIK1GA7ZT4rh7btlht9aHTat7/01jPWvqa7VmuVsypkOe
 zjbI73I2BjjcrNwkJEYuN5pA8UuX51KX7zgDRtiSdpB+Ra8zw3mrsWoOEFgswOB28COA
 ImdtiplJVMWXnQ/DSSSmK9Qj/Qfva6q0Vl7WQNHAP5uFQH9yimbVrNMFm9JhPNNGE5GZ
 dyMQ==
X-Gm-Message-State: AOAM53210LKDm8aNYjROAAaZZcUv3mcKzu+aLRx89+kx10wz2QdX4cvD
 BJ1tfNCDEGnDC7PVRtZP78Y=
X-Google-Smtp-Source: ABdhPJy1mlPU74aB/K21upKOzfLYRxTnS4N+Qxpf2As4sWbtAvCyKeVRC8yHykRGuQbBHd4NSwzqdg==
X-Received: by 2002:a37:8bc1:: with SMTP id n184mr5925199qkd.268.1618147851357; 
 Sun, 11 Apr 2021 06:30:51 -0700 (PDT)
Received: from master-laptop.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id l17sm5734204qtk.60.2021.04.11.06.30.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Apr 2021 06:30:51 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Jianqun Xu <jay.xu@rock-chips.com>, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, linus.walleij@linaro.org, heiko@sntech.de
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/7] gpio/rockchip: use struct rockchip_gpio_regs for gpio
 controller
Date: Sun, 11 Apr 2021 09:30:27 -0400
Message-Id: <20210411133030.1663936-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210411133030.1663936-1-pgwipeout@gmail.com>
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_063057_711781_3AD84283 
X-CRM114-Status: GOOD (  17.81  )
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

From: Jianqun Xu <jay.xu@rock-chips.com>

Store register offsets in the struct rockchip_gpio_regs, this patch
prepare for the driver update for new gpio controller.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c       | 85 ++++++++++++++++--------------
 drivers/pinctrl/pinctrl-rockchip.h | 38 +++++++++++++
 2 files changed, 84 insertions(+), 39 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 03a3d251faae..b12db3a523d0 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -24,19 +24,21 @@
 #include "../pinctrl/core.h"
 #include "../pinctrl/pinctrl-rockchip.h"
 
-/* GPIO control registers */
-#define GPIO_SWPORT_DR		0x00
-#define GPIO_SWPORT_DDR		0x04
-#define GPIO_INTEN		0x30
-#define GPIO_INTMASK		0x34
-#define GPIO_INTTYPE_LEVEL	0x38
-#define GPIO_INT_POLARITY	0x3c
-#define GPIO_INT_STATUS		0x40
-#define GPIO_INT_RAWSTATUS	0x44
-#define GPIO_DEBOUNCE		0x48
-#define GPIO_PORTS_EOI		0x4c
-#define GPIO_EXT_PORT		0x50
-#define GPIO_LS_SYNC		0x60
+#define GPIO_TYPE_V1		(0)           /* GPIO Version ID reserved */
+
+static const struct rockchip_gpio_regs gpio_regs_v1 = {
+	.port_dr = 0x00,
+	.port_ddr = 0x04,
+	.int_en = 0x30,
+	.int_mask = 0x34,
+	.int_type = 0x38,
+	.int_polarity = 0x3c,
+	.int_status = 0x40,
+	.int_rawstatus = 0x44,
+	.debounce = 0x48,
+	.port_eoi = 0x4c,
+	.ext_port = 0x50,
+};
 
 static int rockchip_gpio_get_direction(struct gpio_chip *chip,
 				       unsigned int offset)
@@ -51,7 +53,7 @@ static int rockchip_gpio_get_direction(struct gpio_chip *chip,
 			"failed to enable clock for bank %s\n", bank->name);
 		return ret;
 	}
-	data = readl_relaxed(bank->reg_base + GPIO_SWPORT_DDR);
+	data = readl_relaxed(bank->reg_base + bank->gpio_regs->port_ddr);
 	clk_disable(bank->clk);
 
 	if (data & BIT(offset))
@@ -70,13 +72,13 @@ static int rockchip_gpio_set_direction(struct gpio_chip *chip,
 	clk_enable(bank->clk);
 	raw_spin_lock_irqsave(&bank->slock, flags);
 
-	data = readl_relaxed(bank->reg_base + GPIO_SWPORT_DDR);
+	data = readl_relaxed(bank->reg_base + bank->gpio_regs->port_ddr);
 	/* set bit to 1 for output, 0 for input */
 	if (!input)
 		data |= BIT(offset);
 	else
 		data &= ~BIT(offset);
-	writel_relaxed(data, bank->reg_base + GPIO_SWPORT_DDR);
+	writel_relaxed(data, bank->reg_base + bank->gpio_regs->port_ddr);
 
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
 	clk_disable(bank->clk);
@@ -88,7 +90,7 @@ static void rockchip_gpio_set(struct gpio_chip *gc, unsigned int offset,
 			      int value)
 {
 	struct rockchip_pin_bank *bank = gpiochip_get_data(gc);
-	void __iomem *reg = bank->reg_base + GPIO_SWPORT_DR;
+	void __iomem *reg = bank->reg_base + bank->gpio_regs->port_dr;
 	unsigned long flags;
 	u32 data;
 
@@ -111,7 +113,7 @@ static int rockchip_gpio_get(struct gpio_chip *gc, unsigned int offset)
 	u32 data;
 
 	clk_enable(bank->clk);
-	data = readl(bank->reg_base + GPIO_EXT_PORT);
+	data = readl(bank->reg_base + bank->gpio_regs->ext_port);
 	clk_disable(bank->clk);
 	data >>= offset;
 	data &= 1;
@@ -122,7 +124,7 @@ static void rockchip_gpio_set_debounce(struct gpio_chip *gc,
 				       unsigned int offset, bool enable)
 {
 	struct rockchip_pin_bank *bank = gpiochip_get_data(gc);
-	void __iomem *reg = bank->reg_base + GPIO_DEBOUNCE;
+	void __iomem *reg = bank->reg_base + bank->gpio_regs->debounce;
 	unsigned long flags;
 	u32 data;
 
@@ -226,7 +228,7 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 
 	chained_irq_enter(chip, desc);
 
-	pend = readl_relaxed(bank->reg_base + GPIO_INT_STATUS);
+	pend = readl_relaxed(bank->reg_base + bank->gpio_regs->int_status);
 
 	while (pend) {
 		unsigned int irq, virq;
@@ -250,24 +252,26 @@ static void rockchip_irq_demux(struct irq_desc *desc)
 			u32 data, data_old, polarity;
 			unsigned long flags;
 
-			data = readl_relaxed(bank->reg_base + GPIO_EXT_PORT);
+			data = readl_relaxed(bank->reg_base +
+					     bank->gpio_regs->ext_port);
 			do {
 				raw_spin_lock_irqsave(&bank->slock, flags);
 
 				polarity = readl_relaxed(bank->reg_base +
-							 GPIO_INT_POLARITY);
+							 bank->gpio_regs->int_polarity);
 				if (data & BIT(irq))
 					polarity &= ~BIT(irq);
 				else
 					polarity |= BIT(irq);
 				writel(polarity,
-				       bank->reg_base + GPIO_INT_POLARITY);
+				       bank->reg_base +
+				       bank->gpio_regs->int_polarity);
 
 				raw_spin_unlock_irqrestore(&bank->slock, flags);
 
 				data_old = data;
 				data = readl_relaxed(bank->reg_base +
-						     GPIO_EXT_PORT);
+						     bank->gpio_regs->ext_port);
 			} while ((data & BIT(irq)) != (data_old & BIT(irq)));
 		}
 
@@ -290,9 +294,9 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 	clk_enable(bank->clk);
 	raw_spin_lock_irqsave(&bank->slock, flags);
 
-	data = readl_relaxed(bank->reg_base + GPIO_SWPORT_DDR);
+	data = readl_relaxed(bank->reg_base + bank->gpio_regs->port_ddr);
 	data &= ~mask;
-	writel_relaxed(data, bank->reg_base + GPIO_SWPORT_DDR);
+	writel_relaxed(data, bank->reg_base + bank->gpio_regs->port_ddr);
 
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
 
@@ -304,8 +308,8 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 	raw_spin_lock_irqsave(&bank->slock, flags);
 	irq_gc_lock(gc);
 
-	level = readl_relaxed(gc->reg_base + GPIO_INTTYPE_LEVEL);
-	polarity = readl_relaxed(gc->reg_base + GPIO_INT_POLARITY);
+	level = readl_relaxed(gc->reg_base + bank->gpio_regs->int_type);
+	polarity = readl_relaxed(gc->reg_base + bank->gpio_regs->int_polarity);
 
 	switch (type) {
 	case IRQ_TYPE_EDGE_BOTH:
@@ -316,7 +320,7 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 		 * Determine gpio state. If 1 next interrupt should be falling
 		 * otherwise rising.
 		 */
-		data = readl(bank->reg_base + GPIO_EXT_PORT);
+		data = readl(bank->reg_base + bank->gpio_regs->ext_port);
 		if (data & mask)
 			polarity &= ~mask;
 		else
@@ -349,8 +353,8 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 		return -EINVAL;
 	}
 
-	writel_relaxed(level, gc->reg_base + GPIO_INTTYPE_LEVEL);
-	writel_relaxed(polarity, gc->reg_base + GPIO_INT_POLARITY);
+	writel_relaxed(level, gc->reg_base + bank->gpio_regs->int_type);
+	writel_relaxed(polarity, gc->reg_base + bank->gpio_regs->int_polarity);
 
 	irq_gc_unlock(gc);
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
@@ -365,8 +369,8 @@ static void rockchip_irq_suspend(struct irq_data *d)
 	struct rockchip_pin_bank *bank = gc->private;
 
 	clk_enable(bank->clk);
-	bank->saved_masks = irq_reg_readl(gc, GPIO_INTMASK);
-	irq_reg_writel(gc, ~gc->wake_active, GPIO_INTMASK);
+	bank->saved_masks = irq_reg_readl(gc, bank->gpio_regs->int_mask);
+	irq_reg_writel(gc, ~gc->wake_active, bank->gpio_regs->int_mask);
 	clk_disable(bank->clk);
 }
 
@@ -376,7 +380,7 @@ static void rockchip_irq_resume(struct irq_data *d)
 	struct rockchip_pin_bank *bank = gc->private;
 
 	clk_enable(bank->clk);
-	irq_reg_writel(gc, bank->saved_masks, GPIO_INTMASK);
+	irq_reg_writel(gc, bank->saved_masks, bank->gpio_regs->int_mask);
 	clk_disable(bank->clk);
 }
 
@@ -435,8 +439,8 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	gc = irq_get_domain_generic_chip(bank->domain, 0);
 	gc->reg_base = bank->reg_base;
 	gc->private = bank;
-	gc->chip_types[0].regs.mask = GPIO_INTMASK;
-	gc->chip_types[0].regs.ack = GPIO_PORTS_EOI;
+	gc->chip_types[0].regs.mask = bank->gpio_regs->int_mask;
+	gc->chip_types[0].regs.ack = bank->gpio_regs->port_eoi;
 	gc->chip_types[0].chip.irq_ack = irq_gc_ack_set_bit;
 	gc->chip_types[0].chip.irq_mask = irq_gc_mask_set_bit;
 	gc->chip_types[0].chip.irq_unmask = irq_gc_mask_clr_bit;
@@ -453,9 +457,9 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	 * Our driver only uses the concept of masked and always keeps
 	 * things enabled, so for us that's all masked and all enabled.
 	 */
-	writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTMASK);
-	writel_relaxed(0xffffffff, bank->reg_base + GPIO_PORTS_EOI);
-	writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTEN);
+	writel_relaxed(0xffffffff, bank->reg_base + bank->gpio_regs->int_mask);
+	writel_relaxed(0xffffffff, bank->reg_base + bank->gpio_regs->port_eoi);
+	writel_relaxed(0xffffffff, bank->reg_base + bank->gpio_regs->int_en);
 	gc->mask_cache = 0xffffffff;
 
 	irq_set_chained_handler_and_data(bank->irq,
@@ -546,6 +550,9 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 
 	bank->irq = irq_of_parse_and_map(bank->of_node, 0);
 
+	bank->gpio_regs = &gpio_regs_v1;
+	bank->gpio_type = GPIO_TYPE_V1;
+
 	bank->clk = of_clk_get(bank->of_node, 0);
 	if (!IS_ERR(bank->clk))
 		return clk_prepare(bank->clk);
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index 4aa3d2f1fa67..1b774b6bbc3e 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -32,6 +32,42 @@ enum rockchip_pinctrl_type {
 	RK3568,
 };
 
+/**
+ * struct rockchip_gpio_regs
+ * @port_dr: data register
+ * @port_ddr: data direction register
+ * @int_en: interrupt enable
+ * @int_mask: interrupt mask
+ * @int_type: interrupt trigger type, such as high, low, edge trriger type.
+ * @int_polarity: interrupt polarity enable register
+ * @int_bothedge: interrupt bothedge enable register
+ * @int_status: interrupt status register
+ * @int_rawstatus: int_status = int_rawstatus & int_mask
+ * @debounce: enable debounce for interrupt signal
+ * @dbclk_div_en: enable divider for debounce clock
+ * @dbclk_div_con: setting for divider of debounce clock
+ * @port_eoi: end of interrupt of the port
+ * @ext_port: port data from external
+ * @version_id: controller version register
+ */
+struct rockchip_gpio_regs {
+	u32 port_dr;
+	u32 port_ddr;
+	u32 int_en;
+	u32 int_mask;
+	u32 int_type;
+	u32 int_polarity;
+	u32 int_bothedge;
+	u32 int_status;
+	u32 int_rawstatus;
+	u32 debounce;
+	u32 dbclk_div_en;
+	u32 dbclk_div_con;
+	u32 port_eoi;
+	u32 ext_port;
+	u32 version_id;
+};
+
 /**
  * struct rockchip_iomux
  * @type: iomux variant using IOMUX_* constants
@@ -126,6 +162,8 @@ struct rockchip_pin_bank {
 	struct gpio_chip		gpio_chip;
 	struct pinctrl_gpio_range	grange;
 	raw_spinlock_t			slock;
+	const struct rockchip_gpio_regs	*gpio_regs;
+	u32				gpio_type;
 	u32				toggle_edge_mode;
 	u32				recalced_mask;
 	u32				route_mask;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
