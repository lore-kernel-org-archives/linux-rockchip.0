Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F39A9C27C52
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 10:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUfT9fw+3y4aI5yDTJ0rPkhdJ/Vf6Olwov61enOrgNY=; b=ytThub+4OiqLum
	9Q4IoVQmHI/R1up0/AeRippMcOjc3Vso+2N4zoJiYMiVg/dKRziRsHDFwYHzmFXm3Buuk7iut0F46
	8M7CXTvC3DMWztZPavLjCbE+nBMBdM/7FCX5Q4/dbvdi2V99xLMvMqos5lYC5cTQkIf2G4D+bAwyz
	aFVeFIBxuP5xujN9D7AEu2yjj03Md0W+L+FKeLrDvR9u0LUedy+R0//sXIBNfKFHxXSwLRS7Llu6z
	BkQ8s775ild/8zWMnB1xAf9EY94GYsEi84OfSGw0Co10X97QdEcbYyckgJKxLVRYCbLmsUO2qFngj
	8jP55pPDZqz8X8D3DA/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFA2y-00000009KPL-2IiT;
	Thu, 06 Jun 2024 10:08:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFA2v-00000009KOA-1rWG;
	Thu, 06 Jun 2024 10:08:38 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFA2t-0007q0-Lu; Thu, 06 Jun 2024 12:08:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Huang-Huang Bao <i@eh5.me>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Huang-Huang Bao <i@eh5.me>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: fix RK3328 pinmux bits
Date: Thu, 06 Jun 2024 12:08:34 +0200
Message-ID: <3862456.FjKLVJYuhi@diego>
In-Reply-To: <20240606060435.765716-2-i@mail.eh5.me>
References: <20240606060435.765716-1-i@eh5.me> <20240606060435.765716-2-i@mail.eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_030837_522422_8579FBAE 
X-CRM114-Status: GOOD (  25.09  )
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

Am Donnerstag, 6. Juni 2024, 08:04:33 CEST schrieb Huang-Huang Bao:
> The pinmux bits for GPIO2-B0 to GPIO2-B6 actually have 2 bits width,
> correct the bank flag for GPIO2-B. The pinmux bits for GPIO2-B7 is
> recalculated so it remain unchanged.

I've verified the gpio2-related pin settings via the TRM, so this part
looks good :-)


> The pinmux bits for GPIO3-B1 to GPIO3-B6 have different register offset
> than common rockhip pinmux, set the correct value for those pins in
> rk3328_mux_recalced_data.
> 
> The pinmux bits for those pins are not explicitly specified in RK3328
> TRM, however we can get hint from pad name and its correspinding IOMUX
> setting for pins in interface descriptions, e.g.
> IO_SPIclkm0_GPIO2B0vccio5 with GRF_GPIO2B_IOMUX[1:0]=2'b01 setting.
> 
> This fix has been tested on NanoPi R2S for fixing confliting pinmux bits
> between GPIO2-15 with GPIO2-13.

As you said, the gpio3-based pins are not documented in the TRM,
but in your description above you're talking about pins in the gpio2-
group?

So where did the gpio3-related pin information come from?

Also, could you please split this patch in two pieces, one fixing the
gpio2-area and one for the new gpio3 pins please?


Thanks
Heiko

> Signed-off-by: Huang-Huang Bao <i@eh5.me>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 59 ++++++++++++++++++++++++++----
>  1 file changed, 52 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 3bedf36a0019..23531ea0d088 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -634,23 +634,68 @@ static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
>  
>  static struct rockchip_mux_recalced_data rk3328_mux_recalced_data[] = {
>  	{
> -		.num = 2,
> -		.pin = 12,
> -		.reg = 0x24,
> -		.bit = 8,
> -		.mask = 0x3
> -	}, {
> +		/* gpio2_b7_sel */
>  		.num = 2,
>  		.pin = 15,
>  		.reg = 0x28,
>  		.bit = 0,
>  		.mask = 0x7
>  	}, {
> +		/* gpio2_c7_sel */
>  		.num = 2,
>  		.pin = 23,
>  		.reg = 0x30,
>  		.bit = 14,
>  		.mask = 0x3
> +	}, {
> +		/* gpio3_b1_sel */
> +		.num = 3,
> +		.pin = 9,
> +		.reg = 0x44,
> +		.bit = 2,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b2_sel */
> +		.num = 3,
> +		.pin = 10,
> +		.reg = 0x44,
> +		.bit = 4,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b3_sel */
> +		.num = 3,
> +		.pin = 11,
> +		.reg = 0x44,
> +		.bit = 6,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b4_sel */
> +		.num = 3,
> +		.pin = 12,
> +		.reg = 0x44,
> +		.bit = 8,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b5_sel */
> +		.num = 3,
> +		.pin = 13,
> +		.reg = 0x44,
> +		.bit = 10,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b6_sel */
> +		.num = 3,
> +		.pin = 14,
> +		.reg = 0x44,
> +		.bit = 12,
> +		.mask = 0x3
> +	}, {
> +		/* gpio3_b7_sel */
> +		.num = 3,
> +		.pin = 15,
> +		.reg = 0x44,
> +		.bit = 14,
> +		.mask = 0x3
>  	},
>  };
>  
> @@ -3763,7 +3808,7 @@ static struct rockchip_pin_bank rk3328_pin_banks[] = {
>  	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", 0, 0, 0, 0),
>  	PIN_BANK_IOMUX_FLAGS(1, 32, "gpio1", 0, 0, 0, 0),
>  	PIN_BANK_IOMUX_FLAGS(2, 32, "gpio2", 0,
> -			     IOMUX_WIDTH_3BIT,
> +			     0,
>  			     IOMUX_WIDTH_3BIT,
>  			     0),
>  	PIN_BANK_IOMUX_FLAGS(3, 32, "gpio3",
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
