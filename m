Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CCE4CFB441
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 14:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pE1WiScRFdFAGgyuptHsYUphPag6xZyuFR773AMkgkk=; b=nn+OoGrXVqxkHW
	pNUQmZdgH8S3KPeZKV5HlHDHY1A4W0BhSDnqGQ2JlTEICjkw1+TI2JUUBb8ngfB/gV3nUhjgjy/wz
	5W+enSHwJFtdaHyl17ZAXPDjMGvEmrgLD0i9YXGPMQITjjK7GpTLO8le4pf3J3lrvAPN2pMRKaPLj
	Y8uG0Dnf3n0yQuYeLwrdhD9V+hukpr2c0UMDHXGniPqP1FmX4ZUTf3+VdMfCq+7MHR7jxrGsm8FJV
	TCLoqeohbJQwOTGGrab1BStHMriiCx8S3v7nZUkzJHTYG5pUrD9zwrN+jTO+VgL/ukTTit8fHEY/T
	LTJ5dmwie5x2IgVzpv8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoRM-00000002dso-2jfV;
	Mon, 07 Oct 2024 14:10:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoLn-00000002cOc-2b1B;
	Mon, 07 Oct 2024 14:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DzguuGqpgpDEWTK10Pwmg4Td55x7gkXzdoaaK8vp4B0=; b=h+7LboR+xFiMm7PhXGimd0RLed
	d9KeCZHCCsGJLq3O0N5MZ9OnGbU/97ZuaCcd0lmNjw6mzbzpQjj6C+Dor8o5yEuG/eyV2LI/WFlkH
	jvhDnBz13sD+DbtD3wSuzj6ErfBWg7HrypsglrgcSiyRhWV+ylydeIOAoipMDIYhtnmpb/1ZAY/H3
	0gFVuUS/DzbfOmqJqLWaRZeEoLe8N49gdwDuA5LQ+Vj389/M9obU7XOGp8GoAf2JGCZigp96X4bI5
	S5iz/jNFcgzEuhtXZ+O/uzlUNx6B6YNAJ2u13QWTyHZbk7Wor7rPJJnqkN1X2pKRyhcDy7oOSQYeW
	jV3Wznhw==;
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sxoLe-0000sG-Gr; Mon, 07 Oct 2024 16:04:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>
Cc: Diederik de Haas <didi.debian@cknow.org>,
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Fix reset-gpios prop on brcm BT nodes
Date: Mon, 07 Oct 2024 16:04:29 +0200
Message-ID: <12534438.O9o76ZdvQC@diego>
In-Reply-To: <20241007105657.6203-6-didi.debian@cknow.org>
References: <20241007105657.6203-2-didi.debian@cknow.org>
 <20241007105657.6203-6-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_070439_719002_9FF3A464 
X-CRM114-Status: GOOD (  17.07  )
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

Hey :-) ,

Am Montag, 7. Oktober 2024, 12:28:19 CEST schrieb Diederik de Haas:
> Except for some compatibles, the "brcm,bluetooth.yaml" binding doesn't
> allow the 'reset-gpios' property, so replace the invalid ones with the
> 'shutdown-gpios' property.

this probably needs more explanation in the commit message, because
by name I'd expect reset and shutdown being different functionalities.

But for these cases, things should be good, simply because when looking
at the bt_enable_h pinctrl, that pin really provides the shutdown
functionality.


Heiko


> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> index 7381bb751852..100a2774bbb5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> @@ -686,9 +686,9 @@ bluetooth {
>  		clock-names = "lpo";
>  		device-wakeup-gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
>  		host-wakeup-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
> -		reset-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
>  		pinctrl-0 = <&bt_enable_h>, <&bt_host_wake_l>, <&bt_wake_h>;
>  		pinctrl-names = "default";
> +		shutdown-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
>  		vbat-supply = <&vcc_wl>;
>  		vddio-supply = <&vcca_1v8_pmu>;
>  	};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> index d09e6542e236..3e0cbfff96d8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> @@ -402,9 +402,9 @@ bluetooth {
>  		clock-names = "lpo";
>  		device-wakeup-gpios = <&gpio2 RK_PB2 GPIO_ACTIVE_HIGH>;
>  		host-wakeup-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_HIGH>;
> -		reset-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&bt_host_wake_h &bt_reg_on_h &bt_wake_host_h>;
> +		shutdown-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_LOW>;
>  		vbat-supply = <&vcc_3v3>;
>  		vddio-supply = <&vcc_1v8>;
>  	};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
