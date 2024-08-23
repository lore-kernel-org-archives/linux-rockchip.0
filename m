Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 405C6C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 05:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XZ9hPGg/FgkqDPHl6P3SLvzqaDEiTfyVZEjEXd0wsqA=; b=EGzxTqwU77ZbjgD6NUkMid9yki
	oYpgvhY+2Sl7lFiL4+QNMuQ8QnE6n3NsQvHi5RdOY+Y97xiPY7tbwuCPQFWdpbCcxKtpfZvBrN9kG
	sKI7UpxJQUDwyrgdTntsrjYWtalToNL4F++cIADJ25Dh2+wQmWh+Lnw0J/LMMk9InW6mvv6SrPYgB
	XK8Ydxv5SdSX6iNC8up6ZbiCwsWXI0pi//Tk9tTV2jXmda3qSK8uh5HesarADzxQf3Tjb6k4uIH0h
	WsElqXf1YRkTd+HpKQlKp2ueddLEIrM0s6ThyJnzDxrUnYW3SBEgU+rjGYmR9gBhxrkWYpu2bx9gh
	LRdwY0uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shMjO-0000000FI2Y-2aJB;
	Fri, 23 Aug 2024 05:21:02 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shMid-0000000FHv8-05ZP;
	Fri, 23 Aug 2024 05:20:16 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724390413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7E/u42pJNxk5be6E2/2XU4a6u/o0sOR6tbh89n5oThc=;
	b=wMIYuRmPDknAgxp71sNt2tRfbbIfw5LBNaq29wmvGT78kd1A1LnSSq5jmrk27/Ms+/sq0R
	yP9t/3zvRkz9nM8ShzOpH5snCf7SxNMdZaWuSXUgBl7EhRezXkK+PnwQy0SP2K1Njc1DmR
	Rmcr36ZQ5puZMngpP6VruF+cxC/jOAgHlClCoxw44v1wmkieJf37svzltY3Mg3XxjhsVQ6
	/Yr1Un20ze7AAgKR9v+4gnt1qrxfUhcm1/aMpWtsIyAzV3joVmzqwD32vCI7U9urtR3rz6
	XwCIPAXMFoUkmmJ/UX13BH8HO5BT04rYD6OqsGQ9rN25wfEjWoDJTIKWteoexg==
Date: Fri, 23 Aug 2024 07:20:13 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Linus
 Walleij <linus.walleij@linaro.org>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Shresth Prasad
 <shresthprasad7@gmail.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, Sascha Hauer
 <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 2/4] grf: rk3576: Add default GRF values
In-Reply-To: <20240822195706.920567-3-detlev.casanova@collabora.com>
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
 <20240822195706.920567-3-detlev.casanova@collabora.com>
Message-ID: <b310ade62af0ade2c157177dc5b205e8@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_222015_529179_B0CDB613 
X-CRM114-Status: GOOD (  16.39  )
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

On 2024-08-22 21:53, Detlev Casanova wrote:
> Set SW controlled i3c weak pull up and disable JTAG function on SDMMC 
> IO.
> 
> The i3c weak pull up is activated to let all gpio banks be controlled
> by the pinctrl driver.
> 
> Disabling the JTAG function lets the SDMMC core use its full IO width.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Thanks for the patch.  I had a rather detailed look at the patch,
while focusing on having no regressions introduced, and I found none.
So, please feel free to include:

Acked-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  drivers/soc/rockchip/grf.c | 30 +++++++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
> index 5fd62046b28a..4607fc0779e7 100644
> --- a/drivers/soc/rockchip/grf.c
> +++ b/drivers/soc/rockchip/grf.c
> @@ -121,6 +121,29 @@ static const struct rockchip_grf_info
> rk3566_pipegrf __initconst = {
>  	.num_values = ARRAY_SIZE(rk3566_defaults),
>  };
> 
> +#define RK3576_SYSGRF_SOC_CON1		0x0004
> +
> +static const struct rockchip_grf_value rk3576_defaults_sys_grf[]
> __initconst = {
> +	{ "i3c0 weakpull", RK3576_SYSGRF_SOC_CON1, HIWORD_UPDATE(3, 3, 6) },
> +	{ "i3c1 weakpull", RK3576_SYSGRF_SOC_CON1, HIWORD_UPDATE(3, 3, 8) },
> +};
> +
> +static const struct rockchip_grf_info rk3576_sysgrf __initconst = {
> +	.values = rk3576_defaults_sys_grf,
> +	.num_values = ARRAY_SIZE(rk3576_defaults_sys_grf),
> +};
> +
> +#define RK3576_IOCGRF_MISC_CON		0x04F0
> +
> +static const struct rockchip_grf_value rk3576_defaults_ioc_grf[]
> __initconst = {
> +	{ "jtag switching", RK3576_IOCGRF_MISC_CON, HIWORD_UPDATE(0, 1, 1) },
> +};
> +
> +static const struct rockchip_grf_info rk3576_iocgrf __initconst = {
> +	.values = rk3576_defaults_ioc_grf,
> +	.num_values = ARRAY_SIZE(rk3576_defaults_ioc_grf),
> +};
> +
>  #define RK3588_GRF_SOC_CON6		0x0318
> 
>  static const struct rockchip_grf_value rk3588_defaults[] __initconst = 
> {
> @@ -132,7 +155,6 @@ static const struct rockchip_grf_info
> rk3588_sysgrf __initconst = {
>  	.num_values = ARRAY_SIZE(rk3588_defaults),
>  };
> 
> -
>  static const struct of_device_id rockchip_grf_dt_match[] __initconst = 
> {
>  	{
>  		.compatible = "rockchip,rk3036-grf",
> @@ -158,6 +180,12 @@ static const struct of_device_id
> rockchip_grf_dt_match[] __initconst = {
>  	}, {
>  		.compatible = "rockchip,rk3566-pipe-grf",
>  		.data = (void *)&rk3566_pipegrf,
> +	}, {
> +		.compatible = "rockchip,rk3576-sys-grf",
> +		.data = (void *)&rk3576_sysgrf,
> +	}, {
> +		.compatible = "rockchip,rk3576-ioc-grf",
> +		.data = (void *)&rk3576_iocgrf,
>  	}, {
>  		.compatible = "rockchip,rk3588-sys-grf",
>  		.data = (void *)&rk3588_sysgrf,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
