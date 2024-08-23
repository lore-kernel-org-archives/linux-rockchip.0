Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3620CC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 09:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYykmLxAOsN+t8ctw8/qajLfj+LWIEu2iN5YUoNlV6E=; b=JcWKYHcelbzVXj
	xRODtAcptMT9gdsvc4QjyOqpfnktBUu+eibO/NTw/6qYtrIbSgmHUPI745YKA0LljGZCIeTU/VbIe
	IlGg/5LnIQlO0G8vUADYYxcawB0103jX/zvUlc3jBAUi9NnCLvwt8KB3vDGlq9xHhZJ0hxxEiz4YX
	795gqL0RTYIDlaoXYYEFLOTdobHt5KI98ZPzivYbFDSpbZRMDV3gfJiXRxcmSnxTif26RZdJp9air
	oMi4S/3crdK6XCLogYxvMnmpKnyKENBAIXCxpJvDdgKSj729HdWNykXqJdbEQPH9MFAfCYHhK/oIF
	62W4TaaSA6X7bOkKGT7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQZr-0000000G72d-0q6V;
	Fri, 23 Aug 2024 09:27:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQZT-0000000G6sW-1Usc;
	Fri, 23 Aug 2024 09:27:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=61W4JP5s8vUt9uD7fkH3yJkHJ3h3zSgOoudSNB9+DCA=; b=I9KihzUvS9amZ6JG12fLnBmKOM
	lF26nIdAMu1Q8D+Gl9Igb3TD3gGII3hFL9Ofj7fA18GPywbsAxh4ONokft8g6YX1qUHlzRLS5Xyk6
	xGDA5io3HKnw8C+2XMAOMpWrkW9Lqgc0qAuGNB1z5zPpIk9A7oA2PKeiaIZpGdYXS2hjiavrEr/Fz
	JMvuIg6fPC/bpxW+/ATFBBBiuGITbmuGWDcYdgV15ju7gcwJpqHo0zEEL5U5dqyGKHyDqEZMmRo2w
	k3H3pzJweSL5R3WcKcaOXZnCtE2Eaq8nC1MRtQBlfxAfRqJ29lt4YFiJx0uvh64olgXLZQpo99gB0
	ZW8Pj2yQ==;
Received: from i5e861933.versanet.de ([94.134.25.51] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1shQZN-0003nE-Os; Fri, 23 Aug 2024 11:26:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, brgl@bgdev.pl, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ye Zhang <ye.zhang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 mika.westerberg@linux.intel.com, andriy.shevchenko@linux.intel.com,
 tao.huang@rock-chips.com, finley.xiao@rock-chips.com,
 tim.chen@rock-chips.com, elaine.zhang@rock-chips.com,
 Ye Zhang <ye.zhang@rock-chips.com>
Subject: Re: [PATCH v2] gpio: rockchip: avoid division by zero
Date: Fri, 23 Aug 2024 11:27:38 +0200
Message-ID: <3370558.KgjxqYA5nG@diego>
In-Reply-To: <20240823034314.62305-2-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-2-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_022703_452775_04DB636B 
X-CRM114-Status: GOOD (  15.27  )
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

Am Freitag, 23. August 2024, 05:43:04 CEST schrieb Ye Zhang:
> If the clk_get_rate return '0', it will happen division by zero.
> 
> Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/gpio/gpio-rockchip.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 0bd339813110..712258224eb3 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -207,6 +207,8 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
>  	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
>  		div_debounce_support = true;
>  		freq = clk_get_rate(bank->db_clk);
> +		if (!freq)
> +			return -EINVAL;
>  		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
>  		if (debounce > max_debounce)
>  			return -EINVAL;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
