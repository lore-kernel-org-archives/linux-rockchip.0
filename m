Return-Path: <SRS0=KyHE=L5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A258C07E95
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 03:24:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5D8361076
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 03:24:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C5D8361076
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQIpOzsKjhU5/IoJuS0d1hyIFWQqIfN4wQrVNVriFOA=; b=XU56Hh26A7nS55
	q7UoNyH8r229SLLKb7wf9CmKXQ6qe/BHIRpo1RZ8IA7CW4rEWJ2MPeOa2ZQfgjPFcyFsXFGBddaVB
	Cp0Ux4a2eFFdi/4TBMTyGo4Tnb5K9+E7I7BPNY+5UETtAEBTLkp60VLfetRvFR0kGVsE5tNEm9EuW
	FdjkEIRIzr9UfOGtOpqeoh7rI+sSa4rIIV4r1ivGO/8OP1f+Ee4jMKDF77nhcpgnvUIHliARFhCBP
	jN/SVA2/iNQVzsh8cl0A10iRsJQf+GFuB0JY3JOqPBYXT+n7n0RH8kzqbUq379/qDyE5qILlnkRtg
	kyb9MkwRHmavv9CNT3vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0FDM-007aAN-9D; Mon, 05 Jul 2021 03:24:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0FD9-007a8t-55; Mon, 05 Jul 2021 03:23:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 46A5F613DA;
 Mon,  5 Jul 2021 03:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625455434;
 bh=kBlqb9KUOVp647t6mJFhSurrdEfibbJxvFOkM/YMIXU=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=kjX6q7aQ1RZiWZ5y6SF3SXBcBTXQoNBA0+mExZxZ974g0XX9LwNC6sP9l4rR3gOf8
 LUDzP52jYPaoidavfZPR1kEIs/62eEx5tJ6KYnbpAbr3rJP3pmL6KEl8VId0hDcUDB
 dEKgO6MYmBD90udcBiOSJD1/Ty+2M4bgLmL02CaniT0kiwS1CecPVi3H3byXDEKR3H
 5cSfv8rjQsdVf1c3vgB505O6R6sp8bmO9k/HWvJ/tZ7NJE3uPCUdQIAox0WKcxO9Qq
 9zK7141lZFPHGHKTSwDrHx8ILBr2mvJi75w0205ptb3faibQKt50D8x1Mf0QtC9Ym+
 jaYNZ20dt+R5Q==
Received: by mail-lf1-f45.google.com with SMTP id t17so29968016lfq.0;
 Sun, 04 Jul 2021 20:23:54 -0700 (PDT)
X-Gm-Message-State: AOAM531wsrN7dvOAhr6XRn/hlVtaA8Lsjrmf9dkpkCON7bYaB/lQhEh0
 Ng0tnvRyNA/yb/un71vffjTW+bqgjUPKDPf1uiQ=
X-Google-Smtp-Source: ABdhPJy9hKF0+qlP+oLCuQHQOm0zdSTwWCP0aT7+joX5zIQBA4DUahYJwb48VmvEO+CK/FgZPkPQ7c470akd9Dt45xY=
X-Received: by 2002:a19:5f52:: with SMTP id a18mr9030494lfj.496.1625455432469; 
 Sun, 04 Jul 2021 20:23:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210705010424.72269-1-peterwillcn@gmail.com>
In-Reply-To: <20210705010424.72269-1-peterwillcn@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 5 Jul 2021 11:23:42 +0800
X-Gmail-Original-Message-ID: <CAGb2v65qgm2zy1LZ2Ynjwcs1NEn0_LmU-FTVOJNbdVGqEdkODw@mail.gmail.com>
Message-ID: <CAGb2v65qgm2zy1LZ2Ynjwcs1NEn0_LmU-FTVOJNbdVGqEdkODw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: r4s: add i2c2 read eeprom for mac
 addr and fix voltage layout.
