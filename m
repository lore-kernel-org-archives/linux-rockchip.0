Return-Path: <SRS0=ahIP=CO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 233D9C433E2
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 22:03:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 678A920760
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 22:03:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ps8AHjcJ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 678A920760
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UqGnvHO8+ijpBrx29+UtF23YG+qufp0a4ks/vEeMP/8=; b=ps8AHjcJo+SPjB/9onNMpyvLk
	tudK9yeQ3PTzJJxIOVaeHnqJGW5mE5Dz/x4Rx3vfE/QBfGLGv2uMIkbSdQ+9euS1ORXVNGRl5doIl
	XumlI0vO/OTrjTWd9Sl6jnci/PM4gSi86wA/lGFABkG6vR2Q2/9DEQUzYIY06L38Q0Wzz9x1bjCys
	diMIIdEJyKopST0Ylhcd1B5HlmJEYtq0htYxw/Jg35k2kiXRku4vqU2IrNWH9aXuh7sHbjHjnnKPK
	xiBhlH5K4uBz6+p2YEHuJTfPVb/DTf1MJMHi3L9F7l2gnAKl+z1GlHxpRjlXI4kSzzlwI6gBPARPt
	etfVhQRDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEgHq-0006Pb-ID; Sat, 05 Sep 2020 22:03:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEgHo-0006PH-08
 for linux-rockchip@lists.infradead.org; Sat, 05 Sep 2020 22:03:52 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kEgHm-0005ic-Pe; Sun, 06 Sep 2020 00:03:50 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 3/6] pinctrl: rockchip: create irq mapping in gpio_to_irq
Date: Sun, 06 Sep 2020 00:03:50 +0200
Message-ID: <3620235.rk29NJRsjD@diego>
In-Reply-To: <20200831084753.7115-4-jay.xu@rock-chips.com>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
 <20200831084753.7115-4-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200905_180352_054228_5C8366CC 
X-CRM114-Status: GOOD (  19.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 31. August 2020, 10:47:50 CEST schrieb Jianqun Xu:
> Remove totally irq mappings create in probe, the gpio irq mapping will
> be created when do
>     gpio_to_irq ->
>         rockchip_gpio_to_irq ->
>             irq_create_mapping
> 
> This patch can speed up system boot on, also abandon many unused irq
> mappings' create.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 28 ++++++++++++----------------
>  1 file changed, 12 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 54abda7b7be8..265d64b8c4f5 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -3196,7 +3196,7 @@ static void rockchip_irq_demux(struct irq_desc *desc)
>  
>  		irq = __ffs(pend);
>  		pend &= ~BIT(irq);
> -		virq = irq_linear_revmap(bank->domain, irq);
> +		virq = irq_find_mapping(bank->domain, irq);
>  
>  		if (!virq) {
>  			dev_err(bank->drvdata->dev, "unmapped irq %d\n", irq);
> @@ -3375,7 +3375,7 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
>  	unsigned int clr = IRQ_NOREQUEST | IRQ_NOPROBE | IRQ_NOAUTOEN;
>  	struct irq_chip_generic *gc;
>  	int ret;
> -	int i, j;
> +	int i;
>  
>  	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
>  		if (!bank->valid) {
> @@ -3402,7 +3402,7 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
>  
>  		ret = irq_alloc_domain_generic_chips(bank->domain, 32, 1,
>  					 "rockchip_gpio_irq", handle_level_irq,
> -					 clr, 0, IRQ_GC_INIT_MASK_CACHE);
> +					 clr, 0, 0);
>  		if (ret) {
>  			dev_err(&pdev->dev, "could not alloc generic chips for bank %s\n",
>  				bank->name);
> @@ -3411,14 +3411,6 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
>  			continue;
>  		}
>  
> -		/*
> -		 * Linux assumes that all interrupts start out disabled/masked.
> -		 * Our driver only uses the concept of masked and always keeps
> -		 * things enabled, so for us that's all masked and all enabled.
> -		 */
> -		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTMASK);
> -		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTEN);
> -
>  		gc = irq_get_domain_generic_chip(bank->domain, 0);
>  		gc->reg_base = bank->reg_base;
>  		gc->private = bank;
> @@ -3435,13 +3427,17 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
>  		gc->chip_types[0].chip.irq_set_type = rockchip_irq_set_type;
>  		gc->wake_enabled = IRQ_MSK(bank->nr_pins);
>  
> +		/*
> +		 * Linux assumes that all interrupts start out disabled/masked.
> +		 * Our driver only uses the concept of masked and always keeps
> +		 * things enabled, so for us that's all masked and all enabled.
> +		 */
> +		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTMASK);
> +		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTEN);
> +		gc->mask_cache = 0xffffffff;
> +
>  		irq_set_chained_handler_and_data(bank->irq,
>  						 rockchip_irq_demux, bank);
> -
> -		/* map the gpio irqs here, when the clock is still running */
> -		for (j = 0 ; j < 32 ; j++)
> -			irq_create_mapping(bank->domain, j);
> -
>  		clk_disable(bank->clk);
>  	}
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
