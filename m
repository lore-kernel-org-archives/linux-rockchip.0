Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8698EC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 22:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmZS5mPwZGSMWCrBhzNYYdIfllKv2SphF0mON3djbwE=; b=BEGNE63YZPoclX
	0OE9hpL6Rpggm21zbWsIBW96+6EkXiq3Iqr2L8AAqFFn3M7vqC0onPpWEf7xTzsJjsrYiyeD8UpqY
	lKuMrGESU0fIF0K3Luw5NYJeYake2DzeC17ugJu9AM6OiwNVYTyTklnf2VAKgcPt15+jz5w6LC2yW
	cygpgnbjlp2WG9tHlC35HzRBBWx055AD3OsSXjixeZZ2OSbXkmYVBathWobYh9SDSL2smRdilgx2U
	/oqPqXuQvs4XSD2Vdk3yg1jeY9l2MoL+bH6P72w89+/TQ3WzGbZK/rljf1Fjjuapm6Buud2wmSZGl
	T+YmHqTk7u/8jEwxk1Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovQeO-008Mq4-4X; Wed, 16 Nov 2022 22:12:56 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovQeK-008MpT-CA
	for linux-rockchip@lists.infradead.org; Wed, 16 Nov 2022 22:12:53 +0000
Received: by mail-ot1-f42.google.com with SMTP id l42-20020a9d1b2d000000b0066c6366fbc3so11329125otl.3
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Nov 2022 14:12:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=63qfMy5tYJj1BROVuFUsh9fa1+1u9/WNexNsavFfwTQ=;
        b=CKxvCcolbBnlcnWOaYScpPXqKCNz8wWwXuEOm5TmajvjlXUNfl3XCJDrQMAKfx31F2
         Zx6ZafvV+SfMtaHGvYsfC9HjZBzkSqqbJj9bTO2ijgdKHgtLHQXKGmL9BgXAqe4qNhNQ
         vVeHG+ed2NvPOVXgeYlR2X0uVgzo7E4ibLC0UpIUFS+24cALWXHNQkaOs56NEmvWltwd
         zsuNoVVQBhCCZNeYAKNQzBYNCzYj9ZbaJDoBA1Al13oumciBcXQ+/kuOFJAemCWDTrLs
         Nl7lZzyGkD7ElzgknhXpirWiPljDzq7lRgSbYGJge7gol+ab1CL2TuhAFnSApxOBe2W8
         nh2g==
X-Gm-Message-State: ANoB5pmVK+sNuIKLaBUZfq3bDV9xEmZvcUWUozNs5NZs+pLrX17EgYt2
	qvRVNQaYf28Ml3LxFt+q8A==
X-Google-Smtp-Source: AA0mqf5tIDv2IE4w6F8e5NDAeHs2k6malYU0jelppFdwk0puKV9GorAbRLmaeRdwUaKQ/ZxvyEho8Q==
X-Received: by 2002:a9d:6a45:0:b0:66c:2d7f:420f with SMTP id h5-20020a9d6a45000000b0066c2d7f420fmr76497otn.212.1668636770492;
        Wed, 16 Nov 2022 14:12:50 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z42-20020a056870d6aa00b0014185b2b3d5sm7734057oap.18.2022.11.16.14.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 14:12:50 -0800 (PST)
Received: (nullmailer pid 1122799 invoked by uid 1000);
	Wed, 16 Nov 2022 22:12:52 -0000
Date: Wed, 16 Nov 2022 16:12:52 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCHv2 4/5] arm64: dts: rockchip: Add rk3588-evb1 board
Message-ID: <20221116221252.GA1121301-robh@kernel.org>
References: <20221115161702.163057-1-sebastian.reichel@collabora.com>
 <20221115161702.163057-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221115161702.163057-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_141252_454886_F8AE5941 
X-CRM114-Status: GOOD (  20.52  )
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

On Tue, Nov 15, 2022 at 05:17:01PM +0100, Sebastian Reichel wrote:
> From: Kever Yang <kever.yang@rock-chips.com>
> 
> Add board file for the RK3588 evaluation board. While the hardware
> offers plenty of peripherals and connectivity this basic implementation
> just handles things required to successfully boot Linux from eMMC,
> connect via UART or Ethernet.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, update commit message, use EVB1 for SoC bringup]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +

Separate patches for bindings and dts files please.

