Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 240D3C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 05:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TJNd7IvZMIbO9eTxxycFu5xu6sBsPcWcpGus85SL6i8=; b=eNeWcXC48CM3CRMSqyI5Ui0kcY
	t83W0Lwdc5U78z2cgdqj2Jp/atpdTDJh+zD0/JEsLc7rlEUVH/HH2zVQ/tHvZ2TG+NxvXgOTGSI1R
	4MNYiUKhsndfeqzm+FGnn2dDY3b4AlorLTMAXpYOCLdCJLfbyBOlkvNNvuyqlftwH/3qnlFseq5GA
	gAcPA+dJE9AKzRWV4pi1uBIf8cQ9oShVxWDqF8mgJ5rk2/hE6JyFT8H5zvEPlQ3BHcjzKyhqyzeI5
	l73rebMlMTGCRc9hmZ6T26DXkmhL/9rLLVESGK3LRzUq+piMkh1tPWZFvasD2W6wPq4Ec13C/8MG8
	2KJUCmMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shMeS-0000000FHKo-2CWv;
	Fri, 23 Aug 2024 05:15:56 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shMde-0000000FHAg-1Xvw;
	Fri, 23 Aug 2024 05:15:08 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724390103;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qJ/dYXoEhpDVuQVnSYfBj14wdjtqMAfTyvwy7dxgMAE=;
	b=aYvTZdC6zh6xylfVznMaRkfyM/qJAUChkSgb+7jUoYDeXx73Y2/Knz2Bpsc1w5lCRrqKvl
	5Xd9b/6CQ6APdtMIQkHL5z9Y4QFjgIUUzLPAQR9aoFfgBj9qx7r5BhMzZ6OwPyZgtAD0jV
	TgCdZc8fLupAPpW3ZazlK1iJnsKX3IQ7JXFyQdxdAe084IhqsmprlptXz0x44tvNgFZnMf
	YZebmRrVk2Lea2r8Qdcx9ItIGk3Sb/hV6x8G4JLLbz1eZH7ghH+UkqSKp+vRMTF8mDcUom
	XxnCzxvPMzhfT19cLgvFJOjjwbHeFHFjXbxHO3NlohgQMpai2O58kQhfXuuaBg==
Date: Fri, 23 Aug 2024 07:15:03 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel
 <p.zabel@pengutronix.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 2/3] clk: rockchip: Add new pll type pll_rk3588_ddr
In-Reply-To: <20240822194956.918527-3-detlev.casanova@collabora.com>
References: <20240822194956.918527-1-detlev.casanova@collabora.com>
 <20240822194956.918527-3-detlev.casanova@collabora.com>
Message-ID: <a0fb5f60e53b7862a6303032339b306b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_221507_049805_B949AB6C 
X-CRM114-Status: GOOD (  18.10  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Detlev,

On 2024-08-22 21:49, Detlev Casanova wrote:
> From: Elaine Zhang <zhangqing@rock-chips.com>
> 
> That PLL type is similar to the other rk3588 pll types but the actual
> rate is twice the configured rate.
> Therefore, the returned calculated rate must be multiplied by two.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> (cherry picked from commit c99648df60d3763723de9e443b862da44e8872fe)
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Thanks for the patch.  I had a rather detailed look at the patch,
while focusing on having no regressions introduced, and I found none.
So, please feel free to include:

Acked-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  drivers/clk/rockchip/clk-pll.c | 6 +++++-
>  drivers/clk/rockchip/clk.h     | 1 +
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/rockchip/clk-pll.c 
> b/drivers/clk/rockchip/clk-pll.c
> index 606ce5458f54..fe76756e592e 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -914,7 +914,10 @@ static unsigned long
> rockchip_rk3588_pll_recalc_rate(struct clk_hw *hw, unsigned
>  	}
>  	rate64 = rate64 >> cur.s;
> 
> -	return (unsigned long)rate64;
> +	if (pll->type == pll_rk3588_ddr)
> +		return (unsigned long)rate64 * 2;
> +	else
> +		return (unsigned long)rate64;
>  }
> 
>  static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll 
> *pll,
> @@ -1167,6 +1170,7 @@ struct clk *rockchip_clk_register_pll(struct
> rockchip_clk_provider *ctx,
>  		break;
>  	case pll_rk3588:
>  	case pll_rk3588_core:
> +	case pll_rk3588_ddr:
>  		if (!pll->rate_table)
>  			init.ops = &rockchip_rk3588_pll_clk_norate_ops;
>  		else
> diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
> index fd3b476dedda..40fc0e4703c1 100644
> --- a/drivers/clk/rockchip/clk.h
> +++ b/drivers/clk/rockchip/clk.h
> @@ -287,6 +287,7 @@ enum rockchip_pll_type {
>  	pll_rk3399,
>  	pll_rk3588,
>  	pll_rk3588_core,
> +	pll_rk3588_ddr,
>  };
> 
>  #define RK3036_PLL_RATE(_rate, _refdiv, _fbdiv, _postdiv1,	\

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
