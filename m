Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A99B2C25B76
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Jun 2024 14:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DzXVy4vlQYFTp5DwSov2mL016HGFOfBnoZ/JMzWWIo=; b=0yTD68zrfWxXS8
	9LaxoAGDEaRrDAFU2HI8kmPqFRHsX3f4mzK9bdg2ruzEVErxFaNb7mV/ruq1Acx4eFqn1dJopa8c0
	UCKkR55JDihibg44oARPgsGAKc12dYhIBwgsnaLNZEgV3qiHsFUhGZoC+Y4Y/zUwgqLs3dEikbd5y
	69YV9ZLhIXM7szLHDEvFbGs/HluseD+oS95FeEo1kT/dST/c5wugAcYdbpdIpTo1pgVi7/WTKSpDn
	4zpy0+LLSkRDt4mI/F12OvvkTm0ikr1sLyY6xAE8RwOMf8aADT1pI86sOQEJ+6uw2RypNoZJUUjTf
	WyiGpC9E0/glNfAvJh8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFxD8-000000006vv-3Lvb;
	Sat, 08 Jun 2024 14:38:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFxD5-000000006vO-3KRf;
	Sat, 08 Jun 2024 14:38:25 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFxCq-0008TN-F2; Sat, 08 Jun 2024 16:38:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Kropatsch <seb-dev@mail.de>, linux-rockchip@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Space Meyer <me@the-space.agency>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, Dragan Simic <dsimic@manjaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sebastian Kropatsch <seb-dev@web.de>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add FriendlyElec CM3588 NAS board
Date: Sat, 08 Jun 2024 16:38:07 +0200
Message-ID: <11747652.CDJkKcVGEf@phil>
In-Reply-To: <c4087311-cbd2-415e-a582-3565f2f62e81@the-space.agency>
References: <20240602211901.237769-1-seb-dev@mail.de>
 <20240602202132.2012-2-seb-dev@mail.de>
 <c4087311-cbd2-415e-a582-3565f2f62e81@the-space.agency>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240608_073823_888316_B49AD30B 
X-CRM114-Status: GOOD (  25.74  )
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

Am Donnerstag, 6. Juni 2024, 15:13:20 CEST schrieb Space Meyer:
> + Sebastian Reichel regarding pcie3x4 BAR 1 overlap
> 

> On 02.06.2024 22:20, Sebastian Kropatsch wrote:
> > Some RK3588 boards are still using this property, the following quote
> > is from rk3588-tiger-haikou.dts for example:
> >      &sdmmc {
> >          /* while the same pin, sdmmc_det does not detect card changes */
> >          cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> > 
> > I am unsure as to whether this comment from the quote might apply for
> > the CM3588 as well. Please let me know if you are able to tell :-)
> 
> I don't quite understand this. However GPIO0_A4 *is* routed to the micro 
> sd CD according to the NAS schematic, page 16 around A5.

for the actual sdmmc_det functionality ... possibly some pinconfig thing?
I.e. pull-whatever settings?


> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
> 
> > +	adc_keys: adc-keys {
> 
> AFAICT this board uses only 1 button per ADC input. Hence I think we 
> need seperate ADC defs per button. The usual plural "adc-keys" does not 
> apply.

Also if you need to define multiple ones, you'll need distinctive names.


> > +	analog-sound {
> > +		compatible = "simple-audio-card";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&headphone_detect>;
> > +
> > +		simple-audio-card,name = "realtek,rt5616-codec";
> > +		simple-audio-card,format = "i2s";
> > +		simple-audio-card,mclk-fs = <256>;
> > +
> > +		simple-audio-card,hp-det-gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_LOW>;
> > +
> > +		simple-audio-card,routing =
> > +			"Headphones", "HPOL",
> > +			"Headphones", "HPOR",
> > +			"MIC1", "Microphone Jack",
> > +			"Microphone Jack", "micbias1";
> > +		simple-audio-card,widgets =
> > +			"Headphone", "Headphones",
> > +			"Microphone", "Microphone Jack";
> > +
> > +		simple-audio-card,cpu {
> > +			sound-dai = <&i2s0_8ch>;
> > +		};
> > +
> > +		simple-audio-card,codec {
> > +			sound-dai = <&rt5616>;
> > +		};
> > +	};
> 
> The rt5616 is on the SoM according to the schematic. Maybe move it all 
> there and then only define the hp-det-gpio here?

When the codec itself is on the som _it_ should be there.
For the card itself I don't necessarily think so.

I.e. another baseboard (if it ever exists) might not route sound at all,
so I guess it might make more sense to leave the actual "card" on the
baseboard that also provides the actual outputs and inputs.


> > +	vcc_3v3_host_32: regulator-vcc-3v3-host-32 {
> > +		compatible = "regulator-fixed";
> > +		enable-active-high;
> > +		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&vcc_3v3_host32_en>;
> > +		regulator-name = "vcc_3v3_host_32";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		vin-supply = <&vcc_5v0_sys>;
> > +	};
> 
> I think this is a 5v0 regulator?

At least the vcc_3v3_host_32 naming suggests 3.3V though?


> > +	vcc_3v3_pcie30: regulator-vcc-3v3-pcie30 {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc_3v3_pcie30";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		vin-supply = <&vcc_5v0_sys>;
> > +	};
> 
> These are 4 seperate regulators according to the schematic. However, as 
> they are all fixed, idk if they should be split or kept like this.

personally, I really like the power-diagram to match schematics.
I.e. $debugfs/regulator/regulator_summary will produce a really nice
graph of all the system's regulators, so it's definitly nice if the
hirarchy matches. Also prevents head-scratching later on ;-)


> > +	fusb302: typec-portc@22 {
> > +		compatible = "fcs,fusb302";
> > +		reg = <0x22>;
> > +		interrupt-parent = <&gpio0>;
> > +		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&usbc0_int>;
> > +		vbus-supply = <&vbus_5v0_typec>;
> 
> Isn't this missing a `status = "okay";`?

status okay is the default, so when you add a completely new node it is
"okay" by default and you only add a status if you need something else.


> > +&pinctrl {
> > +	audio {
> > +		headphone_detect: headphone-detect {
> > +			rockchip,pins = <1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
> 
> You could use &gpio1 instead of 1. Same for every entry in &pinctrl.

No, that is a number - that of the pin-bank and not a reference to the
gpio controller. Please any other board/soc with its pin-groups.


> > +&pinctrl {
> > +	gpio-leds {
> > +		led_sys_pin: led-sys-pin {
> > +			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
> 
> You could use &gpio2 instead of 2. Same for every entry in &pinctrl.

same as above


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