To: xiaobo <peterwillcn@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210704_202355_289159_346512F3 
X-CRM114-Status: GOOD (  25.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jul 5, 2021 at 9:05 AM xiaobo <peterwillcn@gmail.com> wrote:
>
> 1. add i2c2 read eeprom for mac addr
> 2. fix voltage layout.

Why? The included .dtsi file already defines the regulators you
changed and hooks them up properly. You are simply copying them
over verbatim.


Also, You are changing a whole lot of things in one patch, some
of which you aren't even listing in the commit log.

Rule of thumb: one logical change per patch.

>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> Signed-off-by: xiaobo <peterwillcn@gmail.com>

Please use your full name in a proper format, such as listed
on your passport.

> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +-
>  .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 138 ++++++++++--------
>  2 files changed, 78 insertions(+), 62 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index c3e00c0e2db7..6973141cb7a3 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -9,7 +9,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
> @@ -36,6 +35,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-r4s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> index fa5809887643..4dc6a80e8494 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> @@ -1,15 +1,13 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  /*
> - * FriendlyElec NanoPC-T4 board device tree source
> + * Copyright (c) 2016 Fuzhou Rockchip Electronics Co., Ltd
>   *
> - * Copyright (c) 2020 FriendlyElec Computer Tech. Co., Ltd.
> + * Copyright (c) 2018 FriendlyElec Computer Tech. Co., Ltd.
>   * (http://www.friendlyarm.com)
>   *
>   * Copyright (c) 2018 Collabora Ltd.
> - *
> - * Copyright (c) 2020 Jensen Huang <jensenhuang@friendlyarm.com>
> - * Copyright (c) 2020 Marty Jones <mj8263788@gmail.com>
> - * Copyright (c) 2021 Tianling Shen <cnsztl@gmail.com>
> + * Copyright (c) 2019 Arm Ltd.
> + * Copyright (C) 2020 Xiaobo <peterwillcn@gmail.com>

You don't get to remove other people's copyright.

>   */
>
>  /dts-v1/;
> @@ -19,48 +17,59 @@ / {
>         model = "FriendlyElec NanoPi R4S";
>         compatible = "friendlyarm,nanopi-r4s", "rockchip,rk3399";
>
> -       /delete-node/ display-subsystem;
> -
> -       gpio-leds {
> -               pinctrl-0 = <&lan_led_pin>, <&sys_led_pin>, <&wan_led_pin>;
> -
> -               /delete-node/ led-0;
> -
> -               lan_led: led-lan {
> -                       gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
> -                       label = "green:lan";
> -               };
> +       chosen {
> +               stdout-path = "serial2:1500000n8";
> +       };

This is already defined in the underlying nanopi4.dtsi file.

>
> -               sys_led: led-sys {
> -                       gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> -                       label = "red:sys";
> -                       default-state = "on";
> -               };
> +       /delete-node/ display-subsystem;
>
> -               wan_led: led-wan {
> -                       gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> -                       label = "green:wan";
> -               };
> +       vcc1v8_s3: vcc1v8-s3 {
> +               compatible = "regulator-fixed";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;
> +               regulator-name = "vcc1v8_s3";
> +               vin-supply = <&vcc_1v8>;

As mentioned above, this is just copying stuff from the nanopi4.dtsi file
for no reason.

>         };
>
> -       gpio-keys {
> -               pinctrl-0 = <&reset_button_pin>;
> +       vcc3v0_sd: vcc3v0-sd {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpio = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&sdmmc0_pwr_h>;
> +               regulator-always-on;
> +               regulator-min-microvolt = <3000000>;
> +               regulator-max-microvolt = <3000000>;
> +               regulator-name = "vcc3v0_sd";
> +               vin-supply = <&vcc3v3_sys>;
> +       };

Same here.

>
> -               /delete-node/ power;
> +       vcc3v3_sys: vcc3v3-sys {
> +               compatible = "regulator-fixed";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               regulator-name = "vcc3v3_sys";
> +       };

And here.

>
> -               reset {
> -                       debounce-interval = <50>;
> -                       gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
> -                       label = "reset";
> -                       linux,code = <KEY_RESTART>;
> -               };
> +       vcc5v0_sys: vcc5v0-sys {
> +               compatible = "regulator-fixed";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +               regulator-name = "vcc5v0_sys";
> +               vin-supply = <&vdd_5v>;

And here.

>         };
>
>         vdd_5v: vdd-5v {
>                 compatible = "regulator-fixed";
> -               regulator-name = "vdd_5v";
>                 regulator-always-on;
>                 regulator-boot-on;
> +               regulator-name = "vdd_5v";

We _want_ the name to come first.

>         };
>  };
>
> @@ -68,40 +77,51 @@ &emmc_phy {
>         status = "disabled";
>  };
>
> +&fusb0 {
> +       status = "disabled";
> +};
> +
> +&i2c2 {
> +       eeprom@51 {
> +               compatible = "microchip,24c02", "atmel,24c02";
> +               reg = <0x51>;
> +               pagesize = <16>;
> +               read-only;
> +       };
> +};
> +

This is already covered by

https://lore.kernel.org/linux-rockchip/20210622034505.18824-1-cnsztl@gmail.com/

>  &i2c4 {
>         status = "disabled";
>  };
>
> -&pcie0 {
> -       max-link-speed = <1>;
> -       num-lanes = <1>;
> -       vpcie3v3-supply = <&vcc3v3_sys>;
> +&leds {
> +       lan_led: led-1 {
> +               gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
> +               label = "green:lan";
> +       };
> +
> +       wan_led: led-2 {
> +               gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> +               label = "green:wan";
> +       };

This needs to be in a separate patch.

>  };
>
>  &pinctrl {
>         gpio-leds {
> -               /delete-node/ status-led-pin;
> -
>                 lan_led_pin: lan-led-pin {
>                         rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
>                 };
>
> -               sys_led_pin: sys-led-pin {
> -                       rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> -               };
> -
>                 wan_led_pin: wan-led-pin {
>                         rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
>                 };
>         };
> +};
>
> -       rockchip-key {
> -               /delete-node/ power-key;
> -
> -               reset_button_pin: reset-button-pin {
> -                       rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
> -               };
> -       };
> +&pcie0 {
> +       max-link-speed = <1>;
> +       num-lanes = <1>;
> +       vpcie3v3-supply = <&vcc3v3_sys>;
>  };

Why are you moving this out of order? "pcie0" comes before "pinctrl" in
dictionary order.

>
>  &sdhci {
> @@ -112,6 +132,10 @@ &sdio0 {
>         status = "disabled";
>  };
>
> +&sdmmc {
> +       host-index-min = <1>;

This is not documented, nor is it supported.

> +};
> +
>  &u2phy0_host {
>         phy-supply = <&vdd_5v>;
>  };
> @@ -120,14 +144,6 @@ &u2phy1_host {
>         status = "disabled";
>  };
>
> -&uart0 {
> -       status = "disabled";
> -};
> -

Why? UART0 is not wired to anything, but it is enabled in the include dtsi
file. It absolutely should be disabled.

>  &usbdrd_dwc3_0 {
>         dr_mode = "host";
>  };
> -
> -&vcc3v3_sys {
> -       vin-supply = <&vcc5v0_sys>;
> -};

This whole patch feels like you took the dts file from some other patch,
copied it over, and failed to check for redundancies.


ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
