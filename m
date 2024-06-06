Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74A28C27C54
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 13:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Di/M3Wm0w9iWPN4YCQWvl7fBbuuX/DUtbWkx4Kc/fls=; b=UmhWf//daBVlLg
	LFdfSilDH56XNTOAMoS719Fn2H8yzOSSu3qv9ZQvjwq39JU3k38qsXuYEa8OC0A/D+Qrn9tKfmr8N
	GRAxUl2/KLL/rd2vkD4Y7MhHADJTj+EkZmt5/pYncvAEq9COlYXpDbNA1BqWcUyNlkXfufvMehHH/
	FtBYjYTWG3Xo5RF7QpuXDWG6/xVcfdqRg09Z8u7XGeSFHMgpmTXM5geVcrcmGjjoGUjQXDhjZ1S3b
	iI8tX1wnYiW2k9WFBx9nCV1vYjB1dOVeR3Tq5vdxhPWVaMUUSHHn0OZIj8NCTE9XcnOzLkm3ufbyQ
	GXDcs7TmHZC4OjpK4XqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFCvy-00000009oVb-0ImM;
	Thu, 06 Jun 2024 13:13:38 +0000
Received: from wfhigh5-smtp.messagingengine.com ([64.147.123.156])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFCvs-00000009oRx-18zG;
	Thu, 06 Jun 2024 13:13:34 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfhigh.west.internal (Postfix) with ESMTP id 33BD718000E5;
	Thu,  6 Jun 2024 09:13:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 06 Jun 2024 09:13:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	the-space.agency; h=cc:cc:content-transfer-encoding:content-type
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to; s=fm2; t=1717679604; x=1717766004; bh=Mthyhz/y4gOiiJvRpybyp
	Rbj0VvXTf2NSsb+oBYxIBg=; b=cfwwPgMo2n4EnK1wS4/ZIPQLwKAetsKoKcpRF
	NehvXEuKTWUVH3EtiGmax+uzqvY3nsJSjIjIcqhuUnyn+CjpKeL47nNI4gGOOE5Q
	Pkh1DKsSr4r/tZbf2CkYs1Ehr3chgR4KDLZ7tBj1J1+ED16NoqHTbVRvluZhaXqM
	QxA9qxNwuurp1v7Tzb5hG0nCRR+w/9s3ZSLCaqnLRFLI2cX/8aCS70gewY5OhcSX
	nkQvH/S2BVCmpIAbuhNQwi8GkLs4EtGqg9/rkmKDdyWzFzotfrXoirGGnYkJm0RR
	Pclr8kJUk8CKyJ2ZyPjpiHTfPOBC47KVAL54Gv3c3lXAMLggw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717679604; x=
	1717766004; bh=Mthyhz/y4gOiiJvRpybypRbj0VvXTf2NSsb+oBYxIBg=; b=a
	w8BwqRC6ENo/Ov6AZVXTB4wX+4u4wk6Bh8m53F7OtYHB7KGD5vQZ6AVWHdTY0Yp5
	nupF+UfhNU0Lzqu2qC3zBq9CWBsYp9JszJOGQV5e67m/7nYqe5sd4n84tnHZWBgn
	aaEoZpN9c9S8FxI7MwV2qU/bhnrawr6T/cj3yfhagDk0DNp2EWiqFaXY1ThmXRck
	h/KkiojTzKkGO4FGXypx51M45yxTfLIUZfrkbM+GeH6Sn+j/LFfli4qBLMKUOnBc
	m26EUR+tOJP34Mkdu64dOTcg8r/1cIXPt+vxAD97wV5GcRDk7UEQ9zpUvUDB9ieA
	pHwZU0wq8QySC1AxiIU0A==
X-ME-Sender: <xms:87VhZud0zwTrTacm3u69koO53TOGKJ5247AX_tl8SGu80tZBpHOLcw>
    <xme:87VhZoNsRs48pbU41im7q2f5VpJnuZjzdacGsKxFEE-EkaPlUY58iwvu0Kr48Hz0L
    2qm1HH4nRYNCa_4ZA>
X-ME-Received: <xmr:87VhZvg9nrPaF7nKiFB6XIsOKScL2wopq89miD966R_lbfwclg3RUterpkutoCCi1He0UaZXbaJpFWYVmSvr8Bk68LEE1MzhMwkDUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdelkedgieduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtvdejnecuhfhrohhmpefuphgr
    tggvucfovgihvghruceomhgvsehthhgvqdhsphgrtggvrdgrghgvnhgthieqnecuggftrf
    grthhtvghrnhepieejffeludefjeejuefggeetjeekuddujedvkeevueeijeekteeivddu
    jedugfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epmhgvsehthhgvqdhsphgrtggvrdgrghgvnhgthi
