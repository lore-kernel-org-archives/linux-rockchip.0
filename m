Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22343C02181
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 14:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7nyU7wTxvkzgA9Bjk6d2sZ1vOi5bYbiRFelCK8/d9w=; b=xO+G6wmrn0+Jvb
	FInauVwdT52oBoS/kN09K2CkSOInxdDRhJguQpknu95GmLKYnJaTB7rafcO6Licn6lOhITb+WOAG2
	clg/umR5ZIKjtWP/THztgI/YQitTobnpksp/HIgCOI82HaxK1tx2FJPRE1PROimIz4ZnMlFMxHs37
	5qvXkJB6LuYLY/aughCHRk7B3Vk9aOkYcLlZ7HProWvT56+lBlmwfUkGBGXPicfR3uc127hm2Wq2Y
	paVpd8MLbSJY3Bnu8r59guFJPKKYzBloyJy1VcPq+DLV58cXKsH/igg59Xf1ofQ10MKvzitcdFJ3P
	IsigfIQPUBB9/1LIIQ0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbKsE-0000000Es4e-0UWv;
	Fri, 24 Jan 2025 14:41:30 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbKsA-0000000Es3g-3RaB
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jan 2025 14:41:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1737729685;
 bh=MsYLWrXefMP5m34iCp3jAP9mKY5iNXf4rWORER2MwmY=;
 b=rQg8jYnUYWY8XkVGDpxAs8n3X2+BiEOV7nib8OG9aot3MiSy3pUnpntJj2T5iObAv8RRPda6u
 B9j4x0/VrSK+3ef2y7GIoCfwC9E6nRw/hTESPf0ErbTlQqs416t/ik8HVffLzeYXJRFmoRf/vDY
 I+hDVVZ4EOLThrVEYmJKBME6u1sGr+7rr4/fPOSBUX5CbADYLb9kpkiyzgrBAQeWvzGnzLknvde
 yq/E/CESp/QdgJ8dMbKyn0C4uxANCoPj/iSKv4uYL1rkuO4J/gtlTmNP+3QqarSjiZDfJ+L5i4s
 YSCsiRC7MluUfKrhhEcCBHXrioOKHlIMvMWCBb8NgwbQ==
X-Forward-Email-ID: 6793a67f3e07d3fa850557b4
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d95d317c-5f6e-42bd-94a9-e1a6c7685e2f@kwiboo.se>
Date: Fri, 24 Jan 2025 15:40:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] Revert "clk: rockchip: Set parent rate for
 DCLK_VOP clock on RK3228"
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250124064619.13893-1-zhangqing@rock-chips.com>
 <20250124064619.13893-2-zhangqing@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250124064619.13893-2-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_064127_200564_BD9C9D0A 
X-CRM114-Status: GOOD (  15.36  )
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

Hi Elaine,

On 2025-01-24 07:46, Elaine Zhang wrote:
> This reverts commit 1d34b9757523c1ad547bd6d040381f62d74a3189.
> 
> RK3228 Only GPLL and CPLL, GPLL is a common clock, does not allow
> dclk_vop to change its frequency, CPLL is used by GMAC,
> if dclk_vop use CLK_SET_RATE_PARENT and CLK_SET_RATE_NO_REPARENT flags will
> affect the GMAC function.

Please explain how CPLL and GPLL is affected by this? According to TRM
the hdmiphy is default parent (reset value), this is also how similar
clock is defined for RK3328.

  vop_pll_sel  
  Control vop clock PLL source selection.  
  1'b0: select hdmiphy pll clock (reset value)
  1'b1: select vop dclk

Maybe the dclk_vop name is causing confusion, or am I missing something?

Regards,
Jonas

> 
> If the client application does not use GMAC and CPLL is free, make this
> change on the local branch.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  drivers/clk/rockchip/clk-rk3228.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
> index ed602c27b624..9c0284607766 100644
> --- a/drivers/clk/rockchip/clk-rk3228.c
> +++ b/drivers/clk/rockchip/clk-rk3228.c
> @@ -409,7 +409,7 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
>  			RK2928_CLKSEL_CON(29), 0, 3, DFLAGS),
>  	DIV(0, "sclk_vop_pre", "sclk_vop_src", 0,
>  			RK2928_CLKSEL_CON(27), 8, 8, DFLAGS),
> -	MUX(DCLK_VOP, "dclk_vop", mux_dclk_vop_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
> +	MUX(DCLK_VOP, "dclk_vop", mux_dclk_vop_p, 0,
>  			RK2928_CLKSEL_CON(27), 1, 1, MFLAGS),
>  
>  	FACTOR(0, "xin12m", "xin24m", 0, 1, 2),


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
