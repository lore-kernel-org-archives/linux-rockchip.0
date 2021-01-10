Return-Path: <SRS0=32dy=GN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01788C433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 15:37:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 802A522257
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 15:37:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 802A522257
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7T7xgySAoWLw2xujAbcxAXaFpUlkwfms6sflVLgkhRg=; b=DtAZVCxb1Vs5//ZEJ69JZ5V1P
	MByn9iodGgTpGwevaiSKkWQKvGhQQdie830zB9bT6bD/QYdr9PzrT39w2tNs6IHv8Vk5xIEWFkiie
	yG6ZUTGBBIgtWSgWEu/oZBRh0EW+TZspw9Ow+TZUHK5bpcLjIw1VtUPQkYfBeCednQc6rEjWJg/kE
	jKJpk55mMqM+hmudcVEd6qifiIS6Mb+RDZG1nzVFw/WgAsowAwKjDFFjPV2s/Gl0WxhxydiWaqeYY
	5uRSEjT6CRKb1VG6uu7At+hGdaPTHc/9KCgCcf/iDH4N68xTIj3tzAYmchaMb/nISR4AyNgzyZr26
	kFYGR819w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kycmd-0001ms-Q8; Sun, 10 Jan 2021 15:37:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kycmX-0001l5-Bg; Sun, 10 Jan 2021 15:37:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3B2312343F;
 Sun, 10 Jan 2021 15:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610293048;
 bh=6eUfMRFG0+ezZ2BnhEB433033viyfL9EtywR+/H383k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bbfPRzhXKSndX4yjbvK7J8XmYY0tlCBy9SSylPctUM23alrh1NBROGij6lCCGFkCo
 Er9VExVaQmwv0Abz3biXDY+4I7sYLV8negMltb/mSSr0rRrbYDYz9LSB63D049afxG
 u+m7pAe8ev6nOFKVHJRTm9e5I9rUX2p+RxJQFzFSCbkyIxwUa9LxHRROvar0EFOkgx
 JoRfXg82dXfSduuVqLI2/UUNEWe4xbnu4KupCTHR21xoQK0tRwkTFVPS0+NowgArUI
 ySj0WcOtXO/nhZVAwMUTvL+FW8ABj+cggvz2A7P0aHoAxeVWLA1T904SlCD06bpS/1
 9YsGqHX8cOFog==
Received: by mail-vs1-f54.google.com with SMTP id s85so8381143vsc.3;
 Sun, 10 Jan 2021 07:37:28 -0800 (PST)
X-Gm-Message-State: AOAM5318B7P/kvA8cfaicZpTkD76jZGpDVLhOtbJ0fViEsUFF2ddDExQ
 sL7Hma+9BXXeSkGJpqkZIa9Vg2FTxuLXRucQJ2Q=
X-Google-Smtp-Source: ABdhPJxxvVBho1mmNwFoXQ5sHJ9XGEjIpQOY0DNqWA7Gi3NzDrcAMTq9o1UIFUiiNhq1IwgR71DiL0A75mLWbHjsWYw=
X-Received: by 2002:a05:6102:215c:: with SMTP id
 h28mr9601581vsg.58.1610293047257; 
 Sun, 10 Jan 2021 07:37:27 -0800 (PST)
MIME-Version: 1.0
References: <20210110035846.9155-1-wens@kernel.org>
 <20210110035846.9155-4-wens@kernel.org>
 <381648f9-d650-dddf-59e6-ef32d1e1bb43@gmail.com>
In-Reply-To: <381648f9-d650-dddf-59e6-ef32d1e1bb43@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sun, 10 Jan 2021 23:37:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v67=uO4HqRNEbhAJs2-d4mhL8URoijwE4ni9J8cYXrmAtQ@mail.gmail.com>
Message-ID: <CAGb2v67=uO4HqRNEbhAJs2-d4mhL8URoijwE4ni9J8cYXrmAtQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210110_103729_730295_0CC262BF 
X-CRM114-Status: GOOD (  38.35  )
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
 Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Sun, Jan 10, 2021 at 10:45 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Chen-Yu,