X-ME-Proxy: <xmx:87VhZr-ekBtYKQ4--Omy0qqqqdCd28ccOARf2YBJOz_lEj8qRj-QTg>
    <xmx:9LVhZqv1iuH3Obj2dehW8GaQeLANTUEjtyD3Em0FFrq1CzQyua5CEA>
    <xmx:9LVhZiHYbCXZTSELjf1Aa3Vd83rNhWufVzTjk--hZK5TghKtZCIZTA>
    <xmx:9LVhZpM9jwiKPE9U1FNgdb7MNvZC_26pib1CuOctLpQg5HTr1ULy4A>
    <xmx:9LVhZvP0PuzQkq61gcqmkvfrwZbGOkjYGEC-ufcVQRAMRHpomLamPemx>
Feedback-ID: i2f914587:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 6 Jun 2024 09:13:21 -0400 (EDT)
Message-ID: <c4087311-cbd2-415e-a582-3565f2f62e81@the-space.agency>
Date: Thu, 6 Jun 2024 15:13:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add FriendlyElec CM3588 NAS
 board
To: Sebastian Kropatsch <seb-dev@mail.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, Dragan Simic <dsimic@manjaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sebastian Kropatsch <seb-dev@web.de>
References: <20240602211901.237769-1-seb-dev@mail.de>
 <20240602202132.2012-1-seb-dev@mail.de>
 <20240602202132.2012-2-seb-dev@mail.de>
Content-Language: en-US
From: Space Meyer <me@the-space.agency>
In-Reply-To: <20240602202132.2012-2-seb-dev@mail.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_061333_039363_5480FBE4 
X-CRM114-Status: GOOD (  28.83  )
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

+ Sebastian Reichel regarding pcie3x4 BAR 1 overlap

Hi Sebastian (Kropatsch),

I was working on the same device, alas you were faster then me :^)

I tested your device tree and confirmed:
- SD card works (I'm booting from it)
- Ethernet works
- My NVME is detected in all 4 ports and I can read from it.
- OHCI is working for all three USB-A ports (I assume EHCI as well)
- XHCI is working for both USB3-A ports
- 'User' button presses end up in 
/dev/input/by-path/platform-gpio-keys-event (though I have no idea how 
to use / decode it)


However there are some issues:
- Type-C: No PD negotiated in or out
- Type-C: No USB 1/2/3 devices recognised (I don't have any device to 
test DP mode switching)
- Audio: No audio (might just be my userspace)
- I didn't test mmc, hdmi, db, gpu, fan, npu raspi header...
- Your regulators are not always following the naming in the schematic 
very closely.

Dmesg also has some concerning boot logs:
- Missing phy-supply for usbdp_phy1, combphy0_ps, combphy1_ps, 
combphy2_psu, pcie30phy
- Missing vmmc-supply and vqmmc-supply for sdhci
- PCIE: pcie3x4 BAR 1 fails to assign (probably overlapping region due 
to untested 1x1x1x1 bifurcation in rk3588.dtsi)
- PCIE: a bunch of `bridge configuration invalid` during boot, no idea 
whether they having something todo with your DTS though
- Sensors: rockchip-thermal fec00000.tsadc fails initializing. 
lm-sensors shows me no sensors at all. Maybe I'm just missing the driver?
- `rockchip-drm display-subsystem` fails initializing

Regarding the dts I'll leave some comments below, but please note I also 
have very little device tree experience so take my input with a truck 
load of salt.


On 02.06.2024 22:20, Sebastian Kropatsch wrote:
> Some RK3588 boards are still using this property, the following quote
> is from rk3588-tiger-haikou.dts for example:
>      &sdmmc {
>          /* while the same pin, sdmmc_det does not detect card changes */
>          cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> 
> I am unsure as to whether this comment from the quote might apply for
> the CM3588 as well. Please let me know if you are able to tell :-)

I don't quite understand this. However GPIO0_A4 *is* routed to the micro 
sd CD according to the NAS schematic, page 16 around A5.


> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts

> +	adc_keys: adc-keys {

AFAICT this board uses only 1 button per ADC input. Hence I think we 
need seperate ADC defs per button. The usual plural "adc-keys" does not 
apply.


> +		compatible = "adc-keys";
> +		io-channels = <&saradc 1>;
> +		io-channel-names = "buttons";
> +		keyup-threshold-microvolt = <1800000>;
> +		poll-interval = <100>;
> +
> +		button-vol-up {
> +			label = "Volume Up";
> +			linux,code = <KEY_VOLUMEUP>;

I believe this should be `label = "Recovery"`, as it's printed like that 
on the silk screen. Maybe also give it a generic function like BTN_1.


> +			press-threshold-microvolt = <17000>;
> +		};
> +	};

While at it you could also add the button labeled "Mask", which is at 
`io-channels = <&saradc 0>;`.


> +	analog-sound {
> +		compatible = "simple-audio-card";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&headphone_detect>;
> +
> +		simple-audio-card,name = "realtek,rt5616-codec";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,hp-det-gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_LOW>;
> +
> +		simple-audio-card,routing =
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"MIC1", "Microphone Jack",
> +			"Microphone Jack", "micbias1";
> +		simple-audio-card,widgets =
> +			"Headphone", "Headphones",
> +			"Microphone", "Microphone Jack";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s0_8ch>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&rt5616>;
> +		};
> +	};

