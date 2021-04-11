Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4DC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:31:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D96AB61042
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:31:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D96AB61042
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H/MKM8wHW0bLiYtvgKR//Gwv/Ayr6Iwn71THzKnvZxk=; b=Vkriar4A/R0MmrkC9dcJz9v3n
	XMmD+QJGAF59fJAzXvEK2qd0CjkOiCvkbiB9wDs9P73T3LK5RyWv5X0Yn/YwZ6N/96/xl+xoUnn1A
	TIFDuxyTlnCebxhPo5nP1UlYjwGXq711ZrGlYaFaaHxuOWeO3aGpaN4Q77PMz+7YuToqyiRV4cskE
	MNzuAm1K+J1vPVWNfVlGiLX3hOGRlaerB7eVwIR+grCRJAiweyzDMjpHo3DMbBiWcaZGs3Wqasl0p
	GDRj0Hei6sUHefO6kh6R5NoqNyuZ8+N/QxlRBFdlM/dTWPgkB0HD0K3rwCNF0jziKQirOF0o92d8t
	Wwpq6Ib7g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVaBA-004WLi-Ba; Sun, 11 Apr 2021 13:31:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVaB3-004WJF-Dt
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 13:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=ZCApTcAXJdK41ZGbZgrSi3OUEC6AhWDRJY32zQgNqBc=; b=BiXE4c9ULPWbX55oHh0Mpx9M3Y
 GpvL8inM+x0zqm0MURDSMBecyypvA7oMuaPqoXYIbFRwVQnWOKoDi5E39S6QtcIdMoobdctU43xa8
 NuOTnilZdAxv3TrtVD63K7itiB8cG84q9QEtf96Bzuz0ICNfIw8H0uwV2eiiOrXd8qZYvDKg0YQoe
 onfIGoka4o1WgzKL49s8sqKFCPtOmwK7gm6nOp46n8MNqeAeDFmlgzhPdt6y1crh+uukOQX8DvHpA
 ajc7eMR2XKaCZ82vH5T5ThzHzqt+iRp24y1anPMvWHl5lKTpbcPQStr/71DvVkExT3dMJBXEz1jhU
 frEkMUFA==;
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVaAz-005Wqb-I0
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 13:31:00 +0000
Received: by mail-qk1-x734.google.com with SMTP id c4so10663863qkg.3
 for <linux-rockchip@lists.infradead.org>; Sun, 11 Apr 2021 06:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZCApTcAXJdK41ZGbZgrSi3OUEC6AhWDRJY32zQgNqBc=;
 b=pqowwbXqtUKI+DSNDAe6sY6C5WnvhRMpHZ7aXwfpj7uu/8KLWqcM1/Oa8TKPbf/VQe
 OLrE0Iv+bY6GXuD8WEUxrmFjQDG3LN40XMWYV45uDW59c0GhRieEgoh91CjC4EfD/wiw
 J5IrvKfbj6uQicWBoo6or/lPgni95Vx9Ps+BVnANxYl8Gbymv5EQiP7UcMARyqBe8eQy
 JFHH+YRwPogeP1NVWjEUAwFIuB+aQsys/aVQ5ZPJ8cj6tJMgGM9nxvyq5bKA3o1DpcQ1
 1wpLiP4/pzlh90CcB40hJ2iuuqrsi75/cNyeOifrtIxs7EqYqoP8NdVcmWODVWhQ1jQZ
 EYWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZCApTcAXJdK41ZGbZgrSi3OUEC6AhWDRJY32zQgNqBc=;
 b=kqHS/9qQDdL2W1B7zZx6+8yNZBHee9UnbztE6hsaWQJsenD0DHQ62MRdX4ZrFpRbNT
 rnuHHiStb2n4vcOmWcK23sWWnO6YCGzjLOS2BU15bes2NersOy0AfnKPS1xNeFAVILMF
 xAmVYaVsB9cIFtyPUSwipl6UJsC5erJI50dESQsgZU497NakLSVUlBu1rWYvJ8y9Avbw
 Hd1TG07S8VtC2Oa3ExbZSlQekrJgcbMHbx70f8dkzrZ9YEUOLr8PZmp+7su9cWyc2VNP
 izPpQ3tP/v2ASXEKhoIH4nET7TX/YbPOBJciUPyKLckrI4aAn9fSpPVVLiyLavotdm0E
 EwLQ==
