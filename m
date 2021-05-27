Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49C47C4708C
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 08:49:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B67AB6128D
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 08:49:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B67AB6128D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zvJ8qLYnxAUj/CORk3mI966go65iXkc3O2Av0iy/G4=; b=sgidFr2f2SRtMk
	OqZ7OGTZZjvhk9WWX6rQHK5mA/UwpMno+iTrFI++FMT46mgIdUQymNhxOqLBT9kgd+inkvRyQq5Mn
	Qg5VAkvptNKYq9Md+XiChivzUZbq6nf4OCmieFLlJeunkAPmojjZ8M2bU1CVaTX/gorDV5Upp2anS
	YO2uucJ3vypCztG11VIa4lHUEv+3MrIMUrPHx99hINhwmt3dsTwzzamX9Kc2MrTWU9AkAiWRNMVK4
	n0Bxcc3TPUX4wcZjgEmTXIRNx/cvYCHObvjcYGkXxUjGQvGmmiPKzo0djXd5Dc9+h1INUk+OFW03u
	Zs6iUzoWs1mDMbnh6UVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmBhJ-0040VI-BZ; Thu, 27 May 2021 08:48:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmBhG-0040TC-5t
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 08:48:56 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmBhB-0006sN-AU; Thu, 27 May 2021 10:48:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, robh+dt@kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH v5 5/7] gpio/rockchip: support next version gpio controller
Date: Thu, 27 May 2021 10:48:48 +0200
Message-ID: <4162826.Y6S9NjorxK@diego>
In-Reply-To: <20210527071345.1424493-1-jay.xu@rock-chips.com>
References: <20210527071239.1424430-1-jay.xu@rock-chips.com>
 <20210527071345.1424493-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_014854_263355_42A4A302 
X-CRM114-Status: GOOD (  20.39  )
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

Am Donnerstag, 27. Mai 2021, 09:13:45 CEST schrieb Jianqun Xu:
> The next version gpio controller on SoCs like rk3568 have more write
> mask bits for registers.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

> @@ -549,15 +677,33 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>  		return PTR_ERR(bank->reg_base);
>  
>  	bank->irq = irq_of_parse_and_map(bank->of_node, 0);
> -
> -	bank->gpio_regs = &gpio_regs_v1;
> -	bank->gpio_type = GPIO_TYPE_V1;
> +	if (!bank->irq)
> +		return -EINVAL;
>  
>  	bank->clk = of_clk_get(bank->of_node, 0);
> -	if (!IS_ERR(bank->clk))
> -		return clk_prepare(bank->clk);
> +	if (IS_ERR(bank->clk))
> +		return PTR_ERR(bank->clk);
> +
> +	clk_prepare_enable(bank->clk);
> +	id = readl(bank->reg_base + gpio_regs_v2.version_id);
> +
> +	/* If not gpio v2, that is default to v1. */
> +	if (id == GPIO_TYPE_V2) {
> +		bank->gpio_regs = &gpio_regs_v2;
> +		bank->gpio_type = GPIO_TYPE_V2;
> +		bank->db_clk = of_clk_get(bank->of_node, 1);
> +		if (IS_ERR(bank->db_clk)) {
> +			dev_err(bank->dev, "cannot find debounce clk\n");
> +			bank->db_clk = NULL;
> +			clk_disable(bank->clk);
> +			return -EINVAL;
> +		}
> +	} else {
> +		bank->gpio_regs = &gpio_regs_v1;
> +		bank->gpio_type = GPIO_TYPE_V1;
> +	}
>  
> -	bank->clk = NULL;
> +	clk_disable(bank->clk);

NIT: you could move the "always enable clock for gpio controller" patch
before adding the v2 support. That way you save on not needing to add
the clock handling here.

Otherwise looks nice to me.

Acked-by: Heiko Stuebner <heiko@sntech.de>


Heiko


>  	return 0;
>  }
>  
> diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
> index 1b774b6bbc3e..589d4d2a98c9 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.h
> +++ b/drivers/pinctrl/pinctrl-rockchip.h
> @@ -121,6 +121,7 @@ struct rockchip_drv {
>   * @reg_base: register base of the gpio bank
>   * @regmap_pull: optional separate register for additional pull settings
>   * @clk: clock of the gpio bank
> + * @db_clk: clock of the gpio debounce
>   * @irq: interrupt of the gpio bank
>   * @saved_masks: Saved content of GPIO_INTEN at suspend time.
>   * @pin_base: first pin number
> @@ -146,6 +147,7 @@ struct rockchip_pin_bank {
>  	void __iomem			*reg_base;
>  	struct regmap			*regmap_pull;
>  	struct clk			*clk;
> +	struct clk			*db_clk;
>  	int				irq;
>  	u32				saved_masks;
>  	u32				pin_base;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
