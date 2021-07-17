Return-Path: <SRS0=BK9L=MJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3046C636CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 12:19:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E7C1361183
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 12:19:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E7C1361183
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3jSdzM3rZOLyjQ6c/K7O08l97XTUM05ZCcg+Xkgsx0=; b=r44a2XTJxrEsub
	fLjmHLaUzxtpvFGhBOGqIWEffAW1LpukxUaqg6KQnQdseoVDyHN/TIgA7WmKdxxQDFzI8RWlvU7GH
	cvIEh/3cZK38lvlla2GXW4yR7GUWZkifJPj/lENn4xUKpWw0CNyl1aWIbvjP5scPqc09pLwCa46I8
	znXQUtdN7izGci4pzdMCKU0BHbAhQ9nmh0fznTaXrEsMw2R5Pr7sHCjZiw2cozxLwv/3tVabBt4aN
	uPsLPHZUAUhGp/vrEUIoG3Wmm4HYX7tOr5WZ8eswHRnXeAlz9u8oKZXN+U96+EL/gExg+9ySSUgIq
	FH3ha2zh8yZNRIN/HSbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4jID-006aWS-HL; Sat, 17 Jul 2021 12:19:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4jI0-006aVV-TU; Sat, 17 Jul 2021 12:19:30 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4jHq-00051D-Eo; Sat, 17 Jul 2021 14:19:18 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Michael Turquette <mturquette@baylibre.com>
Subject: Re: [PATCH v2 1/3] clk: fractional-divider: Export approximation algo
 to the CCF users
Date: Sat, 17 Jul 2021 14:19:17 +0200
Message-ID: <10550544.QTc0DxZM9B@diego>
In-Reply-To: <20210716133448.24890-1-andriy.shevchenko@linux.intel.com>
References: <20210716133448.24890-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210717_051929_012766_A9F9B969 
X-CRM114-Status: GOOD (  23.17  )
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

Am Freitag, 16. Juli 2021, 15:34:46 CEST schrieb Andy Shevchenko:
> At least one user currently duplicates some functions that are provided
> by fractional divider module. Let's export approximation algo and replace
> the open-coded variant.
> 
> As a bonus the exported function will get better documentation in place.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

on Rockchip rk3288 and rk3399
Tested-by: Heiko Stuebner <heiko@sntech.de>

Also for dropping the Rockchip-specific copy in favor of the main
implementation
Acked-by: Heiko Stuebner <heiko@sntech.de>



> ---
> v2: fixed compilation error (LKP), successfully compile-tested on x86
>  drivers/clk/clk-fractional-divider.c | 11 +++++++----
>  drivers/clk/clk-fractional-divider.h |  9 +++++++++
>  drivers/clk/rockchip/clk.c           | 17 +++--------------
>  3 files changed, 19 insertions(+), 18 deletions(-)
>  create mode 100644 drivers/clk/clk-fractional-divider.h
> 
> diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
> index b1e556f20911..535d299af646 100644
> --- a/drivers/clk/clk-fractional-divider.c
> +++ b/drivers/clk/clk-fractional-divider.c
> @@ -14,6 +14,8 @@
>  #include <linux/slab.h>
>  #include <linux/rational.h>
>  
> +#include "clk-fractional-divider.h"
> +
>  static inline u32 clk_fd_readl(struct clk_fractional_divider *fd)
>  {
>  	if (fd->flags & CLK_FRAC_DIVIDER_BIG_ENDIAN)
> @@ -68,9 +70,10 @@ static unsigned long clk_fd_recalc_rate(struct clk_hw *hw,
>  	return ret;
>  }
>  
> -static void clk_fd_general_approximation(struct clk_hw *hw, unsigned long rate,
> -					 unsigned long *parent_rate,
> -					 unsigned long *m, unsigned long *n)
> +void clk_fractional_divider_general_approximation(struct clk_hw *hw,
> +						  unsigned long rate,
> +						  unsigned long *parent_rate,
> +						  unsigned long *m, unsigned long *n)
>  {
>  	struct clk_fractional_divider *fd = to_clk_fd(hw);
>  	unsigned long scale;
> @@ -102,7 +105,7 @@ static long clk_fd_round_rate(struct clk_hw *hw, unsigned long rate,
>  	if (fd->approximation)
>  		fd->approximation(hw, rate, parent_rate, &m, &n);
>  	else
> -		clk_fd_general_approximation(hw, rate, parent_rate, &m, &n);
> +		clk_fractional_divider_general_approximation(hw, rate, parent_rate, &m, &n);
>  
>  	ret = (u64)*parent_rate * m;
>  	do_div(ret, n);
> diff --git a/drivers/clk/clk-fractional-divider.h b/drivers/clk/clk-fractional-divider.h
> new file mode 100644
> index 000000000000..4fa359a12ef4
> --- /dev/null
> +++ b/drivers/clk/clk-fractional-divider.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +struct clk_hw;
> +
> +void clk_fractional_divider_general_approximation(struct clk_hw *hw,
> +						  unsigned long rate,
> +						  unsigned long *parent_rate,
> +						  unsigned long *m,
> +						  unsigned long *n);
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index 049e5e0b64f6..b7be7e11b0df 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -22,6 +22,8 @@
>  #include <linux/regmap.h>
>  #include <linux/reboot.h>
>  #include <linux/rational.h>
> +
> +#include "../clk-fractional-divider.h"
>  #include "clk.h"
>  
>  /*
> @@ -178,10 +180,8 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
>  		unsigned long rate, unsigned long *parent_rate,
>  		unsigned long *m, unsigned long *n)
>  {
> -	struct clk_fractional_divider *fd = to_clk_fd(hw);
>  	unsigned long p_rate, p_parent_rate;
>  	struct clk_hw *p_parent;
> -	unsigned long scale;
>  
>  	p_rate = clk_hw_get_rate(clk_hw_get_parent(hw));
>  	if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
> @@ -190,18 +190,7 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
>  		*parent_rate = p_parent_rate;
>  	}
>  
> -	/*
> -	 * Get rate closer to *parent_rate to guarantee there is no overflow
> -	 * for m and n. In the result it will be the nearest rate left shifted
> -	 * by (scale - fd->nwidth) bits.
> -	 */
> -	scale = fls_long(*parent_rate / rate - 1);
> -	if (scale > fd->nwidth)
> -		rate <<= scale - fd->nwidth;
> -
> -	rational_best_approximation(rate, *parent_rate,
> -			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
> -			m, n);
> +	clk_fractional_divider_general_approximation(hw, rate, parent_rate, m, n);
>  }
>  
>  static struct clk *rockchip_clk_register_frac_branch(
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
