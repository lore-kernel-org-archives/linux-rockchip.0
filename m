Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EAFACF31A0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 08:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMZ14Rr+lyK1BWDZNqpG0lI948Vwv/KSi4yAa+j6JAM=; b=BTD2SgZUTj+kvt
	cCd5JR8P/wNp9urigJUmhdW6o0E/e9ShtjGZtT2smVQnl43uQoUhNN+NuLYeFjmmAKZ5sysckRoin
	yhA+bWvMhf8YVc1fL7Lkb6xWIcGHO7PRyu0yZ+Vtds0rv4ls+sNhcalfHL99Fa6zgRq1EHSwbEuGP
	6KGfKmvxjkou3NNSOOvs4dBYaduZXE5Hggv0uSUcH0w+Qq6suHj91fxk1qDyl1uqnI3sd119pPYs6
	Ctr17GvnRX8yF5TTkxRFuBr8/n661GHYuoIWkzY1eVGOT8lpmZQhtzdzQpy3rxB8qs4k5kWH1ekuY
	ZsJtOCz0ykpoTODuZr7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svuRZ-000000057TK-1lqO;
	Wed, 02 Oct 2024 08:10:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svuPb-000000057DE-3M6q;
	Wed, 02 Oct 2024 08:08:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ngZtLcRpFZYEbU0cMN+iS53JV9+mVWdy4I6j/UNOpVw=; b=urmDZD4S+Y2oCsXJ4MD08zWl5l
	arUKRdHB7l9nAkmsR0W2b6X0ziIKcpXmG396MxhfeEhMouCL+LbSm3eUtTo6ObaJTKG8mPTEu3lcx
	4qWdk1yjb6vgDGRr3ph9Nq+gPlr1AMXD9wsd/enyc3m9fcdiu3wBoD/FSshzPBgicmezKCUazb0uX
	s3+a/KXlsHmRmxebWrbcV0CREV/kxeA2K217roa4879uq83QWb8kGzK7bLbsKP/axjLvqmIezjbxI
	Ap4vte2UAMt6CcbtQZRG/XqY5w9+IU17FP3Hr5XJytfnwedY6AjzWC3tVRbrY50fWWRXXPmTfHHB8
	v/BwwHbw==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svuPV-0002ye-TS; Wed, 02 Oct 2024 10:08:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Yao Zi <ziyao@disroot.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Celeste Liu <CoelacanthusHex@gmail.com>,
 Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 5/8] clk: rockchip: Add clock type GATE_NO_SET_RATE
Date: Wed, 02 Oct 2024 10:08:36 +0200
Message-ID: <9365795.CDJkKcVGEf@diego>
In-Reply-To: <20241001042401.31903-7-ziyao@disroot.org>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-7-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_010843_895938_04740339 
X-CRM114-Status: GOOD (  18.94  )
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

Am Dienstag, 1. Oktober 2024, 06:23:59 CEST schrieb Yao Zi:
> This clock type is similar to GATE, but doesn't allow rate setting,
> which presents on RK3528 platform.

this definitly needs more explanation in the commit message.

I.e. regular individual gates always set the CLK_SET_RATE_PARENT flag
because of course the gates themselfs cannot influence the rate.


But in general, I'm also not convinced yet. Yes if some driver tries to
change the rate on those, it may affect the parent rate, but that is also
true for the other individual gates.

So what makes aclk_emmc (as GATE_NO_SET_RATE) more special than
"hclk_emmc" (as regular GATE). [Same for the other clocks of course] .


So this either needs more explanation, or for the sake of simplicity
use regular GATE for now for those and we revisit when it becomes
necessary.


Heiko


> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  drivers/clk/rockchip/clk.c |  8 ++++++++
>  drivers/clk/rockchip/clk.h | 14 ++++++++++++++
>  2 files changed, 22 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> index 73d2cbdc716b..7d233770e68b 100644
> --- a/drivers/clk/rockchip/clk.c
> +++ b/drivers/clk/rockchip/clk.c
> @@ -521,6 +521,14 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
>  		case branch_gate:
>  			flags |= CLK_SET_RATE_PARENT;
>  
> +			clk = clk_register_gate(NULL, list->name,
> +				list->parent_names[0], flags,
> +				ctx->reg_base + list->gate_offset,
> +				list->gate_shift, list->gate_flags, &ctx->lock);
> +			break;
> +		case branch_gate_no_set_rate:
> +			flags &= ~CLK_SET_RATE_PARENT;
> +
>  			clk = clk_register_gate(NULL, list->name,
>  				list->parent_names[0], flags,
>  				ctx->reg_base + list->gate_offset,
> diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
> index 1efc5c3a1e77..360d16402fe5 100644
> --- a/drivers/clk/rockchip/clk.h
> +++ b/drivers/clk/rockchip/clk.h
> @@ -519,6 +519,7 @@ enum rockchip_clk_branch_type {
>  	branch_divider,
>  	branch_fraction_divider,
>  	branch_gate,
> +	branch_gate_no_set_rate,
>  	branch_mmc,
>  	branch_inverter,
>  	branch_factor,
> @@ -844,6 +845,19 @@ struct rockchip_clk_branch {
>  		.gate_flags	= gf,				\
>  	}
>  
> +#define GATE_NO_SET_RATE(_id, cname, pname, f, o, b, gf)	\
> +	{							\
> +		.id		= _id,				\
> +		.branch_type	= branch_gate_no_set_rate,	\
> +		.name		= cname,			\
> +		.parent_names	= (const char *[]){ pname },	\
> +		.num_parents	= 1,				\
> +		.flags		= f,				\
> +		.gate_offset	= o,				\
> +		.gate_shift	= b,				\
> +		.gate_flags	= gf,				\
> +	}
> +
>  #define MMC(_id, cname, pname, offset, shift)			\
>  	{							\
>  		.id		= _id,				\
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
