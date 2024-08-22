Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7178C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 21:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+kAMaau+wnx8h0XGNwfdcRw9nO+gqlmMvkL+3UVh1M=; b=xsbxkvNtXp343H
	sR2UUwMGcnwQjX82fZ4JH3QqZzcpcZnK1MfFlAs89skMMzATl2MqnsTXe2TIvDc3LGAfFySgiiXtg
	OoDchdAZMrb66juv1bRe61xGPgJouoS60Fp3xVux99WFfc2Zf5KFHu4qKpQc3mXvIRT2hMxqAW0KV
	2ojI58Y+Oqo7r1DE0+AD1OFtfCdSG/q5NJFLpOVKUB8/2Ce/m9SiY3t95jIQrWx294QkxR5zwTFUO
	AQoOLrboVwnKCfQfEC51pZ+NcHkBtKvHhL3+e+jA2c93m1KOKPHtEVgH0lHQ/TrsERzeInsGDpm4T
	AzL6gY1uSw0HD9TULXEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shEud-0000000EJ6M-1WNx;
	Thu, 22 Aug 2024 21:00:07 +0000
Received: from smtp.forwardemail.net ([164.92.70.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shEua-0000000EJ4m-0vd0
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Aug 2024 21:00:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724360396;
 bh=7CTeAZ67/8TnQ6dDu7507qtJ44KBopnAcVuGKbx0BFQ=;
 b=l8Ir/HHYAF95gLpmDrth64Wpf2X0Za4zvU2w+93FeVYRW1UCtVuuqES3iaY9SXNc+5Vo4h37g
 9SHZNoRvTAi+973TbitfnjDEojjYAxmSqooSgPCz7/KtbZc2hD/6t6sewDMpv/EvvHToQkdmJG6
 RkSZTrNqcAp16zWqZ7sCjJ2lqyRGxuXRsch9z8QXLCeOGRLGBS5AMzly1YzFzLZRVYWWXPSM8JJ
 iwBfxAAbBeFeAhUcSaP264mysrTrAMP7TABYl3og5KpoVYUX2ICWbqc7lWP/QxXfRg+ot3d3mUf
 YVOmaFt/ibf6yJ+hUP9nVolWE2zJCd8hC29BXIvYU1cA==
Message-ID: <50d768c7-56f1-4a60-b6bd-e31fe7448f33@kwiboo.se>
Date: Thu, 22 Aug 2024 22:59:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] arm64: dts: rockchip: add IR-receiver to NanoPC-T6
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-5-892aebcec0c6@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-5-892aebcec0c6@linaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 164.92.70.200
X-ForwardEmail-ID: 66c7a6c79c6972850a4e99fa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_140004_298539_2D377295 
X-CRM114-Status: GOOD (  13.88  )
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

Hi Marcin,

On 2024-08-22 15:32, Marcin Juszkiewicz wrote:
> FriendlyELEC NanoPC-T6 has IR receiver connected to PWM3_IR_M0 line
> which ends as GPIO0_D4.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index 292022a56332..fcea11ff2af2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -25,6 +25,11 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> +	ir-receiver {
> +		compatible = "gpio-ir-receiver";
> +		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;

I would expect to see pinctrl here that configure pin for gpio func use.

> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  
> @@ -228,7 +233,7 @@ &gpio0 {
>  			  "HEADER_10", "HEADER_08", "HEADER_32", "",
>  			  /* GPIO0 D0-D7 */
>  			  "", "", "", "",
> -			  "", "", "", "";
> +			  "IR receiver [PWM3_IR_M0]", "", "", "";
>  };
>  
>  &gpio1 {
> @@ -530,6 +535,13 @@ &pwm1 {
>  	status = "okay";
>  };
>  
> +/* Connected to IR Receiver */
> +&pwm3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm3m0_pins>;
> +	status = "okay";
> +};

Is this really needed/correct? A pinctrl for gpio func in ir-receiver
node should be enough for the ir-receiver?

Regards,
Jonas

> +
>  &saradc {
>  	vref-supply = <&avcc_1v8_s0>;
>  	status = "okay";
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
