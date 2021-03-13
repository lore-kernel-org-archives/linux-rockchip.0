Return-Path: <SRS0=2xxz=IL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56ADC433DB
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Mar 2021 11:55:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 32F9464F17
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Mar 2021 11:55:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 32F9464F17
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xcveabYwR00fbLbMY3oeo9k8IqHx8cfMPtiD+0R74tE=; b=VuWNTMC8nYJeJHaoU/PY5Fqfu
	rcVg7VBbSGiiYxowwZl1pvRiPnJgZfehE/DAKMrnkRiTI2uQ8knGFj5JAVn8eN14mboUQXgG7KZIS
	gGIREFTReA4Z6w5Jae5Hlrw2SQaOl55HwvRyQNrkN9JhMvZDLN/sD0FD6tS2uxGuP9jD8kVCTlsHl
	n44s0Q4f+LOrESR4dkntgB3XKimY9ZlhZ18kVjlUfP2XPasD/xq+YOyZLcFLPLUNTZBRxIuV+JJw3
	1MdebdB18+8iI1Zwc8CmE4kyR4d/+VRrvRcyf1RFC/KGUx2IYhLagEXeQYIqlkZgWxGL0K1ZOEbMd
	uDVIlVGOQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lL2re-00DAJY-Tk; Sat, 13 Mar 2021 11:55:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lL2rL-00DAID-Cp; Sat, 13 Mar 2021 11:55:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF4CBED1;
 Sat, 13 Mar 2021 03:55:00 -0800 (PST)
Received: from [192.168.1.104] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E2503F70D;
 Sat, 13 Mar 2021 03:54:57 -0800 (PST)
Subject: Re: [PATCH v3 2/2] rockchip: rk3399: Add support for FriendlyARM
 NanoPi R4S
To: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Chen-Yu Tsai <wens@csie.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 David Bauer <mail@david-bauer.net>, =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?=
 <uwe@kleine-koenig.org>, Johan Jonker <jbx6244@gmail.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Marty Jones <mj8263788@gmail.com>, Jensen Huang <jensenhuang@friendlyarm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel test robot <lkp@intel.com>
References: <20210313032515.12590-1-cnsztl@gmail.com>
 <20210313032515.12590-2-cnsztl@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1f7f1a11-0b9b-b2e4-efbc-193f61d62832@arm.com>
