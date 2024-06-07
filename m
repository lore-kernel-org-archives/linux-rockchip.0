Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FF61C27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 08:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVoRQZ2Qp5e0tUyBpRcWb0ppidzAv/raESPaDmsmKYg=; b=bjb07oVacEkNMy
	uA0YFRGE+g4xHLX1Fu1q8TFkxoLZxPiyZ4h4T5y/c/ijXwmItUDW6xUjl8ExfUcaj0jAwh6jfiZfC
	qDY0KNY1eDhveh4+J0atmGMIvVqId6NBcCAO+7bwqYTzATxyRFQ0ptsIeF6+i8t+wF9ooPNrdpJ40
	uYz94io7xz7afZhGrOkV9KJclaXkLRlKXc/xJcRKzw7fVmaAWukU5o7uhALgynGAQk9st5PwmQn8P
	b2DLRQl84k7sk1+MZbnmY+t5e+SHLjEOK43LIkPbeLlKiJKl8LTGdwAO15hAu0HfCgWQBZjKc+e0a
	MRN6KixjMyIs0G0tjD9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFUj3-0000000D4xW-1IIh;
	Fri, 07 Jun 2024 08:13:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFUiz-0000000D4wC-0Ws4;
	Fri, 07 Jun 2024 08:13:26 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFUif-0000XX-SI; Fri, 07 Jun 2024 10:13:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sam Protsenko <semen.protsenko@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: Re: [PATCH v1 2/4] clk: rockchip: Switch to use kmemdup_array()
Date: Fri, 07 Jun 2024 10:13:04 +0200
Message-ID: <8182279.JRmrKFJ9eK@diego>
In-Reply-To: <20240606161028.2986587-3-andriy.shevchenko@linux.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
 <20240606161028.2986587-3-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_011325_236138_8191A76B 
X-CRM114-Status: GOOD (  17.67  )
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

Hi Andy,

Am Donnerstag, 6. Juni 2024, 18:09:32 CEST schrieb Andy Shevchenko:
> Let the kememdup_array() take care about multiplication and possible
> overflows.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/clk/rockchip/clk-cpu.c | 5 ++---
>  drivers/clk/rockchip/clk-pll.c | 8 ++++----
>  2 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
> index 6ea7fba9f9e5..398a226ad34e 100644
> --- a/drivers/clk/rockchip/clk-cpu.c
> +++ b/drivers/clk/rockchip/clk-cpu.c
> @@ -369,9 +369,8 @@ struct clk *rockchip_clk_register_cpuclk(const char *name,
>  
>  	if (nrates > 0) {
>  		cpuclk->rate_count = nrates;
> -		cpuclk->rate_table = kmemdup(rates,
> -					     sizeof(*rates) * nrates,
> -					     GFP_KERNEL);
> +		cpuclk->rate_table = kmemdup_array(rates, nrates, sizeof(*rates),
> +						   GFP_KERNEL);

are you sure the param order is correct?

According to [0], it's (src, element_size, count, gfp), while above
(and below) element_size and count seems switched in the
kmemdup_array calls.


Heiko

[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/mm/util.c#n149

>  		if (!cpuclk->rate_table) {
>  			ret = -ENOMEM;
>  			goto unregister_notifier;
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index 2d42eb628926..606ce5458f54 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -1136,10 +1136,10 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
>  			len++;
>  
>  		pll->rate_count = len;
> -		pll->rate_table = kmemdup(rate_table,
> -					pll->rate_count *
> -					sizeof(struct rockchip_pll_rate_table),
> -					GFP_KERNEL);
> +		pll->rate_table = kmemdup_array(rate_table,
> +						pll->rate_count,
> +						sizeof(*pll->rate_table),
> +						GFP_KERNEL);
>  		WARN(!pll->rate_table,
>  			"%s: could not allocate rate table for %s\n",
>  			__func__, name);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
