Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8810E77171
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Dec 2024 08:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbVprBNGSbM8PhR2MCwVOHG1RmJTao3TVkLR/69V6vM=; b=V8jXICwBOwoZLn
	yBfVlLMa5mPcvXyYhDOpSO/2+Lq2zgbCOAVGuDyxDILfRCa9tBN2D144gYeKm3gQkC6pfdXPoMZf1
	mHLPM6rfWrlULR1H+Nn41DXdLm1+fkHGESmNb9G49cxiZMqByPv1XEvLvDr23JxwiCcshA0fq8pz1
	QX0J5TtHXFfgQ5bEDQQ2ZIdvUKaEZ82BC3owV0Q0qmiKy31LGdPV/2lNwlb/LDo3ymac2P0WMnEzE
	HLXX/y73UTW/g4cSIOagfyJoKgsmNuioKCnBmmTCa4a08hyXnnntjzkhKbagvhu46PewmvPTwgNUl
	Fq39tpy1Q0Rq2wh/Fg7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ7YD-0000000FERO-3ABo;
	Thu, 05 Dec 2024 08:49:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ7XC-0000000FEGd-2xTs;
	Thu, 05 Dec 2024 08:48:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=vkoVyy6uCpLzlhwSnm1vHxEsbOQ+nXvkDsqoKqIAe5Q=; b=c5SwmsafkScThU52BgeXHwt5UQ
	sKqFqY8Q0T6yQSZN/51TiMiH5OytpZmjvxdf3ehQHPPfQqQxcRgJOA2ytwDhzv1bQGv5o5G+6WoAx
	WUkFRhfnTjvSQ3Y7nZdfVSduLkGW2fcnAKyfK6iYFz92Xh4AI1ZEOx5CaF1rCHHxXCaCZUFPwa+VO
	/sTDZ5Y2NLo6t30SGn25U9IGVSLqnAbZdlgtFWzbaD6V43Sj0D9p4G29ccvmPFFlyqS7surSoZJ/p
	Q8GaSpU5YbfMp2oMyyio9TCnGlVIpadE+pQ3eU4COZlDPup3vX4pUApGYpH8jtTXKbDqOULB7s9Kb
	bnDg8PmQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ7X9-00000002oFa-3aIW;
	Thu, 05 Dec 2024 08:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vkoVyy6uCpLzlhwSnm1vHxEsbOQ+nXvkDsqoKqIAe5Q=; b=0ZtQ6DJEFHGEmBh1Tww482lN82
	Vej40ed98V17Tt6bWDap4Tpmedv9HxkoQiHuimmhMGDGmNn/+fK0cqEL2k1vz9Jv819Jrs6Z7Lva0
	7G4cw2t76SRONtp8KTTDxO9Aoce8kvvAcUq4SzOHNEr3rx4ZvP3pFPsQTixTivhmNnE47qVWSD0NM
	twujlr47srFp0AI9EPCQl48iZF4+bnCqslssmnvlvbEfI+NYRtMyokpPV4Z6cTdRWsGOBIYAt8vf/
	P9mYZjdcHuJbsLLd9iezUv+i2D7tCE4yHAqhOEqDxzaJtaPk3iqKnmgwa2Rp0fPO9FiymiVHbgMMA
	TU2AdtIg==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tJ7Wz-0001jK-VE; Thu, 05 Dec 2024 09:48:17 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Val Packett <val@packett.cool>
Cc: Val Packett <val@packett.cool>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: add clock ID for CIF0/1 on RK3066
Date: Thu, 05 Dec 2024 09:48:17 +0100
Message-ID: <5336726.6fTUFtlzNn@diego>
In-Reply-To: <20241205055122.11613-1-val@packett.cool>
References: <20241205055122.11613-1-val@packett.cool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_084828_074625_88733797 
X-CRM114-Status: GOOD (  18.87  )
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

Hi Val,

Am Donnerstag, 5. Dezember 2024, 06:50:46 CET schrieb Val Packett:
> RK3066 does have two "CIF" video capture interface blocks, add their
> corresponding clock IDs so that they could be used.
> 
> Signed-off-by: Val Packett <val@packett.cool>

please split this into two patches
- addition of the clock-ids to the dt-binding header
- setting the clock-ids in the clock driver

Thanks
Heiko

> ---
>  drivers/clk/rockchip/clk-rk3188.c             | 4 ++--
>  include/dt-bindings/clock/rk3188-cru-common.h | 2 ++
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
> index 684233e72105..81e94b338d0f 100644
> --- a/drivers/clk/rockchip/clk-rk3188.c
> +++ b/drivers/clk/rockchip/clk-rk3188.c
> @@ -344,7 +344,7 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
>  
>  	GATE(0, "pclkin_cif0", "ext_cif0", 0,
>  			RK2928_CLKGATE_CON(3), 3, GFLAGS),
> -	INVERTER(0, "pclk_cif0", "pclkin_cif0",
> +	INVERTER(PCLK_CIF0, "pclk_cif0", "pclkin_cif0",
>  			RK2928_CLKSEL_CON(30), 8, IFLAGS),
>  
>  	FACTOR(0, "xin12m", "xin24m", 0, 1, 2),
> @@ -602,7 +602,7 @@ static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
>  
>  	GATE(0, "pclkin_cif1", "ext_cif1", 0,
>  			RK2928_CLKGATE_CON(3), 4, GFLAGS),
> -	INVERTER(0, "pclk_cif1", "pclkin_cif1",
> +	INVERTER(PCLK_CIF1, "pclk_cif1", "pclkin_cif1",
>  			RK2928_CLKSEL_CON(30), 12, IFLAGS),
>  
>  	COMPOSITE(0, "aclk_gpu_src", mux_pll_src_cpll_gpll_p, 0,
> diff --git a/include/dt-bindings/clock/rk3188-cru-common.h b/include/dt-bindings/clock/rk3188-cru-common.h
> index 01e14ab252a7..dd988cc9d582 100644
> --- a/include/dt-bindings/clock/rk3188-cru-common.h
> +++ b/include/dt-bindings/clock/rk3188-cru-common.h
> @@ -103,6 +103,8 @@
>  #define PCLK_PERI		351
>  #define PCLK_DDRUPCTL		352
>  #define PCLK_PUBL		353
> +#define PCLK_CIF0		354
> +#define PCLK_CIF1		355
>  
>  /* hclk gates */
>  #define HCLK_SDMMC		448
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