Date: Sat, 13 Mar 2021 11:54:49 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210313032515.12590-2-cnsztl@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210313_115510_722732_8B9B8C78 
X-CRM114-Status: GOOD (  25.48  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-03-13 03:25, Tianling Shen wrote:
> This adds support for the NanoPi R4S from FriendlyArm.
> 
> Rockchip RK3399 SoC
> 1GB DDR3 or 4GB LPDDR4 RAM
> Gigabit Ethernet (WAN)
> Gigabit Ethernet (PCIe) (LAN)
> USB 3.0 Port x 2
> MicroSD slot
> Reset button
> WAN - LAN - SYS LED
> 
> [initial DTS file]
> Co-developed-by: Jensen Huang <jensenhuang@friendlyarm.com>
> Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
> [minor adjustments]
> Co-developed-by: Marty Jones <mj8263788@gmail.com>
> Signed-off-by: Marty Jones <mj8263788@gmail.com>
> [fixed format issues]
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> 
> Reported-by: kernel test robot <lkp@intel.com>
> ---
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../boot/dts/rockchip/rk3399-nanopi-r4s.dts   | 179 ++++++++++++++++++
>   2 files changed, 180 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 62d3abc17a24..c3e00c0e2db7 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -36,6 +36,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4b.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-r4s.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> new file mode 100644
> index 000000000000..41b3d5c5043c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> @@ -0,0 +1,179 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * FriendlyElec NanoPC-T4 board device tree source
> + *
> + * Copyright (c) 2020 FriendlyElec Computer Tech. Co., Ltd.
> + * (http://www.friendlyarm.com)
> + *
> + * Copyright (c) 2018 Collabora Ltd.
> + *
> + * Copyright (c) 2020 Jensen Huang <jensenhuang@friendlyarm.com>
> + * Copyright (c) 2020 Marty Jones <mj8263788@gmail.com>
> + * Copyright (c) 2021 Tianling Shen <cnsztl@gmail.com>
> + */
> +
> +/dts-v1/;
> +#include "rk3399-nanopi4.dtsi"
> +
> +/ {
> +	model = "FriendlyElec NanoPi R4S";
> +	compatible = "friendlyarm,nanopi-r4s", "rockchip,rk3399";
> +
> +	/delete-node/ gpio-leds;

Why? You could justify deleting &status_led, but redefining the whole 
node from scratch seems unnecessary.

> +	gpio-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-0 = <&lan_led_pin>, <&sys_led_pin>, <&wan_led_pin>;
> +		pinctrl-names = "default";
> +
> +		lan_led: led-0 {
> +			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
> +			label = "nanopi-r4s:green:lan";
> +		};
> +
> +		sys_led: led-1 {
> +			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> +			label = "nanopi-r4s:red:sys";
> +			default-state = "on";
> +		};
> +
> +		wan_led: led-2 {
> +			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> +			label = "nanopi-r4s:green:wan";
> +		};
> +	};
> +
> +	/delete-node/ gpio-keys;

Ditto - just removing the power key node itself should suffice.

> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&reset_button_pin>;
> +
> +		reset {
> +			debounce-interval = <50>;
> +			gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
> +			label = "reset";
> +			linux,code = <KEY_RESTART>;
> +		};
> +	};
> +
> +	vdd_5v: vdd-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_5v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	fan: pwm-fan {
> +		compatible = "pwm-fan";
> +		/*
> +		 * With 20KHz PWM and an EVERCOOL EC4007H12SA fan, these levels
> +		 * work out to 0, ~1200, ~3000, and 5000RPM respectively.
> +		 */
> +		cooling-levels = <0 12 18 255>;

This is clearly not true - those numbers refer to a 12V fan on my 
NanoPC-T4's 12V PWM circuit, while the output circuit here is 5V. If you 
really want a placeholder here maybe just use <0 255>, or figure out 
some empirical values with a suitable 5V fan that are actually meaningful.

> +		#cooling-cells = <2>;
> +		fan-supply = <&vdd_5v>;
> +		pwms = <&pwm1 0 50000 0>;
> +	};
> +};
> +
> +&cpu_thermal {
> +	trips {
> +		cpu_warm: cpu_warm {
> +			temperature = <55000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +
> +		cpu_hot: cpu_hot {
> +			temperature = <65000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map2 {
> +			trip = <&cpu_warm>;
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +		};
> +
> +		map3 {
> +			trip = <&cpu_hot>;
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};
> +
> +&emmc_phy {
> +	status = "disabled";
> +};
> +
> +&fusb0 {
> +	status = "disabled";

This can never be enabled since it doesn't exist in the design at all, 
so it's one place where deletion *would* make good sense. AFAICS this 
means you also don't need i2c4 enabled either.

> +};

It might be nice to disable HDMI and all the other display pieces given 
that the board is physically headless.

> +
> +&pcie0 {
> +	max-link-speed = <1>;
> +	num-lanes = <1>;
> +	vpcie3v3-supply = <&vcc3v3_sys>;
> +
> +	pcie@0 {
> +		reg = <0x00000000 0 0 0 0>;
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +	};

What's this for?

> +};
> +
> +&pinctrl {
> +	/delete-node/ gpio-leds;

Again, at most you'd only need to delete &status_led_pin.

> +	gpio-leds {
> +		lan_led_pin: lan-led-pin {
> +			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		sys_led_pin: sys-led-pin {
> +			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		wan_led_pin: wan-led-pin {
> +			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	/delete-node/ rockchip-key;

Ditto for &power_key.

> +	rockchip-key {
> +		reset_button_pin: reset-button-pin {
> +			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +
> +&sdhci {
> +	status = "disabled";
> +};
> +
> +&sdio0 {
> +	status = "disabled";
> +};
> +
> +&sdmmc {
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;

Are those modes unique to this particular board?

> +};
> +

What about the Bluetooth stuff on uart0?

Robin.

> +&u2phy0_host {
> +	phy-supply = <&vdd_5v>;
> +};
> +
> +&u2phy1_host {
> +	status = "disabled";
> +};
> +
> +&usbdrd_dwc3_0 {
> +	dr_mode = "host";
> +};
> +
> +&vcc3v3_sys {
> +	vin-supply = <&vcc5v0_sys>;
> +};
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