X-Gm-Message-State: AOAM530YbzgX4b+/T+2gbKChuFxMdU9dYXX9G3IbBQL3HjJ8JACFN/Zc
 1aEBSKgraWZIhWg/BzugoUY=
X-Google-Smtp-Source: ABdhPJzEQczGntosyhFJWxvWXDiTspPTVovgvBQ11D35ag+QJFfh9o0HFuvhcrS6/gVh1t6rcZda9w==
X-Received: by 2002:a37:7782:: with SMTP id
 s124mr22490946qkc.118.1618147852952; 
 Sun, 11 Apr 2021 06:30:52 -0700 (PDT)
Received: from master-laptop.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id l17sm5734204qtk.60.2021.04.11.06.30.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Apr 2021 06:30:52 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Jianqun Xu <jay.xu@rock-chips.com>, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, linus.walleij@linaro.org, heiko@sntech.de
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/7] gpio/rockchip: always enable clock for gpio controller
Date: Sun, 11 Apr 2021 09:30:29 -0400
Message-Id: <20210411133030.1663936-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210411133030.1663936-1-pgwipeout@gmail.com>
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_063057_662265_4C73AA73 
X-CRM114-Status: GOOD (  14.26  )
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

Since gate and ungate pclk of gpio has very litte benifit for system
power consumption, just keep it always ungate.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 68 +++++-------------------------------
 1 file changed, 9 insertions(+), 59 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 92aaf1848449..048e7eecddba 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -139,17 +139,8 @@ static int rockchip_gpio_get_direction(struct gpio_chip *chip,
 {
 	struct rockchip_pin_bank *bank = gpiochip_get_data(chip);
 	u32 data;
-	int ret;
 
-	ret = clk_enable(bank->clk);
-	if (ret < 0) {
-		dev_err(bank->drvdata->dev,
-			"failed to enable clock for bank %s\n", bank->name);
-		return ret;
-	}
 	data = rockchip_gpio_readl_bit(bank, offset, bank->gpio_regs->port_ddr);
-	clk_disable(bank->clk);
-
 	if (data & BIT(offset))
 		return GPIO_LINE_DIRECTION_OUT;
 
@@ -163,11 +154,9 @@ static int rockchip_gpio_set_direction(struct gpio_chip *chip,
 	unsigned long flags;
 	u32 data = input ? 0 : 1;
 
-	clk_enable(bank->clk);
 	raw_spin_lock_irqsave(&bank->slock, flags);
 	rockchip_gpio_writel_bit(bank, offset, data, bank->gpio_regs->port_ddr);
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
-	clk_disable(bank->clk);
 
 	return 0;
 }
@@ -178,11 +167,9 @@ static void rockchip_gpio_set(struct gpio_chip *gc, unsigned int offset,
 	struct rockchip_pin_bank *bank = gpiochip_get_data(gc);
 	unsigned long flags;
 
-	clk_enable(bank->clk);
 	raw_spin_lock_irqsave(&bank->slock, flags);
 	rockchip_gpio_writel_bit(bank, offset, value, bank->gpio_regs->port_dr);
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
-	clk_disable(bank->clk);
 }
 
 static int rockchip_gpio_get(struct gpio_chip *gc, unsigned int offset)
@@ -190,11 +177,10 @@ static int rockchip_gpio_get(struct gpio_chip *gc, unsigned int offset)
 	struct rockchip_pin_bank *bank = gpiochip_get_data(gc);
 	u32 data;
 
-	clk_enable(bank->clk);
 	data = readl(bank->reg_base + bank->gpio_regs->ext_port);
-	clk_disable(bank->clk);
 	data >>= offset;
 	data &= 1;
+
 	return data;
 }
 
@@ -315,9 +301,7 @@ static int rockchip_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
 	if (!bank->domain)
 		return -ENXIO;
 
-	clk_enable(bank->clk);
 	virq = irq_create_mapping(bank->domain, offset);
-	clk_disable(bank->clk);
 
 	return (virq) ? : -ENXIO;
 }
@@ -409,7 +393,6 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 	unsigned long flags;
 	int ret = 0;
 
-	clk_enable(bank->clk);
 	raw_spin_lock_irqsave(&bank->slock, flags);
 
 	rockchip_gpio_writel_bit(bank, d->hwirq, 0,
@@ -480,7 +463,6 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 out:
 	irq_gc_unlock(gc);
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
-	clk_disable(bank->clk);
 
 	return ret;
 }
