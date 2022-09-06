Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99688ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 17:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AywSAteqoXEeqSpHu7ENAfwzN4Ap/BkDEiEQ2jTyGOA=; b=0cWlto/4RCuggy
	pi1gKmox8Rs8Bp83bd3+wi4P57h83t7C+DCobLeqBP4W0f0WOtvNv+CQHMk65RjxLg600uW6mIrxX
	oCzUfCNZt5bn+FrQlyiAG+BgfxPoWYUfVP4U4aSv1QRQa4FaihDcaLd3jAwjvxBNEYzpZPIzYyenV
	DYbeSe6pp+Gw1ltSQEeNckaol+8foeDlmMg3ihxI32imlyAAADeHh0KwuOLTgWs+fj0u1T93BVJ/B
	5yojnx4P/o0fnBiBx9O1JKQFiiJbP9BbY5YtpMwd7/v9RZN9QdzYY3aiEzBs+xxjmawCPKDuR85HP
	4FgIebGshpdWohXLf3tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcXv-00G22E-Na; Tue, 06 Sep 2022 17:39:35 +0000
Received: from proxmox1.postmarketos.org ([213.239.216.189])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcX8-00G1fd-Bs; Tue, 06 Sep 2022 17:38:53 +0000
Received: from [192.168.0.10] (cpc76482-cwma10-2-0-cust629.7-3.cable.virginm.net [86.14.22.118])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by proxmox1.postmarketos.org (Postfix) with ESMTPSA id 9B401140290;
	Tue,  6 Sep 2022 17:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1662485919;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PjIGV+X0CntldVOFb9jTWJQTomTec7OgnlQDriVdhO0=;
	b=Zpx6+ZD+n5X+0Gli+wptGeFBPOSG7f9yi8QoIJUHf36rxg/qd8MVrbcOjoPabQRXUJ9VO1
	tC3ZpQIEOHrgn2G+WAwEOpsVKhqMO/1zonuw9a/TzzRrfH9OmSs4m6o+PKDxBgE7HSMkF5
	Wtrhvmf+LMojWU1oHlLjoYTsYfFPvGg=
Message-ID: <57395b20-6352-8414-3078-cdad6bbbe999@postmarketos.org>
Date: Tue, 6 Sep 2022 18:38:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] arm64: dts: rockchip: add BT/wifi nodes to Pinephone Pro
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org
References: <Rk3c--Dksit7gaQSddtVEaF5_7FlNYE4KZKQKaLsRu2GXMXoBgp5C2DSPNublHMr6E135nPS2B9JkQyf6aSZjw==@protonmail.internalid>
 <20220906124713.1683587-1-tom@tom-fitzhenry.me.uk>
From: Caleb Connolly <kc@postmarketos.org>
In-Reply-To: <20220906124713.1683587-1-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_103850_250668_B1737C45 
X-CRM114-Status: GOOD (  16.79  )
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



On 06/09/2022 13:47, Tom Fitzhenry wrote:
> Pinephone Pro includes a AzureWave AW-CM256SM wifi (sdio0) and
> bt (uart0) combo module, which is based on Cypress
> CYP43455 (BCM43455).
> 
> Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
> ---
>   .../dts/rockchip/rk3399-pinephone-pro.dts     | 69 +++++++++++++++++++
>   1 file changed, 69 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 2e058c3150256..096238126e4c1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -43,6 +43,20 @@ key-power {
>   		};
>   	};
> 
> +	/* Power sequence for SDIO WiFi module */

This comment isn't needed, instead give the node a better name/label
> +	sdio_pwrseq: sdio-pwrseq {

	wifi_pwrseq: sdio-pwrseq-wifi {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk818 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h_pin>;
> +		post-power-on-delay-ms = <100>;
> +		power-off-delay-us = <500000>;
> +
> +		/* WL_REG_ON on module */
> +		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> +	};
> +
>   	vcc_sys: vcc-sys-regulator {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vcc_sys";
> @@ -360,11 +374,31 @@ vsel2_pin: vsel2-pin {
>   		};
>   	};
> 
> +	sdio-pwrseq {
> +		wifi_enable_h_pin: wifi-enable-h-pin {
> +			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>   	sound {
>   		vcc1v8_codec_en: vcc1v8-codec-en {
>   			rockchip,pins = <3 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
>   		};
>   	};
> +
> +	wireless-bluetooth {
> +		bt_wake_pin: bt-wake-pin {
> +			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		bt_host_wake_pin: bt-host-wake-pin {
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		bt_reset_pin: bt-reset-pin {
> +			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
>   };
> 
>   &sdmmc {
> @@ -380,6 +414,20 @@ &sdmmc {
>   	status = "okay";
>   };
> 
> +&sdio0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	disable-wp;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};
> +
>   &sdhci {
>   	bus-width = <8>;
>   	mmc-hs200-1_8v;
> @@ -393,6 +441,27 @@ &tsadc {
>   	status = "okay";
>   };
> 
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
> +	uart-has-rtscts;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm4345c5";
> +		clocks = <&rk818 1>;
> +		clock-names = "lpo";
> +		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
> +		max-speed = <1500000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_host_wake_pin &bt_wake_pin &bt_reset_pin>;
> +		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
> +		vbat-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcc_1v8>;
> +	};
> +};
> +
>   &uart2 {
>   	status = "okay";
>   };
> --
> 2.37.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