The rt5616 is on the SoM according to the schematic. Maybe move it all 
there and then only define the hp-det-gpio here?


> +	vcc_3v3_host_32: regulator-vcc-3v3-host-32 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc_3v3_host32_en>;
> +		regulator-name = "vcc_3v3_host_32";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_5v0_sys>;
> +	};

I think this is a 5v0 regulator?


> +	vcc_3v3_pcie30: regulator-vcc-3v3-pcie30 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3_pcie30";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_5v0_sys>;
> +	};

These are 4 seperate regulators according to the schematic. However, as 
they are all fixed, idk if they should be split or kept like this.


> +&combphy0_ps {
> +	status = "okay";
> +};

Dupplicate definition, already present in dtsi (where it belongs imho). 
Also maybe add a comment, that this is used for pcie2x1l2.


> +&combphy1_ps {
> +	status = "okay";
> +};

Maybe add a comment, that this is used for pcie2x1l0, connected to M.2 
Slot #2.


> +&combphy2_psu {
> +	status = "okay";
> +};

Maybe add a comment, that this is used for USB30 HOST2.


> +	fusb302: typec-portc@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usbc0_int>;
> +		vbus-supply = <&vbus_5v0_typec>;

Isn't this missing a `status = "okay";`?


> +
> +		usb_con: connector {
> +			compatible = "usb-c-connector";
> +			data-role = "dual";
> +			label = "USB-C";
> +			op-sink-microwatt = <1000000>;
> +			power-role = "dual";

Looking at the schematic, I don't think this is dual role power. I think 
it's only a source. Have you tested this working in both directions?


> +&pcie30phy {

Not really a review comment, but a note for others: ASPM implementation 
seems buggy. Setting CONFIG_PCIEASPM_POWERSAVE to certain values breaks 
PCIe completely.


> +&pinctrl {
> +	audio {
> +		headphone_detect: headphone-detect {
> +			rockchip,pins = <1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;

You could use &gpio1 instead of 1. Same for every entry in &pinctrl.


> +&u2phy0 {

You could add a comment about the usage like:
USB20 OTG0 in CM3588 USB Controller Configure Table
USB 2.0 phy for the 'USBC1' Port in Nas Schematic


> +&u2phy0_otg {

Missing `phy-supply = <&vbus_5v0_typec>;`?


> +&u2phy1 {

You could add a comment about the usage like:
USB20 OTG1 in CM3588 USB Controller Configure Table
USB 2.0 phy for the 'USB 3.0 Type A x2 Up' Port in Nas Schematic

> +&u2phy2 {

You could add a comment about the usage like:
USB20 HOST0 in CM3588 USB Controller Configure Table
Phy for the 'USB 2.0 A' Port in Nas Schematic


 > +&usb_host0_ehci {
 > +&usb_host0_ohci {

Maybe add a comment, that this is using
`phys = <&u2phy2_host>;`


 > +&usb_host0_xhci {

Maybe add a comment, that this is using
`phys = <&u2phy0_otg>, <&usbdp_phy0 PHY_TYPE_USB3>;`


 > +	usb-role-switch;

Were you actually able to use the typec in gadget mode?
I think this might only work in dr_mode = "host";


> +&usb_host1_ehci {
 > +&usb_host1_ohci {

Maybe add a comment, that these are using `phys = <&u2phy3_host>`.


> +/* Upper USB 3.0 port */
> +&usb_host1_xhci {

Maybe add a comment, that this is using
`phys = <&u2phy1_otg>, <&usbdp_phy1 PHY_TYPE_USB3>;`

> +/* Lower USB 3.0 port */
> +&usb_host2_xhci {

Maybe add a comment, that this is using
phys = <&combphy2_psu PHY_TYPE_USB3>;


> +&usbdp_phy0 {

You could add a comment about the usage like:
USB30 OTG0 in CM3588 USB Controller Configure Table
USB 3.0 phy for the USBC1 Port in Nas Schematic


> +&usbdp_phy1 {

You could add a comment about the usage like:
USB30 OTG1 in CM3588 USB Controller Configure Table
USB 3.0 phy for the USB 3.0 Type A x2 Up Port in Nas Schematic



> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi

> +		led_sys: led-0 {
> +			color = <LED_COLOR_ID_AMBER>;

This one is LED_COLOR_ID_RED.


> +
> +		led_usr: led-1 {
> +			color = <LED_COLOR_ID_AMBER>;

And this one is LED_COLOR_ID_GREEN.


> +&combphy0_ps {

For pcie2x1l2, connected to RTL8125 ethernet


> +&combphy1_ps {
 > +&combphy2_psu {

Duplicate definitions, also in nas dts (where they belong imho).


> +&pinctrl {
> +	gpio-leds {
> +		led_sys_pin: led-sys-pin {
> +			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;

You could use &gpio2 instead of 2. Same for every entry in &pinctrl.


Kind regards,
Space


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