@@ -490,10 +472,8 @@ static void rockchip_irq_suspend(struct irq_data *d)
 	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 	struct rockchip_pin_bank *bank = gc->private;
 
-	clk_enable(bank->clk);
 	bank->saved_masks = irq_reg_readl(gc, bank->gpio_regs->int_mask);
 	irq_reg_writel(gc, ~gc->wake_active, bank->gpio_regs->int_mask);
-	clk_disable(bank->clk);
 }
 
 static void rockchip_irq_resume(struct irq_data *d)
@@ -501,27 +481,7 @@ static void rockchip_irq_resume(struct irq_data *d)
 	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 	struct rockchip_pin_bank *bank = gc->private;
 
-	clk_enable(bank->clk);
 	irq_reg_writel(gc, bank->saved_masks, bank->gpio_regs->int_mask);
-	clk_disable(bank->clk);
-}
-
-static void rockchip_irq_enable(struct irq_data *d)
-{
-	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
-	struct rockchip_pin_bank *bank = gc->private;
-
-	clk_enable(bank->clk);
-	irq_gc_mask_clr_bit(d);
-}
-
-static void rockchip_irq_disable(struct irq_data *d)
-{
-	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
-	struct rockchip_pin_bank *bank = gc->private;
-
-	irq_gc_mask_set_bit(d);
-	clk_disable(bank->clk);
 }
 
 static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
@@ -530,19 +490,11 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	struct irq_chip_generic *gc;
 	int ret;
 
-	ret = clk_enable(bank->clk);
-	if (ret) {
-		dev_err(bank->dev, "failed to enable clock for bank %s\n",
-			bank->name);
-		return -EINVAL;
-	}
-
 	bank->domain = irq_domain_add_linear(bank->of_node, 32,
 					&irq_generic_chip_ops, NULL);
 	if (!bank->domain) {
 		dev_warn(bank->dev, "could not init irq domain for bank %s\n",
 			 bank->name);
-		clk_disable(bank->clk);
 		return -EINVAL;
 	}
 
@@ -554,7 +506,6 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 		dev_err(bank->dev, "could not alloc generic chips for bank %s\n",
 			bank->name);
 		irq_domain_remove(bank->domain);
-		clk_disable(bank->clk);
 		return -EINVAL;
 	}
 
@@ -571,8 +522,8 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	gc->chip_types[0].chip.irq_ack = irq_gc_ack_set_bit;
 	gc->chip_types[0].chip.irq_mask = irq_gc_mask_set_bit;
 	gc->chip_types[0].chip.irq_unmask = irq_gc_mask_clr_bit;
-	gc->chip_types[0].chip.irq_enable = rockchip_irq_enable;
-	gc->chip_types[0].chip.irq_disable = rockchip_irq_disable;
+	gc->chip_types[0].chip.irq_enable = irq_gc_mask_clr_bit;
+	gc->chip_types[0].chip.irq_disable = irq_gc_mask_set_bit;
 	gc->chip_types[0].chip.irq_set_wake = irq_gc_set_wake;
 	gc->chip_types[0].chip.irq_suspend = rockchip_irq_suspend;
 	gc->chip_types[0].chip.irq_resume = rockchip_irq_resume;
@@ -591,7 +542,6 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 
 	irq_set_chained_handler_and_data(bank->irq,
 					 rockchip_irq_demux, bank);
-	clk_disable(bank->clk);
 
 	return 0;
 }
@@ -695,7 +645,6 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 		if (IS_ERR(bank->db_clk)) {
 			dev_err(bank->dev, "cannot find debounce clk\n");
 			bank->db_clk = NULL;
-			clk_disable(bank->clk);
 			return -EINVAL;
 		}
 	} else {
@@ -703,7 +652,6 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 		bank->gpio_type = GPIO_TYPE_V1;
 	}
 
-	clk_disable(bank->clk);
 	return 0;
 }
 
@@ -756,15 +704,17 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 		return ret;
 
 	ret = rockchip_gpiolib_register(bank);
-	if (ret) {
-		clk_disable_unprepare(bank->clk);
-		return ret;
-	}
+	if (ret)
+		goto err_clk;
 
 	platform_set_drvdata(pdev, bank);
 	dev_info(dev, "probed %pOF\n", np);
 
 	return 0;
+err_clk:
+	clk_disable_unprepare(bank->clk);
+
+	return ret;
 }
 
 static int rockchip_gpio_remove(struct platform_device *pdev)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
