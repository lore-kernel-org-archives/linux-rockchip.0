Return-Path: <SRS0=l1tV=KI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69389C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 May 2021 20:49:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0CA9161287
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 May 2021 20:49:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0CA9161287
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5HK4EdxgVXvzyjI6x3nFGSFXiF1xzT9zM3S1uC6lpy0=; b=qDPYdh/X6f9UqKDUP9QFCG6Ko
	gaIarda+wauopQrkvjPQt5eL3g29CAzOPD6mFm5VMmyOAL42qa7ZsJZhG/RJ/tEwOEybn6tIwKSPY
	JzYqZHwl05tcqc2FgzhFehkdNJZHfctyBUbpCM8s0zD9xMUB312Rdy/49rk0AGeAXI+Jn2kDz8jhT
	cebAZxqBqczOg3ECfqZ3jktP47KIpi8Ybm61woamYDgum9ZiU3caN1JAF6Cl/czNJr9T73o9nPx/8
	rzP52vVQOv5WlnF7cUB1/JTmGKCife6g/ZJ/e7OKzHEvVQWBhS8r0BvtNcquMxj0Aa4bb+aIAqaQE
	bJS65kqtw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhIGg-006Pju-VT; Thu, 13 May 2021 20:49:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhIGd-006Piw-LC
 for linux-rockchip@desiato.infradead.org; Thu, 13 May 2021 20:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=eUeihcxdo+wcVVFUqj0OICnHEvYXEXrfjSh1nnZK8Ns=; b=WVeqJu2NSIZfOXTC6uKja6EHls
 uEd4YMGzQsxf0b1F5Wrw/79+0LRDIgbPvzo3q6X0xg8k6BltT/fcwo2ghcrBxos2qbHzeS3hrvdsO
 07RGVPSAk8OTsu/1UaYRW21KkVZCd+71HF39YwpikAsJxFGCVe1Rlh7Kn/BT0HqKlOH/Ivodtgqms
 vgDDbzTrkzalqQ8liY27IlXS1GQpsfLTs4aEQWTpsFsPyOFcoRf9CEYmU3FSW3xIBXqfnYmjGFpjd
 +w6QTbVlM7MaqieFkwNHY2FhmjN5HlS3WG4BbJU6fCPx//eJQ7hmiEFBd2RB7vbLmyvzVWA6BWtOO
 ExBukapQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhIGY-00BWbd-Lv
 for linux-rockchip@lists.infradead.org; Thu, 13 May 2021 20:49:10 +0000
Received: from p5b127fd3.dip0.t-ipconnect.de ([91.18.127.211]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhIGR-0006yX-OO; Thu, 13 May 2021 22:48:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linus.walleij@linaro.org, robh+dt@kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 6/7] gpio/rockchip: always enable clock for gpio controller
Date: Thu, 13 May 2021 22:48:58 +0200
Message-ID: <7622756.lOV4Wx5bFT@phil>
In-Reply-To: <20210510063722.506009-1-jay.xu@rock-chips.com>
References: <20210510063602.505829-1-jay.xu@rock-chips.com>
 <20210510063722.506009-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210513_134906_927996_6D69EF10 
X-CRM114-Status: GOOD (  20.04  )
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

Am Montag, 10. Mai 2021, 08:37:22 CEST schrieb Jianqun Xu:
> Since gate and ungate pclk of gpio has very litte benifit for system
> power consumption, just keep it always ungate.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

I do agree with the reasoning and as an added benefit, we
also drop all the clk_enable calls that don't do proper error
handling right now ;-)


