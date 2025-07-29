Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73F70C87FC9
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jul 2025 19:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mnhpRb31F/PCDlhG6TcO67sSquWU71nMAXKsyvosVy8=; b=Uu3l9p9jK2xNUbj8GF3tN5gieF
	IpsZ8sZ9NtArLsMWmbtYKeXqLj7evRx9djdxbnLQvW36qfcAAWyAzcAbSrj776L8U0JUVc4Fi3Tq+
	lb1lJM+MKH/IOqfXtSLhSyaAnGt2osSAzinAb+2RF+I8LM7FO5vHq10moRDry63QTirsZR5vLysst
	FhhAJsn3UUwE4bBZSyvuaSM5Mp/6OGV0WPGTxPI+aXn06R0+N5MTgVQ0n9fwGaTbLqW07pwwLjksd
	3hjFqV1hMITozsZkmy2/Vor5G3f+2egGNfq9000kAsrh0t8mXwPjCPxjAh44rAlZDmAZxap3t/OnK
	9A2Hoxgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugppD-0000000HXre-2Ifu;
	Tue, 29 Jul 2025 19:17:23 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugpls-0000000HXYB-3ATJ;
	Tue, 29 Jul 2025 19:13:58 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1753816435;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KKWyy9AysMqp+foLRIk/frdK0mBNoA6TGv7vzHMpIoo=;
	b=uJKVPu3R1sIM5+48xB8nDMZO4mC4PkFIyss6I7l6EZuQiAz+M+Ix2y+XAz2yt8oe5SyYK8
	3kgR0b3QGbCieJHK3ACSDl0TmIURCM7yzLl3WgZQ7zmHlvbetnFcU631ZtzePaf1Fa1Wjs
	P23xZX9+p4ZlUp7tHbH/MXDsH4toLTMqHVxqCL3SMzauCyaqyX1Vy1ChM1F4uibD1ORLy1
	E4toMslBj6UaIAEacWaPTCEk/OFyWV4FLOnTS/+YnWIsl9KZ+5/SRdElBcBoA895WcB8ME
	eQWKyN51kOL4bgs9hXwjz69y9L2CSJgGrhb3J0x3XArCv9ny+ZfRhXwjqyv59A==
Date: Tue, 29 Jul 2025 21:13:54 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Geert
 Uytterhoeven <geert+renesas@glider.be>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Pinephone Pro: Update WiFi
In-Reply-To: <20250729190712.145817-1-pbrobinson@gmail.com>
References: <20250729190712.145817-1-pbrobinson@gmail.com>
Message-ID: <a2f4e97dd56549b920f23168a9d42b87@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_121356_939113_98577A18 
X-CRM114-Status: GOOD (  14.52  )
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

Hello Peter,

On 2025-07-29 21:06, Peter Robinson wrote:
> Update the WiFi configuration to include the wake-up
> pin and add an ethernet alias to allow assignment of
> a mac-address from the firmware.
> 
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../dts/rockchip/rk3399-pinephone-pro.dts     | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 585ef0fd88ef0..05f7b506f3594 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -21,6 +21,7 @@ / {
>  	chassis-type = "handset";
> 
>  	aliases {
> +		ethernet0 = &brcmf;

The same comments I made on your Pinebook Pro DT patch [1] apply
here as well.  To sum it up, I'm sorry, but an alias like this one
isn't acceptable.

[1] 
https://lore.kernel.org/linux-rockchip/20250729185827.144547-1-pbrobinson@gmail.com/T/#u

>  		mmc0 = &sdio0;
>  		mmc1 = &sdmmc;
>  		mmc2 = &sdhci;
> @@ -689,6 +690,12 @@ vcc1v8_codec_en: vcc1v8-codec-en {
>  		};
>  	};
> 
> +	wifi {
> +		wifi_host_wake_l: wifi-host-wake-l {
> +			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	wireless-bluetooth {
>  		bt_wake_pin: bt-wake-pin {
>  			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> @@ -715,7 +722,19 @@ &sdio0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
>  	sd-uhs-sdr104;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
>  	status = "okay";
> +
> +	brcmf: wifi@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <RK_PD0 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "host-wake";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_host_wake_l>;
> +	};
>  };
> 
>  &pwm0 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
