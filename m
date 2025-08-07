Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50A7AC87FDA
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Aug 2025 11:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOAbr9mduNExPxGWJatquzymX1uQpOJqcSDj7edT5L0=; b=L3bTXNeM3m90VS
	shHwQdtJ7qoZDOHbmMzS07REo7CpyVxl43MfJNRgTzzE82lYyYb11DEHjzL8KC7edBnDGuBvjOU0H
	cyVuvFpHUmA1TEYgjjcgbVunu5CcHwfPpKGfZycCY3KvID1UXz985kLvotlBIy1GV5GAB8mSm2vpm
	LOAnzAMdbpNdS+v0QAIUCrrG+u6jk8I6XE4fV6Z/WYQmdiwqcFPWOBSLzoIq8fpSiQd9HLvYNDM7R
	dlQDWCf49v7suNKEt+nOUWe5PbNHdqbGe64nJLVisZwCgDGUmmensnv8AgaLIoWVkY4BzFfjuG/u0
	PgCDme9SVgu9KKXQLwtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujz8m-00000000Qsg-3ivm;
	Thu, 07 Aug 2025 11:50:36 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujz6n-00000000QTD-0VWv
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Aug 2025 11:48:35 +0000
X-QQ-mid: zesmtpip4t1754567235t8a796b49
X-QQ-Originating-IP: mmCBvCuxEsz+t7Bnuow0glS9H9YFEoLdKihw4Fq2iCc=
Received: from [IPV6:240f:10b:7440:1:e250:2ab5 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 07 Aug 2025 19:47:11 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3419397945701426730
Message-ID: <15182C5FA04DB0A2+e2dbbd1f-24d6-4d9a-a822-222a71cc6dd8@radxa.com>
Date: Thu, 7 Aug 2025 20:47:11 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: rockchip: Add rk3588 based Radxa CM5
To: Joseph Kogut <joseph.kogut@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jimmy Hon <honyuenkwun@gmail.com>
Cc: Steve deRosier <derosier@cal-sierra.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
 <20250617-rk3588s-cm5-io-dts-upstream-v5-2-8d96854a5bbd@gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20250617-rk3588s-cm5-io-dts-upstream-v5-2-8d96854a5bbd@gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MW2WLBvYEeCvozn6IR6114VdDJEeDAXqEaoS5O9L8r0IWBg6EDEfGLiJ
	WGErZjg1II8kwxfMZQ/BfhhwQyDOib6DhjKfBQGdlypOYWdPL7UmZAU3gzjRWWQ/tszV4t0
	XsuPcLH6NXxqpZrHR3/64rsarupAxsBYAfHzFL6rCwafApQG3rOQnUU0IqZj9KTB0ymycMV
	cVosiV3n6XTSjvESHT7ElsfhpJEw53Pim5ecHAwiV98aNaELlSN28Q+Zu36r4HdUHWpawvH
	zxXyvoZFLTgKcFPn2dsPo8pzbh9n8tjRuamxL6dUnhxxrNag6adrJTqrg2LbaLmJEj76+Gb
	wVy5S5j+bB+t13n+bhaGnDt5xw487Ihn1kHuO+u2hijKoXe9PKh8vc0KqwQeNz2TWx5JqsY
	wrs61wDK6nouwyR1WI0QUBRYedwGTemT2LB8LIJUAHzFd3MJH/fUq/5XQ7KKyKSyjkJduUy
	RwzrrOMr5vDfjinZJEQtHsJQLPnaP+r43F0j/PAsq6u3fLWxhx26TKpTI/aRzWdwsoE15Yj
	Cr0CErSTuTeeQ1h301HWb3FejdaCCZU9emyhdu8NJkjuk2Ns0mzcFNTDG9LU+nlDEMmQX35
	9or82EDGtR7/LQV97SUhfc7JxIna1xA508SpbjC7U4Gvm27K87/gbi5N0+fA/PR9mBW3ChK
	kRtdcET9Lq4DMZuQr2T/elycn27dSQA7Wzl4STyIUUXdFkE6jAsY5SG2Hm+9psOx++kqP0e
	JeoKC6l5kzuzjjWVq9xwRiqWa5bVjhuNN9uONvSn/0v5ugnY8fTdC7ug772WtOlTDK4iP1I
	LxPujcdkoIKYgjcx+zy/HZ1NZIc94VSttUPA271Ka+bfGzoFqjX97lPUHJ6mXBiLzfecIKI
	MiGjahGIjBdmOpYMuezypoX2lJrcV54Fllg65kOEXJxO80pjw9HjslclZDj5Pv0Gk00+19K
	kHq3pexWm/CaN0f2zW/51+VNctwO/UZh9sv1LbOcZzRdwoA==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_044833_666337_FE65C203 
X-CRM114-Status: GOOD (  14.02  )
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

Hi Joseph,

First of all, thank you very much for your hard work!

On 6/18/25 07:12, Joseph Kogut wrote:
> Add initial support for the Radxa Compute Module 5 (CM5). The CM5 uses a
> proprietary connector.
> 
> Specification:
> - Rockchip RK3588
> - Up to 32 GB LPDDR4X
> - Up to 128 GB eMMC
> - 1x HDMI TX up to 8k@60 hz
> - 1x eDP TX up to 4k@60 hz
> - Gigabit Ethernet PHY
> 
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
>   .../arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi | 135 +++++++++++++++++++++
>   1 file changed, 135 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
> new file mode 100644
> index 0000000000000000000000000000000000000000..6410ea5255dc783e5d24677853ccf1c78008e834
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
> @@ -0,0 +1,135 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2025 Joseph Kogut <joseph.kogut@gmail.com>
> + */
> +
> +/*
> + * CM5 data sheet
> + * https://dl.radxa.com/cm5/v2210/radxa_cm5_v2210_schematic.pdf
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include <dt-bindings/usb/pd.h>
> +
> +/ {
> +	compatible = "radxa,cm5", "rockchip,rk3588s";
> +
> +	aliases {
> +		mmc0 = &sdhci;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led_sys: led-0 {
> +			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
> +			function = LED_FUNCTION_HEARTBEAT;
> +			gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +};
> +
> +&cpu_b0 {
> +	cpu-supply = <&vdd_cpu_big0_s0>;
> +};
> +
> +&cpu_b1 {
> +	cpu-supply = <&vdd_cpu_big0_s0>;
> +};
> +
> +&cpu_b2 {
> +	cpu-supply = <&vdd_cpu_big1_s0>;
> +};
> +
> +&cpu_b3 {
> +	cpu-supply = <&vdd_cpu_big1_s0>;
> +};
> +
> +&cpu_l0 {
> +	cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l1 {
> +	cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l2 {
> +	cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l3 {
> +	cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&gpu {
> +	mali-supply = <&vdd_gpu_s0>;
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c0m2_xfer>;
> +	status = "okay";
> +
> +	vdd_cpu_big0_s0: regulator@42 {
> +		compatible = "rockchip,rk8602";
> +		reg = <0x42>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-name = "vdd_cpu_big0_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <550000>;
> +		regulator-max-microvolt = <1050000>;
> +		regulator-ramp-delay = <2300>;
> +		vin-supply = <&vcc5v0_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_cpu_big1_s0: regulator@43 {
> +		compatible = "rockchip,rk8602";
> +		reg = <0x43>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-name = "vdd_cpu_big1_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <550000>;
> +		regulator-max-microvolt = <1050000>;
> +		regulator-ramp-delay = <2300>;
> +		vin-supply = <&vcc5v0_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&mdio1 {
> +	rgmii_phy1: phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;
> +	};
> +};
> +
> +&pd_gpu {
> +	domain-supply = <&vdd_gpu_s0>;
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
> +	mmc-hs200-1_8v;
> +	status = "okay";
> +};
> +

Please remove the last blank line.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
