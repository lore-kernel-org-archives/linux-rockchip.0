Return-Path: <SRS0=32dy=GN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23CCEC433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 20:17:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B3ECC22581
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 20:17:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B3ECC22581
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eSUwngK0GnravyGr+O2y996C8TBiygAgosudDk3qkLI=; b=wEGGaf08/6vn5L+1eiWLGuvit
	jGPw99OT4pS7Q1aI0hts+KGJrjSLIhSIubwXGcxuxSkR2f6Nbwvsr5vJKnsuaabk3AImqT6L4y24g
	MGDjFCPGfluCtnLrObWiRlj1bg9nh9XRNB8j6xGqiHRdM0GIfZAin+v4hZVxEIQN1i4LBFfw9Xsdm
	RDx52pt6tfRX5lqnFfFlYCNFudQPnE2iDU0kVKKbOaBcjq2zxpJXrdcxqchin9cdIPLzRa/Kb03CE
	vx0YicxsrHbCqAubxocSxjmg629JCyz6LlJXCBqEEZmepm8/yIq6AorSnYhK6D5KDLxB+sBTuU7Mo
	iZJZ5puEw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyh9L-0000gT-4L; Sun, 10 Jan 2021 20:17:19 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyh9D-0000dk-U5; Sun, 10 Jan 2021 20:17:14 +0000
Received: by mail-ed1-x52d.google.com with SMTP id v26so7738338eds.13;
 Sun, 10 Jan 2021 12:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=p7d/s9t5wKJ7DtbBpujubzbmvyeeJ3JQY9vmSwarSFQ=;
 b=fuwr+uzGrx0QzUz6smFi2eRMnpJPigr9I4Mrj5WkwUwA+Ii4oWwWvDJ4OFAeIZLGVr
 DrRVqTAucgiCz6RXKiA3zMwjp7HThwfx1uNcVtyqOKwkgRW8gl5DWXGnJcwVGr5NVzYu
 JG3FFt+i8CTvFHIwXV27n9fbF5sPujpDuAKeiU/R7kgncx765ZAv/9NSNc4xcelWuEcj
 ddlqf0q8ctBocK8u2lPns41pdbYQmK6Ec2vimIjL0yS3DDlsiOfmTpSnBwAycPmfOPdc
 zwitfajAGdx63FX51Xg9hGTiJUufTZQSgwvtr7niT3f4pxsyKS9AbUU/zoGJ0GjnfgAS
 p94w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=p7d/s9t5wKJ7DtbBpujubzbmvyeeJ3JQY9vmSwarSFQ=;
 b=PuU+f6z3RY+ejuVUu9SPdDxna+Ya9GW034siuXbrEiFEHTNVnBVTpBFV7xoJpgzJAo
 2AL6QOlZalAs7Li4FvJ98P3/uSw53tBFabbtFx1zgG5Wv9i2nsyjOOxKLYD2ZH4VSbey
 OPJ+SR7sDybvKOvVaUJ7GL0Vrf+9V8OOrYT3e5i15tzDVfRClXwRJPM27r0guT/bU4Ax
 on148pqHWfa7ubKMk4nQJDiM25Jc+KNWc+d3c49FqawdTndADg8uw40tE1Iwsk85MMxH
 qHVuuhKQ/TIA1t29cyqoIZsywitoo5DhwxklPzys63/GfEpEAHEiD4Q5+sho7Lp12g/d
 6WMw==
X-Gm-Message-State: AOAM530SVpV34W4WArAvMr6ivoWSQnyOlAMsGwh/Eq6ojdx4mmobBKSy
 cuLWAPbZeMTyejzyPu9PqSg=
X-Google-Smtp-Source: ABdhPJyJpE7b/YOxDv4P7VreHiAHX8xAnISZLszHdeqK1sSivnGGDnXdsSK8dSFMQUSt2XwpgZeLOg==
X-Received: by 2002:a05:6402:8d9:: with SMTP id
 d25mr11816614edz.278.1610309829428; 
 Sun, 10 Jan 2021 12:17:09 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 a20sm6758217edr.70.2021.01.10.12.17.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 Jan 2021 12:17:08 -0800 (PST)
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E
To: Chen-Yu Tsai <wens@kernel.org>
References: <20210110035846.9155-1-wens@kernel.org>
 <20210110035846.9155-4-wens@kernel.org>
 <381648f9-d650-dddf-59e6-ef32d1e1bb43@gmail.com>
 <CAGb2v67=uO4HqRNEbhAJs2-d4mhL8URoijwE4ni9J8cYXrmAtQ@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <96b18111-1dda-83c9-c927-0852b0618874@gmail.com>
