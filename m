Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10D22C38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzL4i8M8rmP5lFR2eHbe1+h2K33M7LeAwXkIFEcuniI=; b=OewOabHIsiibYB
	by0k4G3oRHzypnPs2WJcykDGqh5EtZgkV/ppbP/xpvpbdrEczO951RUNOJKnJhHhTYRkpTZAC885f
	ZxQ274QfY5g0rvq4PGQtKpcDZ7a3dbny1mjmymrCQN26W8klmxjLCI5GUYQyYO7Dpz27Nk2OTZTf3
	9cH8GE1rM5Fix5S5VVdcCP6t9VzSYrFEdRobc3Z07okxF5pZh6VKXL6ztq3zOmea4tQ7QwWvfqV+P
	ycXKhrDmyxhMAhGOg+DorCh7M+n6yxqa40tQTZKlbQb//YQlUnJZKKEszSE4wh0HZryWxrBNMBW/i
	mpkh+g7ylhCjtOS0ktdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVqX6-004L51-FJ; Wed, 07 Sep 2022 08:35:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVqOD-004Eqe-QK; Wed, 07 Sep 2022 08:26:31 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oVqO6-00042j-Sn; Wed, 07 Sep 2022 10:26:22 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Caleb Connolly <kc@postmarketos.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add BT/wifi nodes to Pinephone Pro
Date: Wed, 07 Sep 2022 10:26:21 +0200
Message-ID: <46977559.XUcTiDjVJD@diego>
In-Reply-To: <57395b20-6352-8414-3078-cdad6bbbe999@postmarketos.org>
References: <Rk3c--Dksit7gaQSddtVEaF5_7FlNYE4KZKQKaLsRu2GXMXoBgp5C2DSPNublHMr6E135nPS2B9JkQyf6aSZjw==@protonmail.internalid> <20220906124713.1683587-1-tom@tom-fitzhenry.me.uk> <57395b20-6352-8414-3078-cdad6bbbe999@postmarketos.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_012629_922899_FD76FE70 
X-CRM114-Status: GOOD (  22.19  )
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

Am Dienstag, 6. September 2022, 19:38:38 CEST schrieb Caleb Connolly:
> 
> On 06/09/2022 13:47, Tom Fitzhenry wrote:
> > Pinephone Pro includes a AzureWave AW-CM256SM wifi (sdio0) and
> > bt (uart0) combo module, which is based on Cypress
> > CYP43455 (BCM43455).
> > 
> > Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
> > ---
> >   .../dts/rockchip/rk3399-pinephone-pro.dts     | 69 +++++++++++++++++++
> >   1 file changed, 69 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > index 2e058c3150256..096238126e4c1 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> > @@ -43,6 +43,20 @@ key-power {
> >   		};
> >   	};
> > 
> > +	/* Power sequence for SDIO WiFi module */
> 
> This comment isn't needed, instead give the node a better name/label
> > +	sdio_pwrseq: sdio-pwrseq {
> 
> 	wifi_pwrseq: sdio-pwrseq-wifi {

I guess, I'd move the components around a tiny bit and go with

	wifi_pwrseq: sdio-wifi-pwrseq {

So far everywhere the "-pwrseq" is at the end and while I don't
think that this is enforced (yet), keeping some sort of consistency
might be nice :-) 


Heiko


> > +		compatible = "mmc-pwrseq-simple";
> > +		clocks = <&rk818 1>;
> > +		clock-names = "ext_clock";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&wifi_enable_h_pin>;
> > +		post-power-on-delay-ms = <100>;
> > +		power-off-delay-us = <500000>;
> > +
> > +		/* WL_REG_ON on module */
> > +		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> > +	};
> > +
> >   	vcc_sys: vcc-sys-regulator {
> >   		compatible = "regulator-fixed";
> >   		regulator-name = "vcc_sys";
> > @@ -360,11 +374,31 @@ vsel2_pin: vsel2-pin {
> >   		};
> >   	};
> > 
> > +	sdio-pwrseq {
> > +		wifi_enable_h_pin: wifi-enable-h-pin {
> > +			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +	};
> > +
> >   	sound {
> >   		vcc1v8_codec_en: vcc1v8-codec-en {
> >   			rockchip,pins = <3 RK_PA4 RK_FUNC_GPIO &pcfg_pull_down>;
> >   		};
> >   	};
> > +
> > +	wireless-bluetooth {
> > +		bt_wake_pin: bt-wake-pin {
> > +			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +
> > +		bt_host_wake_pin: bt-host-wake-pin {
> > +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +
> > +		bt_reset_pin: bt-reset-pin {
> > +			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +	};
> >   };
> > 
> >   &sdmmc {
> > @@ -380,6 +414,20 @@ &sdmmc {
> >   	status = "okay";
> >   };
> > 
> > +&sdio0 {
> > +	bus-width = <4>;
> > +	cap-sd-highspeed;
> > +	cap-sdio-irq;
> > +	disable-wp;
> > +	keep-power-in-suspend;
> > +	mmc-pwrseq = <&sdio_pwrseq>;
> > +	non-removable;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> > +	sd-uhs-sdr104;
> > +	status = "okay";
> > +};
> > +
> >   &sdhci {
> >   	bus-width = <8>;
> >   	mmc-hs200-1_8v;
> > @@ -393,6 +441,27 @@ &tsadc {
> >   	status = "okay";
> >   };
> > 
> > +&uart0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
> > +	uart-has-rtscts;
> > +	status = "okay";
> > +
> > +	bluetooth {
> > +		compatible = "brcm,bcm4345c5";
> > +		clocks = <&rk818 1>;
> > +		clock-names = "lpo";
> > +		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
> > +		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
> > +		max-speed = <1500000>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&bt_host_wake_pin &bt_wake_pin &bt_reset_pin>;
> > +		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
> > +		vbat-supply = <&vcc3v3_sys>;
> > +		vddio-supply = <&vcc_1v8>;
> > +	};
> > +};
> > +
> >   &uart2 {
> >   	status = "okay";
> >   };
> > --
> > 2.37.1
> > 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