>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 156 ++++++++++++++++++
>  3 files changed, 162 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index c6c69a4e3777..4230881371fa 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -739,6 +739,11 @@ properties:
>            - const: rockchip,rk3568-bpi-r2pro
>            - const: rockchip,rk3568
>  
> +      - description: Rockchip RK3588 Evaluation board
> +        items:
> +          - const: rockchip,rk3588-evb1-v10
> +          - const: rockchip,rk3588
> +
>  additionalProperties: true
>  
>  ...
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 8c15593c0ca4..12ed53de11eb 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -72,3 +72,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> new file mode 100644
> index 000000000000..38413517f2eb
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> @@ -0,0 +1,156 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include "rk3588.dtsi"
> +
> +/ {
> +	model = "Rockchip RK3588 EVB1 V10 Board";
> +	compatible = "rockchip,rk3588-evb1-v10", "rockchip,rk3588";
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	vcc12v_dcin: regulator-vcc12v-dcin {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc12v_dcin";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	vcc5v0_sys: regulator-vcc5v0-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		brightness-levels = <
> +			  0  20  20  21  21  22  22  23
> +			 23  24  24  25  25  26  26  27
> +			 27  28  28  29  29  30  30  31
> +			 31  32  32  33  33  34  34  35
> +			 35  36  36  37  37  38  38  39
> +			 40  41  42  43  44  45  46  47
> +			 48  49  50  51  52  53  54  55
> +			 56  57  58  59  60  61  62  63
> +			 64  65  66  67  68  69  70  71
> +			 72  73  74  75  76  77  78  79
> +			 80  81  82  83  84  85  86  87
> +			 88  89  90  91  92  93  94  95
> +			 96  97  98  99 100 101 102 103
> +			104 105 106 107 108 109 110 111
> +			112 113 114 115 116 117 118 119
> +			120 121 122 123 124 125 126 127
> +			128 129 130 131 132 133 134 135
> +			136 137 138 139 140 141 142 143
> +			144 145 146 147 148 149 150 151
> +			152 153 154 155 156 157 158 159
> +			160 161 162 163 164 165 166 167
> +			168 169 170 171 172 173 174 175
> +			176 177 178 179 180 181 182 183
> +			184 185 186 187 188 189 190 191
> +			192 193 194 195 196 197 198 199
> +			200 201 202 203 204 205 206 207
> +			208 209 210 211 212 213 214 215
> +			216 217 218 219 220 221 222 223
> +			224 225 226 227 228 229 230 231
> +			232 233 234 235 236 237 238 239
> +			240 241 242 243 244 245 246 247
> +			248 249 250 251 252 253 254 255
> +		>;
> +		default-brightness-level = <200>;
> +
> +		pwms = <&pwm2 0 25000 0>;
> +		power-supply = <&vcc12v_dcin>;
> +	};
> +};
> +
> +&gmac0 {
> +	phy-mode = "rgmii-rxid";
> +	clock_in_out = "output";
> +
> +	snps,reset-gpio = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	/* Reset time is 20ms, 100ms for rtl8211f */
> +	snps,reset-delays-us = <0 20000 100000>;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac0_miim
> +		     &gmac0_tx_bus2
> +		     &gmac0_rx_bus2
> +		     &gmac0_rgmii_clk
> +		     &gmac0_rgmii_bus>;
> +
> +	tx_delay = <0x43>;
> +	rx_delay = <0x00>;
> +
> +	phy-handle = <&rgmii_phy>;
> +	status = "okay";
> +};
> +
> +&mdio0 {
> +	rgmii_phy: phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;
> +		#phy-cells = <0>;
> +	};
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	no-sdio;
> +	no-sd;
> +	non-removable;
> +	max-frequency = <200000000>;
> +	mmc-hs400-1_8v;
> +	mmc-hs400-enhanced-strobe;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-0 = <&uart2m0_xfer>;
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +
> +	hym8563: rtc@51 {
> +		compatible = "haoyu,hym8563";
> +		reg = <0x51>;
> +		#clock-cells = <0>;
> +		clock-output-names = "hym8563";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hym8563_int>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PD4 IRQ_TYPE_LEVEL_LOW>;
> +		wakeup-source;
> +	};
> +};
> +
> +&pinctrl {
> +	hym8563 {
> +		hym8563_int: hym8563-int {
> +			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +};
> -- 
> 2.35.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