>
> Some comments, have a look if it is useful...
>
> On 1/10/21 4:58 AM, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > Radxa ROCK Pi E is a router oriented SBC based on Rockchip's RK3328 SoC.
> > As the official wiki page puts it, "E for Ethernets".
> >
> > It features the RK3328 SoC, gigabit and fast Ethernet RJ45 ports, both
> > directly served by Ethernet controllers in the SoC, a USB 3.0 host port,
> > a power-only USB type-C port, a 3.5mm headphone jack for audio output,
>
> > two LEDs, a 40-pin Raspberry Pi style GPIO header, and optional WiFi+BT
> > and PoE header.
> >
> > The board comes in multiple configurations, differing in the amount of
> > onboard RAM, the level of WiFi+BT (none, 802.11n 2.4GHz, or 802.11ac
> > 2.4 GHz & 5 GHz), and whether PoE is supported or not. These variants
> > can all share the same device tree.
> >
> > The USB 2.0 OTG controller is available on the 40-pin header. This is
> > not enabled in the device tree, since it is possible to use it in a
> > host-only configuration, or in OTG mode with an extra pin from the
> > header as the ID pin.
> >
> > The device tree is based on the one of the Rock64, with various parts
> > modified to match the ROCK Pi E, and some parts updated to newer styles,
> > such as the gmac2io node's mdio sub-node.
> >
> > Add a new device tree file for the new board.
> >
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3328-rock-pi-e.dts    | 369 ++++++++++++++++++
> >  2 files changed, 370 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 622d320ddd13..62d3abc17a24 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -11,6 +11,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-evb-act8846.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-geekbox.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> > new file mode 100644
> > index 000000000000..7818d2e8180c
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> > @@ -0,0 +1,369 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * (C) Copyright 2020 Chen-Yu Tsai <wens@csie.org>
> > + *
> > + * Based on ./rk3328-rock64.dts, which is
> > + *
> > + * Copyright (c) 2017 PINE64
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3328.dtsi"
> > +
> > +/ {
> > +     model = "Radxa ROCK Pi E";
> > +     compatible = "radxa,rockpi-e", "rockchip,rk3328";
> > +
> > +     chosen {
> > +             stdout-path = "serial2:1500000n8";
> > +     };
> > +
> > +     gmac_clkin: external-gmac-clock {
> > +             compatible = "fixed-clock";
> > +             clock-frequency = <125000000>;
> > +             clock-output-names = "gmac_clkin";
> > +             #clock-cells = <0>;
> > +     };
> > +
> > +     leds {
> > +             compatible = "gpio-leds";
> > +             pinctrl-0 = <&led_pin>;
> > +             pinctrl-names = "default";
> > +
> > +             led-0 {
>
> > +                     /* schematic say green but the actual thing is blue */
>
> In rockpie-v1.2-20200427-sch.pdf this led is already called "LED_BLUE",
> so comment maybe not needed anymore?

Thanks. Did not notice there was a new revision.

> > +                     color = <LED_COLOR_ID_BLUE>;
> > +                     gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> > +                     linux,default-trigger = "heartbeat";
> > +             };> +   };
> > +
> > +     vcc_sd: sdmmc-regulator {
> > +             compatible = "regulator-fixed";
> > +             gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&sdmmc0m1_pin>;
>
> > +             regulator-boot-on;
> > +             regulator-name = "vcc_sd";
>
> regulator-name above other regulator properties

That is actually what I was used to, but some other rockchip dts files
have all the properties sorted alphabetically. So I stuck with what I
saw.

> regulator voltage missing
> make things as complete as possible
>
> from fixed-regulator.yaml:
>
> description:
>   Any property defined as part of the core regulator binding, defined in
>   regulator.yaml, can also be used. However a fixed voltage regulator is
>   expected to have the regulator-min-microvolt and regulator-max-microvolt
>   to be the same.

However this is not a real regulator; it is merely an on/off switch.
I believe in this case it should just pass through the voltage from
its upstream.

> > +             vin-supply = <&vcc_io>;
> > +     };
> > +
>
> > +     vcc_host_5v: vcc-host-5v-regulator {
> > +             compatible = "regulator-fixed";
> > +             gpio = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&usb30_host_drv>;
> > +             enable-active-high;
> > +             regulator-name = "vcc_host_5v";
>
> idem limits

Same here.

> > +             regulator-always-on;
> > +             regulator-boot-on;
> > +             vin-supply = <&vcc_sys>;
> > +     };
>
> For Heiko: ?? remove ??
> usb3 has no support in mainline.
> Regulators not in use are disabled.
> For mainline this node has no use....

As it already has a defined binding, we can put it in the device tree.

> > +
> > +     vcc_sys: vcc-sys {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "vcc_sys";
>
> > +             regulator-always-on;
> > +             regulator-boot-on;
>
> At the other regulators this is sort below the regulator limits.

Again, alphabetically sorted vs preferred sorting method.

> > +             regulator-min-microvolt = <5000000>;
> > +             regulator-max-microvolt = <5000000>;
> > +     };
> > +
> > +     vcc_wifi: vcc-wifi-regulator {
> > +             compatible = "regulator-fixed";
> > +             gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&wifi_en>;
> > +             regulator-name = "vcc_wifi";
>
> idem limits

Again, it is just a switch.

> > +             regulator-always-on;
> > +             regulator-boot-on;
> > +             vin-supply = <&vcc_io>;
> > +     };
> > +};
> > +
> > +&analog_sound {
> > +     status = "okay";
> > +};
> > +
> > +&codec {
> > +     status = "okay";
> > +};
> > +
> > +&cpu0 {
> > +     cpu-supply = <&vdd_arm>;
> > +};
> > +
> > +&cpu1 {
> > +     cpu-supply = <&vdd_arm>;
> > +};
> > +
> > +&cpu2 {
> > +     cpu-supply = <&vdd_arm>;
> > +};
> > +
> > +&cpu3 {
> > +     cpu-supply = <&vdd_arm>;
> > +};
> > +
> > +&emmc {
> > +     bus-width = <8>;
> > +     cap-mmc-highspeed;
>
> > +     max-frequency = <150000000>;
>
> remove
> already defined in dtsi

OK.

> > +     mmc-ddr-1_8v;
> > +     mmc-hs200-1_8v;
> > +     non-removable;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_bus8>;
> > +     vmmc-supply = <&vcc_io>;
> > +     vqmmc-supply = <&vcc18_emmc>;
> > +     status = "okay";
> > +};
>
> ////////////////////////
>         emmc: mmc@ff520000 {
>                 compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
>                 reg = <0x0 0xff520000 0x0 0x4000>;
>                 interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
>                 clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
>                          <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
>                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>                 fifo-depth = <0x100>;
>                 max-frequency = <150000000>;
>                 status = "disabled";
>         };
> ////////////////////////
>
> > +
> > +&gmac2io {
> > +     assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
> > +     assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
> > +     clock_in_out = "input";
> > +     phy-handle = <&rtl8211e>;
> > +     phy-mode = "rgmii";
> > +     phy-supply = <&vcc_io>;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&rgmiim1_pins>;
> > +     snps,aal;
> > +     snps,rxpbl = <0x4>;
> > +     snps,txpbl = <0x4>;
> > +     tx_delay = <0x26>;
> > +     rx_delay = <0x11>;
> > +     status = "okay";
> > +
> > +     mdio {
> > +             compatible = "snps,dwmac-mdio";
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +
> > +             rtl8211e: ethernet-phy@1 {
> > +                     reg = <1>;
> > +                     pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
> > +                     pinctrl-names = "default";
> > +                     interrupt-parent = <&gpio1>;
> > +                     interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
> > +                     reset-assert-us = <10000>;
> > +                     reset-deassert-us = <50000>;
> > +                     reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
> > +             };
> > +     };
> > +};
> > +
> > +&gmac2phy {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&fephyled_linkm1>, <&fephyled_rxm1>;
> > +     status = "okay";
> > +};
> > +
> > +&i2c1 {
> > +     status = "okay";
> > +
> > +     rk805: pmic@18 {
> > +             compatible = "rockchip,rk805";
> > +             reg = <0x18>;
> > +             interrupt-parent = <&gpio2>;
> > +             interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
>
> > +             #clock-cells = <1>;
>
> all thing that start with "#" down the list

Is there a proper "preferred" sorting method defined somewhere?

> > +             clock-output-names = "xin32k", "rk805-clkout2";
> > +             gpio-controller;
>
> > +             #gpio-cells = <2>;
>
> idem
>
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&pmic_int_l>;
> > +             rockchip,system-power-controller;
> > +             wakeup-source;
> > +
> > +             vcc1-supply = <&vcc_sys>;
> > +             vcc2-supply = <&vcc_sys>;
> > +             vcc3-supply = <&vcc_sys>;
> > +             vcc4-supply = <&vcc_sys>;
> > +             vcc5-supply = <&vcc_io>;
> > +             vcc6-supply = <&vcc_sys>;
> > +
> > +             regulators {
> > +                     vdd_log: DCDC_REG1 {
> > +                             regulator-name = "vdd_log";
> > +                             regulator-min-microvolt = <712500>;
> > +                             regulator-max-microvolt = <1450000>;
> > +                             regulator-ramp-delay = <12500>;
> > +                             regulator-always-on;
> > +                             regulator-boot-on;
> > +
> > +                             regulator-state-mem {
> > +                                     regulator-on-in-suspend;
> > +                                     regulator-suspend-microvolt = <1000000>;
> > +                             };
> > +                     };
> > +
> > +                     vdd_arm: DCDC_REG2 {
> > +                             regulator-name = "vdd_arm";
> > +                             regulator-min-microvolt = <712500>;
> > +                             regulator-max-microvolt = <1450000>;
> > +                             regulator-ramp-delay = <12500>;
> > +                             regulator-always-on;
> > +                             regulator-boot-on;
> > +
> > +                             regulator-state-mem {
> > +                                     regulator-on-in-suspend;
> > +                                     regulator-suspend-microvolt = <950000>;
> > +                             };
> > +                     };
> > +
> > +                     vcc_ddr: DCDC_REG3 {
> > +                             regulator-name = "vcc_ddr";
> > +                             regulator-always-on;
> > +                             regulator-boot-on;
> > +
> > +                             regulator-state-mem {
> > +                                     regulator-on-in-suspend;
> > +                             };
> > +                     };
> > +
> > +                     vcc_io: DCDC_REG4 {
> > +                             regulator-name = "vcc_io";
> > +                             regulator-min-microvolt = <3300000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-always-on;
> > +                             regulator-boot-on;
> > +
> > +                             regulator-state-mem {
> > +                                     regulator-on-in-suspend;
> > +                                     regulator-suspend-microvolt = <3300000>;
> > +                             };
> > +                     };
> > +
> > +                     vcc_18: LDO_REG1 {
> > +                             regulator-name = "vcc_18";
> > +                             regulator-min-microvolt = <1800000>;
> > +                             regulator-max-microvolt = <1800000>;
> > +                             regulator-always-on;
> > +                             regulator-boot-on;
> > +
> > +                             regulator-state-mem {
> > +                                     regulator-on-in-suspend;
> > +                                     regulator-suspend-microvolt = <1800000>;
> > +                             };
> > +                     };
> > +
> > +                     vcc18_emmc: LDO_REG2 {
> > +                             regulator-name = "vcc18_emmc";
> > +                             regulator-min-microvolt = <1800000>;
> > +                             regulator-max-microvolt = <1800000>;
> > +                             regulator-always-on;
> > +                             regulator-boot-on;
> > +
> > +                             regulator-state-mem {
> > +                                     regulator-on-in-suspend;
> > +                                     regulator-suspend-microvolt = <1800000>;
> > +                             };
> > +                     };
> > +
> > +                     vdd_10: LDO_REG3 {
> > +                             regulator-name = "vdd_10";
> > +                             regulator-min-microvolt = <1000000>;
> > +                             regulator-max-microvolt = <1000000>;
> > +                             regulator-always-on;
> > +                             regulator-boot-on;
> > +
> > +                             regulator-state-mem {
> > +                                     regulator-on-in-suspend;
> > +                                     regulator-suspend-microvolt = <1000000>;
> > +                             };
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&i2s1 {
> > +     status = "okay";
> > +};
> > +
> > +&io_domains {
> > +     pmuio-supply = <&vcc_io>;
> > +     vccio1-supply = <&vcc_io>;
> > +     vccio2-supply = <&vcc18_emmc>;
> > +     vccio3-supply = <&vcc_io>;
> > +     vccio4-supply = <&vcc_io>;
> > +     vccio5-supply = <&vcc_io>;
> > +     vccio6-supply = <&vcc_io>;
> > +     status = "okay";
> > +};
> > +
> > +&pinctrl {
>
> > +     ethernet-phy {
>
> gmac2io

OK.

> phy / ethernet-phy is a reserved node name
> use something else
>
> make ARCH=arm64 dtbs_check
>
> /arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dt.yaml: ethernet-phy:
> 'reg' is a required property
>         From schema: Documentation/devicetree/bindings/net/ethernet-phy.yaml

That's somewhat annoying. :(

I wouldn't say the name is "reserved", just that the binding checking
mechanism can't account for these situations.

> > +             eth_phy_int_pin: eth-phy-int-pin {
> > +                     rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_down>;
> > +             };
> > +
> > +             eth_phy_reset_pin: eth-phy-reset-pin {
> > +                     rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
> > +             };
> > +     };
> > +
> > +     leds {
> > +             led_pin: led-pin {
> > +                     rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +     };
> > +
> > +     pmic {
> > +             pmic_int_l: pmic-int-l {
> > +                     rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
> > +             };
> > +     };
> > +
>
> > +     usb3 {
>
> usb
>
> Last numbers in nodenames are more related to the sort order then to
> capabillity.
> ie: mmc0, mmc1
> All usb pin related things here.

I'd say it is more related to functionality in this case, as in "this group
is for USB3 related pins". Makes more sense if the board supported both USB2
and USB3.

> > +             usb30_host_drv: usb30-host-drv {
> > +                     rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +     };
> > +
> > +     wifi {
> > +             wifi_en: wifi-en {
> > +                     rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +     };
> > +};
> > +
> > +&sdmmc {
> > +     bus-width = <4>;
>
> > +     cap-mmc-highspeed;
>
> remove
> micro SD only
>
> > +     cap-sd-highspeed;
> > +     disable-wp;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&sdmmc0_clk>, <&sdmmc0_cmd>, <&sdmmc0_dectn>, <&sdmmc0_bus4>;
> > +     vmmc-supply = <&vcc_sd>;
> > +     status = "okay";
> > +};
> > +
>
> > +&saradc {
> > +     vref-supply = <&vcc_18>;
> > +     status = "okay";
> > +};
>
> What happened to the recovery key from the schematic?

I believe I originally planned on adding it, but failed to find a proper
key event for it. Any suggestions?

AFAIK only U-boot handles the recovery button, but in its case it just
looks for the saradc and reads from a predefined channel.


Regards
ChenYu

> > +
> > +&tsadc {
> > +     status = "okay";
> > +};
> > +
> > +&u2phy {
> > +     status = "okay";
> > +};
> > +
> > +&u2phy_host {
> > +     status = "okay";
> > +};
> > +
> > +&uart2 {
> > +     status = "okay";
> > +};
> > +
> > +&usb_host0_ehci {
> > +     status = "okay";
> > +};
> >
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