> ---
>  drivers/gpio/gpio-rockchip.c | 68 +++++-------------------------------
>  1 file changed, 9 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 92aaf1848449..048e7eecddba 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -139,17 +139,8 @@ static int rockchip_gpio_get_direction(struct gpio_chip *chip,
>  {
>  	struct rockchip_pin_bank *bank = gpiochip_get_data(chip);
>  	u32 data;
> -	int ret;
>  
> -	ret = clk_enable(bank->clk);
> -	if (ret < 0) {
> -		dev_err(bank->drvdata->dev,
> -			"failed to enable clock for bank %s\n", bank->name);
> -		return ret;
> -	}
>  	data = rockchip_gpio_readl_bit(bank, offset, bank->gpio_regs->port_ddr);
> -	clk_disable(bank->clk);
> -
>  	if (data & BIT(offset))
>  		return GPIO_LINE_DIRECTION_OUT;
>  
> @@ -163,11 +154,9 @@ static int rockchip_gpio_set_direction(struct gpio_chip *chip,
>  	unsigned long flags;
>  	u32 data = input ? 0 : 1;
>  
> -	clk_enable(bank->clk);
>  	raw_spin_lock_irqsave(&bank->slock, flags);
>  	rockchip_gpio_writel_bit(bank, offset, data, bank->gpio_regs->port_ddr);
>  	raw_spin_unlock_irqrestore(&bank->slock, flags);
> -	clk_disable(bank->clk);
>  
>  	return 0;
>  }
> @@ -178,11 +167,9 @@ static void rockchip_gpio_set(struct gpio_chip *gc, unsigned int offset,
>  	struct rockchip_pin_bank *bank = gpiochip_get_data(gc);
>  	unsigned long flags;
>  
> -	clk_enable(bank->clk);
>  	raw_spin_lock_irqsave(&bank->slock, flags);
>  	rockchip_gpio_writel_bit(bank, offset, value, bank->gpio_regs->port_dr);
>  	raw_spin_unlock_irqrestore(&bank->slock, flags);
> -	clk_disable(bank->clk);
>  }
>  
>  static int rockchip_gpio_get(struct gpio_chip *gc, unsigned int offset)
> @@ -190,11 +177,10 @@ static int rockchip_gpio_get(struct gpio_chip *gc, unsigned int offset)
>  	struct rockchip_pin_bank *bank = gpiochip_get_data(gc);
>  	u32 data;
>  
> -	clk_enable(bank->clk);
>  	data = readl(bank->reg_base + bank->gpio_regs->ext_port);
> -	clk_disable(bank->clk);
>  	data >>= offset;
>  	data &= 1;
> +
>  	return data;
>  }
>  
> @@ -315,9 +301,7 @@ static int rockchip_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
>  	if (!bank->domain)
>  		return -ENXIO;
>  
> -	clk_enable(bank->clk);
>  	virq = irq_create_mapping(bank->domain, offset);
> -	clk_disable(bank->clk);
>  
>  	return (virq) ? : -ENXIO;
>  }
> @@ -409,7 +393,6 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
>  	unsigned long flags;
>  	int ret = 0;
>  
> -	clk_enable(bank->clk);
>  	raw_spin_lock_irqsave(&bank->slock, flags);
>  
>  	rockchip_gpio_writel_bit(bank, d->hwirq, 0,
> @@ -480,7 +463,6 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
>  out:
>  	irq_gc_unlock(gc);
>  	raw_spin_unlock_irqrestore(&bank->slock, flags);
> -	clk_disable(bank->clk);
>  
>  	return ret;
>  }
> @@ -490,10 +472,8 @@ static void rockchip_irq_suspend(struct irq_data *d)
>  	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
>  	struct rockchip_pin_bank *bank = gc->private;
>  
> -	clk_enable(bank->clk);
>  	bank->saved_masks = irq_reg_readl(gc, bank->gpio_regs->int_mask);
>  	irq_reg_writel(gc, ~gc->wake_active, bank->gpio_regs->int_mask);
> -	clk_disable(bank->clk);
>  }
>  
>  static void rockchip_irq_resume(struct irq_data *d)
> @@ -501,27 +481,7 @@ static void rockchip_irq_resume(struct irq_data *d)
>  	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
>  	struct rockchip_pin_bank *bank = gc->private;
>  
> -	clk_enable(bank->clk);
>  	irq_reg_writel(gc, bank->saved_masks, bank->gpio_regs->int_mask);
> -	clk_disable(bank->clk);
> -}
> -
> -static void rockchip_irq_enable(struct irq_data *d)
> -{
> -	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
> -	struct rockchip_pin_bank *bank = gc->private;
> -
> -	clk_enable(bank->clk);
> -	irq_gc_mask_clr_bit(d);
> -}
> -
> -static void rockchip_irq_disable(struct irq_data *d)
> -{
> -	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
> -	struct rockchip_pin_bank *bank = gc->private;
> -
> -	irq_gc_mask_set_bit(d);
> -	clk_disable(bank->clk);
>  }
>  
>  static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
> @@ -530,19 +490,11 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
>  	struct irq_chip_generic *gc;
>  	int ret;
>  
> -	ret = clk_enable(bank->clk);
> -	if (ret) {
> -		dev_err(bank->dev, "failed to enable clock for bank %s\n",
> -			bank->name);
> -		return -EINVAL;
> -	}
> -
>  	bank->domain = irq_domain_add_linear(bank->of_node, 32,
>  					&irq_generic_chip_ops, NULL);
>  	if (!bank->domain) {
>  		dev_warn(bank->dev, "could not init irq domain for bank %s\n",
>  			 bank->name);
> -		clk_disable(bank->clk);
>  		return -EINVAL;
>  	}
>  
> @@ -554,7 +506,6 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
>  		dev_err(bank->dev, "could not alloc generic chips for bank %s\n",
>  			bank->name);
>  		irq_domain_remove(bank->domain);
> -		clk_disable(bank->clk);
>  		return -EINVAL;
>  	}
>  
> @@ -571,8 +522,8 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
>  	gc->chip_types[0].chip.irq_ack = irq_gc_ack_set_bit;
>  	gc->chip_types[0].chip.irq_mask = irq_gc_mask_set_bit;
>  	gc->chip_types[0].chip.irq_unmask = irq_gc_mask_clr_bit;
> -	gc->chip_types[0].chip.irq_enable = rockchip_irq_enable;
> -	gc->chip_types[0].chip.irq_disable = rockchip_irq_disable;
> +	gc->chip_types[0].chip.irq_enable = irq_gc_mask_clr_bit;
> +	gc->chip_types[0].chip.irq_disable = irq_gc_mask_set_bit;
>  	gc->chip_types[0].chip.irq_set_wake = irq_gc_set_wake;
>  	gc->chip_types[0].chip.irq_suspend = rockchip_irq_suspend;
>  	gc->chip_types[0].chip.irq_resume = rockchip_irq_resume;
> @@ -591,7 +542,6 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
>  
>  	irq_set_chained_handler_and_data(bank->irq,
>  					 rockchip_irq_demux, bank);
> -	clk_disable(bank->clk);
>  
>  	return 0;
>  }
> @@ -695,7 +645,6 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>  		if (IS_ERR(bank->db_clk)) {
>  			dev_err(bank->dev, "cannot find debounce clk\n");
>  			bank->db_clk = NULL;
> -			clk_disable(bank->clk);
>  			return -EINVAL;
>  		}
>  	} else {
> @@ -703,7 +652,6 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>  		bank->gpio_type = GPIO_TYPE_V1;
>  	}
>  
> -	clk_disable(bank->clk);
>  	return 0;
>  }
>  
> @@ -756,15 +704,17 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>  		return ret;
>  
>  	ret = rockchip_gpiolib_register(bank);
> -	if (ret) {
> -		clk_disable_unprepare(bank->clk);
> -		return ret;
> -	}
> +	if (ret)
> +		goto err_clk;
>  
>  	platform_set_drvdata(pdev, bank);
>  	dev_info(dev, "probed %pOF\n", np);
>  
>  	return 0;
> +err_clk:
> +	clk_disable_unprepare(bank->clk);
> +
> +	return ret;
>  }
>  
>  static int rockchip_gpio_remove(struct platform_device *pdev)
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
