Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0757C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 09:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTkB2h01zN2mjL0wpVzrt9lCYkqrVTfQwUIL1YeUxio=; b=e7e7YWjmTBjBa2
	c3847UyNHETUqUOkESOzoSIh5/cLPOIGsayDVTcJomqJoZoO/RinDaTpdSrdYSoMLGBsERSEuQpr3
	eP+phELeFEYa4AMD5MOX5oCVZk9LOXg7z8vnjWpDHrGud+1I9oZ/wKtl27vsJMk1gFYFzRhO9m/sA
	hArdI2hgxuO+OuQXjwlMzEc2NMgmeo2x90OgR88aSugly/tQK5ub/PlOU3XXlHwhnOhFSEP6/Ve7S
	o6bIEF9TRoJx48H7PWgVsV2q5QA7ntEegUKYh276eTUCSaNhPluybbTZs4YAh95Toe6pMWIjHWn8W
	WrMJLplTdcxygYxej3sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxldl-00FkhD-Aw; Wed, 23 Nov 2022 09:01:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxldZ-00Fkbg-RK; Wed, 23 Nov 2022 09:01:47 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxldM-0006px-PE; Wed, 23 Nov 2022 10:01:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, sboyd@kernel.org, mturquette@linaro.org, Xiu Jianfeng <xiujianfeng@huawei.com>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: Fix memory leak in rockchip_clk_register_pll()
Date: Wed, 23 Nov 2022 10:01:30 +0100
Message-ID: <6301679.31r3eYUQgx@phil>
In-Reply-To: <20221123032237.64567-1-xiujianfeng@huawei.com>
References: <20221123032237.64567-1-xiujianfeng@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_010145_918204_8F3FE1B1 
X-CRM114-Status: GOOD (  18.48  )
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

Am Mittwoch, 23. November 2022, 04:22:37 CET schrieb Xiu Jianfeng:
> If clk_register() fails, @pll->rate_table may have allocated memory by
> kmemdup(), so it needs to be freed, otherwise will cause memory leak
> issue, this patch fixes it.
> 
> Fixes: 90c590254051 ("clk: rockchip: add clock type for pll clocks and pll used on rk3066")
> Signed-off-by: Xiu Jianfeng <xiujianfeng@huawei.com>
> ---
>  drivers/clk/rockchip/clk-pll.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index 4b9840994295..dc4ce280d125 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -1200,6 +1200,7 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
>  	clk_unregister(mux_clk);
>  	mux_clk = pll_clk;
>  err_mux:
> +	kfree(pll->rate_table);

I think this free needs to go up to the err_pll block.

In the code it is
- clk_register(pll_mux->hw)   -> err_mux
- kmemdup
- clk_register(pll->hw)	-> err_pll

so the kfree for the rate-table should probably
be at
	err_pll:
		kfree(rate_table)
		clk_unregister(mux_clk);
		...


Heiko

>  	kfree(pll);
>  	return mux_clk;
>  }
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