Date: Sun, 10 Jan 2021 21:17:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v67=uO4HqRNEbhAJs2-d4mhL8URoijwE4ni9J8cYXrmAtQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210110_151712_604093_2997CDCB 
X-CRM114-Status: GOOD (  36.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chen-Yu,

Most is already answered by Heiko.

On 1/10/21 4:37 PM, Chen-Yu Tsai wrote:
> Hi,
> 
> On Sun, Jan 10, 2021 at 10:45 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> Hi Chen-Yu,
>>
>> Some comments, have a look if it is useful...
>>
>> On 1/10/21 4:58 AM, Chen-Yu Tsai wrote:
>>> From: Chen-Yu Tsai <wens@csie.org>
>>>
>>> Radxa ROCK Pi E is a router oriented SBC based on Rockchip's RK3328 SoC.
>>> As the official wiki page puts it, "E for Ethernets".
>>>
>>> It features the RK3328 SoC, gigabit and fast Ethernet RJ45 ports, both
>>> directly served by Ethernet controllers in the SoC, a USB 3.0 host port,
>>> a power-only USB type-C port, a 3.5mm headphone jack for audio output,
>>
>>> two LEDs, a 40-pin Raspberry Pi style GPIO header, and optional WiFi+BT
>>> and PoE header.
>>>
>>> The board comes in multiple configurations, differing in the amount of
>>> onboard RAM, the level of WiFi+BT (none, 802.11n 2.4GHz, or 802.11ac
>>> 2.4 GHz & 5 GHz), and whether PoE is supported or not. These variants
>>> can all share the same device tree.
>>>
>>> The USB 2.0 OTG controller is available on the 40-pin header. This is
>>> not enabled in the device tree, since it is possible to use it in a
>>> host-only configuration, or in OTG mode with an extra pin from the
>>> header as the ID pin.
>>>
>>> The device tree is based on the one of the Rock64, with various parts
>>> modified to match the ROCK Pi E, and some parts updated to newer styles,
>>> such as the gmac2io node's mdio sub-node.
>>>
>>> Add a new device tree file for the new board.
>>>
>>> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>>  .../boot/dts/rockchip/rk3328-rock-pi-e.dts    | 369 ++++++++++++++++++
>>>  2 files changed, 370 insertions(+)
>>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
>>> index 622d320ddd13..62d3abc17a24 100644
>>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>>> @@ -11,6 +11,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
>>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-evb-act8846.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-geekbox.dtb
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
>>> new file mode 100644
>>> index 000000000000..7818d2e8180c
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
>>> @@ -0,0 +1,369 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * (C) Copyright 2020 Chen-Yu Tsai <wens@csie.org>
>>> + *
>>> + * Based on ./rk3328-rock64.dts, which is
>>> + *
>>> + * Copyright (c) 2017 PINE64
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include <dt-bindings/leds/common.h>
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/pinctrl/rockchip.h>
>>> +#include "rk3328.dtsi"
>>> +
>>> +/ {
>>> +     model = "Radxa ROCK Pi E";
>>> +     compatible = "radxa,rockpi-e", "rockchip,rk3328";
>>> +
>>> +     chosen {
>>> +             stdout-path = "serial2:1500000n8";
>>> +     };
>>> +
>>> +     gmac_clkin: external-gmac-clock {
>>> +             compatible = "fixed-clock";
>>> +             clock-frequency = <125000000>;
>>> +             clock-output-names = "gmac_clkin";
>>> +             #clock-cells = <0>;
>>> +     };
>>> +
>>> +     leds {
>>> +             compatible = "gpio-leds";
>>> +             pinctrl-0 = <&led_pin>;
>>> +             pinctrl-names = "default";
>>> +
>>> +             led-0 {
>>
>>> +                     /* schematic say green but the actual thing is blue */
>>
>> In rockpie-v1.2-20200427-sch.pdf this led is already called "LED_BLUE",
>> so comment maybe not needed anymore?
> 
> Thanks. Did not notice there was a new revision.
> 
>>> +                     color = <LED_COLOR_ID_BLUE>;
>>> +                     gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
>>> +                     linux,default-trigger = "heartbeat";
>>> +             };> +   };
>>> +
>>> +     vcc_sd: sdmmc-regulator {
>>> +             compatible = "regulator-fixed";
>>> +             gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
>>> +             pinctrl-names = "default";
>>> +             pinctrl-0 = <&sdmmc0m1_pin>;
>>
>>> +             regulator-boot-on;
>>> +             regulator-name = "vcc_sd";
>>
>> regulator-name above other regulator properties
> 
> That is actually what I was used to, but some other rockchip dts files
> have all the properties sorted alphabetically. So I stuck with what I
> saw.
> 
>> regulator voltage missing
>> make things as complete as possible
>>
>> from fixed-regulator.yaml:
>>
>> description:
>>   Any property defined as part of the core regulator binding, defined in
>>   regulator.yaml, can also be used. However a fixed voltage regulator is
>>   expected to have the regulator-min-microvolt and regulator-max-microvolt
>>   to be the same.
> 
> However this is not a real regulator; it is merely an on/off switch.
> I believe in this case it should just pass through the voltage from
> its upstream.

This board is not black box. The schematics are public, so finding out
limits was not the problem. Up to you if added or not...

> 
>>> +             vin-supply = <&vcc_io>;
>>> +     };
>>> +
>>
>>> +     vcc_host_5v: vcc-host-5v-regulator {
>>> +             compatible = "regulator-fixed";
>>> +             gpio = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
>>> +             pinctrl-names = "default";
>>> +             pinctrl-0 = <&usb30_host_drv>;
>>> +             enable-active-high;
>>> +             regulator-name = "vcc_host_5v";
>>
>> idem limits
> 
> Same here.
> 
>>> +             regulator-always-on;
>>> +             regulator-boot-on;
>>> +             vin-supply = <&vcc_sys>;
>>> +     };
>>
>> For Heiko: ?? remove ??
>> usb3 has no support in mainline.
>> Regulators not in use are disabled.
>> For mainline this node has no use....
> 
> As it already has a defined binding, we can put it in the device tree.
> 
>>> +
>>> +     vcc_sys: vcc-sys {
>>> +             compatible = "regulator-fixed";
>>> +             regulator-name = "vcc_sys";
>>
>>> +             regulator-always-on;
>>> +             regulator-boot-on;
>>
>> At the other regulators this is sort below the regulator limits.
> 
> Again, alphabetically sorted vs preferred sorting method.

There's some room for "creativity", but you must use that "style"
document wise. But not above limits in "vcc_sys" and below in "vcc_io".

From Heiko:

compatible
reg
interrupts
[alphabetical]
status [if needed]

////////////////////

My list:

For nodes:
If exists on top: model, compatible and chosen.
Sort things without reg alphabetical first,
then sort the rest by reg address.

Inside nodes:
If exists on top: compatible, reg and interrupts.
In alphabetical order the required properties.
Then in alphabetical order the other properties.
And as last things that start with '#' in alphabetical order.
Add status below all other properties for soc internal components with
any board-specifics.
Keep an empty line between properties and nodes.

Exceptions:
Sort pinctrl-0 above pinctrl-names, so it stays in line with clock-names
and dma-names.
Sort simple-audio-card,name above other simple-audio-card properties.
Sort regulator-name above other regulator properties.
Sort regulator-min-microvolt above regulator-max-microvolt.

> 
>>> +             regulator-min-microvolt = <5000000>;
>>> +             regulator-max-microvolt = <5000000>;
>>> +     };
>>> +
>>> +     vcc_wifi: vcc-wifi-regulator {
>>> +             compatible = "regulator-fixed";
>>> +             gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
>>> +             pinctrl-names = "default";
>>> +             pinctrl-0 = <&wifi_en>;
>>> +             regulator-name = "vcc_wifi";
>>
>> idem limits
> 
> Again, it is just a switch.
> 
>>> +             regulator-always-on;
>>> +             regulator-boot-on;
>>> +             vin-supply = <&vcc_io>;
>>> +     };
>>> +};
>>> +
>>> +&analog_sound {
>>> +     status = "okay";
>>> +};
>>> +
>>> +&codec {
>>> +     status = "okay";
>>> +};
>>> +
>>> +&cpu0 {
>>> +     cpu-supply = <&vdd_arm>;
>>> +};
>>> +
>>> +&cpu1 {
>>> +     cpu-supply = <&vdd_arm>;
>>> +};
>>> +
>>> +&cpu2 {
>>> +     cpu-supply = <&vdd_arm>;
>>> +};
>>> +
>>> +&cpu3 {
>>> +     cpu-supply = <&vdd_arm>;
>>> +};
>>> +
>>> +&emmc {
>>> +     bus-width = <8>;
>>> +     cap-mmc-highspeed;
>>
>>> +     max-frequency = <150000000>;
>>
>> remove
>> already defined in dtsi
> 
> OK.
> 
>>> +     mmc-ddr-1_8v;
>>> +     mmc-hs200-1_8v;
>>> +     non-removable;
>>> +     pinctrl-names = "default";
>>> +     pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_bus8>;
>>> +     vmmc-supply = <&vcc_io>;
>>> +     vqmmc-supply = <&vcc18_emmc>;
>>> +     status = "okay";
>>> +};
>>
>> ////////////////////////
>>         emmc: mmc@ff520000 {
>>                 compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
>>                 reg = <0x0 0xff520000 0x0 0x4000>;
>>                 interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
>>                 clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
>>                          <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
>>                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>>                 fifo-depth = <0x100>;
>>                 max-frequency = <150000000>;
>>                 status = "disabled";
>>         };
>> ////////////////////////
>>
>>> +
>>> +&gmac2io {
>>> +     assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
>>> +     assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
>>> +     clock_in_out = "input";
>>> +     phy-handle = <&rtl8211e>;
>>> +     phy-mode = "rgmii";
>>> +     phy-supply = <&vcc_io>;
>>> +     pinctrl-names = "default";
>>> +     pinctrl-0 = <&rgmiim1_pins>;
>>> +     snps,aal;
>>> +     snps,rxpbl = <0x4>;
>>> +     snps,txpbl = <0x4>;
>>> +     tx_delay = <0x26>;
>>> +     rx_delay = <0x11>;
>>> +     status = "okay";
>>> +
>>> +     mdio {
>>> +             compatible = "snps,dwmac-mdio";
>>> +             #address-cells = <1>;
>>> +             #size-cells = <0>;
>>> +
>>> +             rtl8211e: ethernet-phy@1 {
>>> +                     reg = <1>;
>>> +                     pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
>>> +                     pinctrl-names = "default";
>>> +                     interrupt-parent = <&gpio1>;
>>> +                     interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
>>> +                     reset-assert-us = <10000>;
>>> +                     reset-deassert-us = <50000>;
>>> +                     reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
>>> +             };
>>> +     };
>>> +};
>>> +
>>> +&gmac2phy {
>>> +     pinctrl-names = "default";
>>> +     pinctrl-0 = <&fephyled_linkm1>, <&fephyled_rxm1>;
>>> +     status = "okay";
>>> +};
>>> +
>>> +&i2c1 {
>>> +     status = "okay";
>>> +
>>> +     rk805: pmic@18 {
>>> +             compatible = "rockchip,rk805";
>>> +             reg = <0x18>;
>>> +             interrupt-parent = <&gpio2>;
>>> +             interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
>>
>>> +             #clock-cells = <1>;
>>
>> all thing that start with "#" down the list
> 
> Is there a proper "preferred" sorting method defined somewhere?

See above.

> 
>>> +             clock-output-names = "xin32k", "rk805-clkout2";
>>> +             gpio-controller;
>>
>>> +             #gpio-cells = <2>;
>>
>> idem
>>
>>> +             pinctrl-names = "default";
>>> +             pinctrl-0 = <&pmic_int_l>;
>>> +             rockchip,system-power-controller;
>>> +             wakeup-source;
>>> +
>>> +             vcc1-supply = <&vcc_sys>;
>>> +             vcc2-supply = <&vcc_sys>;
>>> +             vcc3-supply = <&vcc_sys>;
>>> +             vcc4-supply = <&vcc_sys>;
>>> +             vcc5-supply = <&vcc_io>;
>>> +             vcc6-supply = <&vcc_sys>;
>>> +
>>> +             regulators {
>>> +                     vdd_log: DCDC_REG1 {
>>> +                             regulator-name = "vdd_log";
>>> +                             regulator-min-microvolt = <712500>;
>>> +                             regulator-max-microvolt = <1450000>;
>>> +                             regulator-ramp-delay = <12500>;
>>> +                             regulator-always-on;
>>> +                             regulator-boot-on;
>>> +
>>> +                             regulator-state-mem {
>>> +                                     regulator-on-in-suspend;
>>> +                                     regulator-suspend-microvolt = <1000000>;
>>> +                             };
>>> +                     };
>>> +
>>> +                     vdd_arm: DCDC_REG2 {
>>> +                             regulator-name = "vdd_arm";
>>> +                             regulator-min-microvolt = <712500>;
>>> +                             regulator-max-microvolt = <1450000>;
>>> +                             regulator-ramp-delay = <12500>;
>>> +                             regulator-always-on;
>>> +                             regulator-boot-on;
>>> +
>>> +                             regulator-state-mem {
>>> +                                     regulator-on-in-suspend;
>>> +                                     regulator-suspend-microvolt = <950000>;
>>> +                             };
>>> +                     };
>>> +
>>> +                     vcc_ddr: DCDC_REG3 {
>>> +                             regulator-name = "vcc_ddr";
>>> +                             regulator-always-on;
>>> +                             regulator-boot-on;
>>> +
>>> +                             regulator-state-mem {
>>> +                                     regulator-on-in-suspend;
>>> +                             };
>>> +                     };
>>> +
>>> +                     vcc_io: DCDC_REG4 {
>>> +                             regulator-name = "vcc_io";
>>> +                             regulator-min-microvolt = <3300000>;
>>> +                             regulator-max-microvolt = <3300000>;
>>> +                             regulator-always-on;
>>> +                             regulator-boot-on;
>>> +
>>> +                             regulator-state-mem {
>>> +                                     regulator-on-in-suspend;
>>> +                                     regulator-suspend-microvolt = <3300000>;
>>> +                             };
>>> +                     };
>>> +
>>> +                     vcc_18: LDO_REG1 {
>>> +                             regulator-name = "vcc_18";
>>> +                             regulator-min-microvolt = <1800000>;
>>> +                             regulator-max-microvolt = <1800000>;
>>> +                             regulator-always-on;
>>> +                             regulator-boot-on;
>>> +
>>> +                             regulator-state-mem {
>>> +                                     regulator-on-in-suspend;
>>> +                                     regulator-suspend-microvolt = <1800000>;
>>> +                             };
>>> +                     };
>>> +
>>> +                     vcc18_emmc: LDO_REG2 {
>>> +                             regulator-name = "vcc18_emmc";
>>> +                             regulator-min-microvolt = <1800000>;
>>> +                             regulator-max-microvolt = <1800000>;
>>> +                             regulator-always-on;
>>> +                             regulator-boot-on;
>>> +
>>> +                             regulator-state-mem {
>>> +                                     regulator-on-in-suspend;
>>> +                                     regulator-suspend-microvolt = <1800000>;
>>> +                             };
>>> +                     };
>>> +
>>> +                     vdd_10: LDO_REG3 {
>>> +                             regulator-name = "vdd_10";
>>> +                             regulator-min-microvolt = <1000000>;
>>> +                             regulator-max-microvolt = <1000000>;
>>> +                             regulator-always-on;
>>> +                             regulator-boot-on;
>>> +
>>> +                             regulator-state-mem {
>>> +                                     regulator-on-in-suspend;
>>> +                                     regulator-suspend-microvolt = <1000000>;
>>> +                             };
>>> +                     };
>>> +             };
>>> +     };
>>> +};
>>> +
>>> +&i2s1 {
>>> +     status = "okay";
>>> +};
>>> +
>>> +&io_domains {
>>> +     pmuio-supply = <&vcc_io>;
>>> +     vccio1-supply = <&vcc_io>;
>>> +     vccio2-supply = <&vcc18_emmc>;
>>> +     vccio3-supply = <&vcc_io>;
>>> +     vccio4-supply = <&vcc_io>;
>>> +     vccio5-supply = <&vcc_io>;
>>> +     vccio6-supply = <&vcc_io>;
>>> +     status = "okay";
>>> +};
>>> +
>>> +&pinctrl {
>>
>>> +     ethernet-phy {
>>
>> gmac2io
> 
> OK.
> 
>> phy / ethernet-phy is a reserved node name
>> use something else
>>
>> make ARCH=arm64 dtbs_check
>>
>> /arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dt.yaml: ethernet-phy:
>> 'reg' is a required property
>>         From schema: Documentation/devicetree/bindings/net/ethernet-phy.yaml
> 
> That's somewhat annoying. :(
> 
> I wouldn't say the name is "reserved", just that the binding checking
> mechanism can't account for these situations.
> 
>>> +             eth_phy_int_pin: eth-phy-int-pin {
>>> +                     rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_down>;
>>> +             };
>>> +
>>> +             eth_phy_reset_pin: eth-phy-reset-pin {
>>> +                     rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
>>> +             };
>>> +     };
>>> +
>>> +     leds {
>>> +             led_pin: led-pin {
>>> +                     rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
>>> +             };
>>> +     };
>>> +
>>> +     pmic {
>>> +             pmic_int_l: pmic-int-l {
>>> +                     rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
>>> +             };
>>> +     };
>>> +
>>
>>> +     usb3 {
>>
>> usb
>>
>> Last numbers in nodenames are more related to the sort order then to
>> capabillity.
>> ie: mmc0, mmc1
>> All usb pin related things here.
> 
> I'd say it is more related to functionality in this case, as in "this group
> is for USB3 related pins". Makes more sense if the board supported both USB2
> and USB3.
> 
>>> +             usb30_host_drv: usb30-host-drv {
>>> +                     rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
>>> +             };
>>> +     };
>>> +
>>> +     wifi {
>>> +             wifi_en: wifi-en {
>>> +                     rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
>>> +             };
>>> +     };
>>> +};
>>> +
>>> +&sdmmc {
>>> +     bus-width = <4>;
>>
>>> +     cap-mmc-highspeed;
>>
>> remove
>> micro SD only
>>
>>> +     cap-sd-highspeed;
>>> +     disable-wp;
>>> +     pinctrl-names = "default";
>>> +     pinctrl-0 = <&sdmmc0_clk>, <&sdmmc0_cmd>, <&sdmmc0_dectn>, <&sdmmc0_bus4>;
>>> +     vmmc-supply = <&vcc_sd>;
>>> +     status = "okay";
>>> +};
>>> +
>>
>>> +&saradc {
>>> +     vref-supply = <&vcc_18>;
>>> +     status = "okay";
>>> +};
>>
>> What happened to the recovery key from the schematic?
> 
> I believe I originally planned on adding it, but failed to find a proper
> key event for it. Any suggestions?

The consensus seem to be "KEY_VENDOR".

Example:

	adc-keys {
		compatible = "adc-keys";
		io-channels = <&saradc 0>;
		io-channel-names = "buttons";
		keyup-threshold-microvolt = <1800000>;
		poll-interval = <100>;

		recovery {
			label = "recovery";
			linux,code = <KEY_VENDOR>;
			press-threshold-microvolt = <17000>;
		};
	};

> 
> AFAIK only U-boot handles the recovery button, but in its case it just
> looks for the saradc and reads from a predefined channel.
> 
> 
> Regards
> ChenYu
> 
>>> +
>>> +&tsadc {
>>> +     status = "okay";
>>> +};
>>> +
>>> +&u2phy {
>>> +     status = "okay";
>>> +};
>>> +
>>> +&u2phy_host {
>>> +     status = "okay";
>>> +};
>>> +
>>> +&uart2 {
>>> +     status = "okay";
>>> +};
>>> +
>>> +&usb_host0_ehci {
>>> +     status = "okay";
>>> +};
>>>
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
