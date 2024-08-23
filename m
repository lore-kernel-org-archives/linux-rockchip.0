Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A86D4C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 09:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bOPtC6ITBCHFQtagIO3qPaYcHxYjEw4uPQU6KLVlMS0=; b=TBgCbek1LX9Zg/
	pVcn06szC+5fBTW2fLECta5tMa3fj9UIzcdf7muyecPpCfFOYcR1M4RHlK1nfxT26zeURqCyFTnNc
	6cxOpgLk9w09S6TuwxxjmqYFKVQ+bhdTq6xZDnLM36p3WBdy05xR/t773/eo1rBdIznTCrMo7qo1T
	Ai4OIuCmhw1rxIzkQAchJEY+6E71NxlbA4NzMbeYOcD0cu9xjPMIuaMYAEcBo1YXr8EjXMijN2Rrs
	dz+Huonjm8PvvLXle8w5WtBnCxMT5Y+I80Bc8bf9ircvjWWBneUVMj8jswt1uY6+IOAAWLEr3Dhwn
	1M35t71Us3tpiwKHV6bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQgt-0000000G8cW-3EEZ;
	Fri, 23 Aug 2024 09:34:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQg7-0000000G8PY-0Pm0;
	Fri, 23 Aug 2024 09:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VSF0ofpqVbXipZjEn2ptobw3B3A2X9stUgfiIscvRIA=; b=MIObJiobwizHAH4f2xl+A2u+a8
	J+AB8MybckpNLriEASHgl19CpzbLeJDJ/sNbbvxT0f7AxAZvto7rgfG6XMZFIiT8X6qm3hDO+1pHx
	0gX1jcWYT6RmjkGqS6ELqqmJqQ99JkuDes2StMr/E791bFH86B4SIwzDl+lmhTFYzZx9PrKRo8XYc
	wgVJo/+5bWQHbKz4WgdQJ+A8RTXU75QuTFFWiBC9HLKgJw0oP3aD06ecgmQaFEODEgk44lCscrXaq
	OP0cD1euUqu1GrsgnFr/bhGtFgV5L4mnmUzDKGwZ3x1guNrMyx1XhEGvKMP5hZ1MWsxbE+234zYcD
	C7D95/Lg==;
Received: from i5e861933.versanet.de ([94.134.25.51] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1shQg5-0003r5-2j; Fri, 23 Aug 2024 11:33:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, brgl@bgdev.pl, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ye Zhang <ye.zhang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 mika.westerberg@linux.intel.com, andriy.shevchenko@linux.intel.com,
 tao.huang@rock-chips.com, finley.xiao@rock-chips.com,
 tim.chen@rock-chips.com, elaine.zhang@rock-chips.com,
 Ye Zhang <ye.zhang@rock-chips.com>
Subject: Re: [PATCH v2] gpio: rockchip: resolve overflow issues
Date: Fri, 23 Aug 2024 11:34:34 +0200
Message-ID: <2735393.uZKlY2gecq@diego>
In-Reply-To: <20240823034314.62305-4-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-4-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_023355_171395_916D0712 
X-CRM114-Status: GOOD (  15.84  )
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

Am Freitag, 23. August 2024, 05:43:06 CEST schrieb Ye Zhang:
> Prevent overflow issues when performing debounce-related calculations.

Please add some more explanation here.
I.e. something about previous max_debounce calculation does overflow
the type of max_debounce

Thanks
Heiko

> Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 5f60162baaeb..bf22b103b6a2 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -209,11 +209,12 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
>  		freq = clk_get_rate(bank->db_clk);
>  		if (!freq)
>  			return -EINVAL;
> -		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
> +		div = (u64)(GENMASK(23, 0) + 1) * 2 * 1000000;
> +		max_debounce = DIV_ROUND_CLOSEST_ULL(div, freq);
>  		if (debounce > max_debounce)
>  			return -EINVAL;
>  
> -		div = debounce * freq;
> +		div = (u64)debounce * freq;
>  		div_reg = DIV_ROUND_CLOSEST_ULL(div, 2 * USEC_PER_SEC) - 1;
>  	} else {
>  		div_debounce_support = false;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
