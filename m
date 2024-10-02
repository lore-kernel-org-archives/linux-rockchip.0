Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25783CF31A0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 08:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qbmo3qhMetZpmlgcW3F1dfUHJNGSqjAQJfcrRNYcJ70=; b=rJ6dUZC7PX3qMh
	MNIDYXf3WwgtjjWDtCqowduMN4wsHkAWVHmwPcMzUXPQ1bDMeNxukaus/irj5f69mD4or4sthReVm
	zD5cmPD7sd3JFgHsjyADlJL/1VDbubJm+AGL8x/O5s4GAPRp6EV4p0ZMYqZOyQR8EdfAZMKj7zb8A
	wkqG6uJlmxFPR/mTb5e11YaYBz9szwovxfqmIwFAILBQhvJwVxp3RJ3eStB76dIZwfbRgyvkliTR2
	8fIUQasTYcqPjq4y2MSVSLqZP4OFLc1GExdc2zobOAmP3QWjiF1F1nPv+Z8VVdgEyj7G8JVx/BFWB
	icWkP6B9jm+j8HW8xXjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svuYl-000000058tO-1AS6;
	Wed, 02 Oct 2024 08:18:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svuXV-000000058kg-0FX3;
	Wed, 02 Oct 2024 08:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6XX/IddAHu0DsNqgzpMUg94L+z/qNDIbA+BRdMiX+0Q=; b=QmQhCDm0eIlStLrzhgfkbtdh3q
	MOq7KBMzSsP9037c73W/A7vEmk3RjT1zVKhHGmEjPdYJFiLadzYG0sCOuhvNurheX5cGG/6cNdEy6
	SAZoBXnlQEp//fP+327dtYdcZvmPAE8a3bzoTPVSWOPUfid11mdpDQWyf2ADXTZKyfNgmvz23BjHn
	nzSwMJSl1AV4BRRvLDFI+j6DdDWJGRx+u/eoOtHUcekpf9kGw0og1v+lZYBhc0FVtIgY+d5rb+UBn
	J9Yct4VWGuHBetp9BulqntEode/M6TavMMLl1vNBzTwR+JyQ8w/BlyMKF2X+LfFAVabfJLcCx+9Gk
	1u/CE2ug==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svuXS-00036k-0G; Wed, 02 Oct 2024 10:16:50 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Yao Zi <ziyao@disroot.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Celeste Liu <CoelacanthusHex@gmail.com>,
 Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 4/8] clk: rockchip: Add PLL flag ROCKCHIP_PLL_FIXED_MODE
Date: Wed, 02 Oct 2024 10:16:49 +0200
Message-ID: <8495918.NyiUUSuA9g@diego>
In-Reply-To: <20241001042401.31903-6-ziyao@disroot.org>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-6-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_011653_136462_C52107DE 
X-CRM114-Status: GOOD (  23.82  )
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

Hi,

Am Dienstag, 1. Oktober 2024, 06:23:58 CEST schrieb Yao Zi:
> RK3528 comes with a new PLL type, flagged by ROCKCHIP_PLL_FIXED_MODE,
> which should operate in normal mode only. Add corresponding definition
> and handle it in code.
> 

More commit message would be nice ;-) .

It's the PPLL for the pcie controller that is specified in the manual to
only work in normal mode. This is helpful for people reading along :-) .


Heiko


> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  drivers/clk/rockchip/clk-pll.c | 10 ++++++----
>  drivers/clk/rockchip/clk.h     |  2 ++
>  2 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index 606ce5458f54..46be1c67301a 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -204,10 +204,12 @@ static int rockchip_rk3036_pll_set_params(struct rockchip_clk_pll *pll,
>  	rockchip_rk3036_pll_get_params(pll, &cur);
>  	cur.rate = 0;
>  
> -	cur_parent = pll_mux_ops->get_parent(&pll_mux->hw);
> -	if (cur_parent == PLL_MODE_NORM) {
> -		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
> -		rate_change_remuxed = 1;
> +	if (!(pll->flags & ROCKCHIP_PLL_FIXED_MODE)) {
> +		cur_parent = pll_mux_ops->get_parent(&pll_mux->hw);
> +		if (cur_parent == PLL_MODE_NORM) {
> +			pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
> +			rate_change_remuxed = 1;
> +		}
>  	}
>  
>  	/* update pll values */
> diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
> index fd3b476dedda..1efc5c3a1e77 100644
> --- a/drivers/clk/rockchip/clk.h
> +++ b/drivers/clk/rockchip/clk.h
> @@ -391,6 +391,7 @@ struct rockchip_pll_rate_table {
>   * Flags:
>   * ROCKCHIP_PLL_SYNC_RATE - check rate parameters to match against the
>   *	rate_table parameters and ajust them if necessary.
> + * ROCKCHIP_PLL_FIXED_MODE - the pll operates in normal mode only
>   */
>  struct rockchip_pll_clock {
>  	unsigned int		id;
> @@ -408,6 +409,7 @@ struct rockchip_pll_clock {
>  };
>  
>  #define ROCKCHIP_PLL_SYNC_RATE		BIT(0)
> +#define ROCKCHIP_PLL_FIXED_MODE		BIT(1)
>  
>  #define PLL(_type, _id, _name, _pnames, _flags, _con, _mode, _mshift,	\
>  		_lshift, _pflags, _rtable)				\
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
