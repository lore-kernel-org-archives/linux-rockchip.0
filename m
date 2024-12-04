Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5577E7716D
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Dec 2024 05:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wHOo77BBDD7lDXhXGHU5Z6dGpnyUJZgLNb8lVBEerXc=; b=dXDjocisq3AxXkt5FCZ+s6zuN5
	zku5awEiQBgazYiE78e1O49eGliptvlVNRfO3e9TZsKrKqkMnXEGutAIteyk5A+/nfcLa7cAu5wgL
	CEeZ71+p88qZk/BcooZikQDl2CpercbNa6TQjMdfHpDQmxiwbBgSwVsQNzfBpBjHExrgAztq9Y18i
	OxMxA47Wuvu81Q9Az9Ej8oOB8QgaRqbXOZHogmfQuRPB/g71iFbuFAvpPS3pZslFpOfUAF5WLIwgT
	FkN1E9q9xEgoN7quPcXfH2/sl2Ap/W2FJiAr4RttsYXajVcs9V1mkiBVrr4GPJ8qHdF/9/D5Q41NR
	0SEpuUiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIhzg-0000000BWv2-3w40;
	Wed, 04 Dec 2024 05:32:12 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIhze-0000000BWub-1Cf9
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Dec 2024 05:32:11 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733290325;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Az5A+rRdCT+65dWELbjmGzucu2S59JBdQaqLrwEHadw=;
	b=Bvvj9Ls2Cr3DuxHyKHd72SdJVenXMbAFJ+W6dI22xe4NOZOqVRsMrUdJ7Tu5tywLZGXTRe
	swL2E2QZ5muv5SZ9v0FOu1FbnHJAmPFrWWjeuwga2fjByZUdWAjqLhXjSsZt0U9V332iAl
	UWC/Tx6NBp1Vkz2gs/5TUEtvo2jVtZL+kGvpaaO39rbl0Pq00LGo/F3g5ge+MwyyyiSy6p
	zFj+iU/MKxVVNbxgnHCC9mxAgNIT/rJcYEZ2vGwk5AVvPOBiLpeiZ7LRZ2V+EeT8qAm+0S
	+6feBGlcm8OPgILU5uBFZ/oLtYWPyjMdcJIl0uaRCkMwF/TLnp0BY4t3xkJAQg==
Date: Wed, 04 Dec 2024 06:32:04 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add package_thermal for Radxa
 ROCK 5A/5C
In-Reply-To: <20241204045447.1036-1-naoki@radxa.com>
References: <20241204045447.1036-1-naoki@radxa.com>
Message-ID: <71aa84af7a030e66487076e0976c8cad@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_213210_642390_6A1F8FEB 
X-CRM114-Status: GOOD (  16.50  )
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

Hello Fukaumi,

Please, see a few comments below.

On 2024-12-04 05:54, FUKAUMI Naoki wrote:
> add and enable package temperature based active cooling.

I'd suggest that you rewrite the patch summary to read like this:

   arm64: dts: rockchip: Enable automatic fan control on Rock 5A/5C

and to rewrite the patch description like this, which is a recycled
and a bit improved description of the commit 4a152231b050 ("arm64:
dts: rockchip: enable automatic fan control on Rock 5B"):

   Link the PWM fan on Radxa ROCK 5A/5C as an active cooling device
   managed automatically by the thermal subsystem, with a target SoC
   temperature of 65 oC and a minimum-spin interval from 55 oC to
   65 oC, to ensure airflow when the system gets warm.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> this patch depends on [1] which depends on [2].
> 
> [1] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241128121929.62646-1-naoki@radxa.com/
> [2] 
> https://patchwork.kernel.org/project/linux-rockchip/patch/20241119095113.78151-1-naoki@radxa.com/
> ---
>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 32 ++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> index a8f40f43c838..a1cac40d439e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> @@ -33,7 +33,7 @@ analog-sound {
>  			  "Headphone", "Headphones";
>  	};
> 
> -	fan {
> +	fan: fan {

It would be better to use "fan: pwm-fan { ... }", to ensure some kind
of consistency with the other similar portions of board dts files.

>  		compatible = "pwm-fan";
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;
> @@ -379,6 +379,36 @@ rgmii_phy1: ethernet-phy@1 {
>  	};
>  };
> 
> +&package_thermal {
> +	polling-delay = <1000>;
> +
> +	trips {
> +		package_fan0: package-fan0 {
> +			hysteresis = <2000>;
> +			temperature = <55000>;
> +			type = "active";
> +		};
> +
> +		package_fan1: package-fan1 {
> +			hysteresis = <2000>;
> +			temperature = <65000>;
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map0 {
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +			trip = <&package_fan0>;
> +		};
> +
> +		map1 {
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +			trip = <&package_fan1>;
> +		};
> +	};
> +};
> +
>  &pcie2x1l2 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie20x1_2_perstn_m0>,

The rest of the patch is looking good to me.  Thanks for the patch!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
