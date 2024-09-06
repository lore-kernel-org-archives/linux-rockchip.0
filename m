Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B697BCE7B1B
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 14:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A64MMxhH44vbOC3wbbDRZrJT3R7eBYFT4k3Lg9orrLw=; b=1/oDAOGMJSTQZo
	kvtyi4rNkHapDSj6zAE6cLm6MX9hSlKg0eyXa2skyEd+qItszcVZvHw4f+DrUasA1GfBV29awVgEf
	12BN0hfz3Iuiv9nFCeMB34iX6Ss4sF0mofKTX2ZVnhEJydaWq4zfFPvnwvgW8tHNzD4p6HCWM3j9v
	F8Vc3hPvPHgA+j8QsHFPg7iTumD1e4ya/QLrMf6pK9VRPDNh7vLhJ76E/m9udNE3z/AplDNhaor4c
	4ZEUk5qP999j9bmVBJaQhj5rLlRjbmP5swE2JAbuoiNQ2upUvo6FbE5FskJvnVV36HCl+qCB8wmhm
	+U1Fh7gQezvpIo6rSH3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smZhJ-0000000CU81-2wxf;
	Fri, 06 Sep 2024 14:12:25 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smZgH-0000000CTqb-3ZiI;
	Fri, 06 Sep 2024 14:11:23 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id BE252789F5;
	Fri,  6 Sep 2024 22:11:15 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn BE252789F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725631877;
	bh=k0VLcrFTCAtKxfm0iaob131MuzN5vsg7K8XcHnszFKg=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=Xk0YC8148UlSEJD35KJNHCvQUpDUCFvmWY6AdrJJlKZZW+Kd3pHAG4dNyArU7FAkB
	 EEyQn/yWr1arab7gSL3iYHHTUnulcBhY3ZJQgkKY9OKdLMGYhd9UYpkDcEGdocWnGs
	 9hYQFu9vNEOVt4xfb4eAgydZPuX7ES5uJGIzDuGI=
Message-ID: <53784a02-087b-4912-94a9-aead49d7abea@classfun.cn>
Date: Fri, 6 Sep 2024 22:12:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Chukun Pan <amadeus@jmu.edu.cn>
References: <20240906045706.1004813-4-bigfoot@classfun.cn>
 <20240906081005.69334-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <20240906081005.69334-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_071122_524332_047FAD0F 
X-CRM114-Status: GOOD (  18.46  )
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

On 2024/9/6 16:10, Chukun Pan wrote:
> Hi Junhao,
> 
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
>> @@ -0,0 +1,595 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +#include <dt-bindings/leds/common.h>
>> +#include <dt-bindings/pinctrl/rockchip.h>
>> +#include <dt-bindings/soc/rockchip,vop2.h>
>> +#include <dt-bindings/soc/rockchip,boot-mode.h>
> 
> No need for input.h, leds/common.h and boot-mode.h.

I will remove them.

> 
>> +#include "rk3568.dtsi"
>> ...
>> +	vcc3v3_sd: regulator-3v3-vcc-sd {
>> +		pinctrl-0 = <&vcc_sd_h>;
> 
> schematics: sdmmc0_pwren

I will rename vcc_sd_h to sdmmc0_pwren.

> 
>> ...
>> +	vcc3v3_rf: regulator-3v3-vcc-rf {
> 
> schematics: VCC3V4_RF

I will change it to "vcc3v4_rf: regulator-3v4-vcc-rf {"

> VCCIN_5V -> VCC3V4_RF

Is vccin_5v a new regulator or is it actually vcc_sysin?

> 
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vcc3v3_rf_pwren_en>;
> 
> schematics: RF_PWR_EN
> 
>> ...
>> +	vcc5v0_sysin: regulator-5v0-vcc-sysin {
> 
> schematics: VCC_SYSIN
> 
>> ...
>> +	vcc5v0_syson: regulator-5v0-vcc-syson {
> 
> schematics: VCC_SYSON

I will rename them.

> 
>> ...
>> +	vcc5v0_usb30_otg0: regulator-5v0-vcc-usb-host {
>> ...
>> +		vin-supply = <&vcc5v0_syson>;
> 
> VCCIN_5V -> VCC5V0_USB30_OTG0
> 
>> ...
>> +&gmac1 {
>> ...
>> +	tx_delay = <0x0>;
>> +	rx_delay = <0x0>;
> 
> Please remove the tx_delay and rx_delay, it's useless.
> I know there is an error log, but please ignore it first.

OK, I will remove them.

> 
>> ...
>> +&pinctrl {
>> ...
>> +		bt_reg_on_h: bt-enable-h {
>> +		pcie_pwren_h: pcie-enable-h {
>> +		wifi_reg_on_h: wifi-enable-h {
>> +		vcc3v3_rf_pwren_en: vcc5v0-modem-en {
>> +		usb_host_pwren_h: vcc5v0-host-en {
> 
> obviously (

Yes, I forgot to modify them, it looks better like this:
bt_reg_on_h: bt-reg-on-h {
pcie_pwren_h: pcie-pwren-h {
wifi_reg_on_h: wifi-reg-on-h {
sdmmc0_pwren: sdmmc0-pwren {
rf_pwren_en: rf-pwren-en {
usb_host_pwren_h: usb-host-pwren-h {

> 
>> +	wifi_pwrseq: wifi-pwrseq {
>> +		compatible = "mmc-pwrseq-simple";
>> ...
>> +&pinctrl {
>> ...
>> +	sdio-pwrseq {
> 
> I tend to write like this:

I will rename them.

> 
> ```
> &pinctrl {
> 	wifi {
> 		wifi_reg_on_h: wifi-reg-on-h {
> ```
> 
>> +	vcc_sd {
>> +		vcc_sd_h: vcc-sd-h {
> 
> Overwrite original to match `sdmmc0_pwren`
> 
> sdmmc0 {
> 	sdmmc0_pwren: sdmmc0-pwren {
> 
>> +			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
> 
> Extra blank lines.
> 
>> +};
>> ...
>> &sdmmc1 {
>> ...
>> 	max-frequency = <150000000>;
> 
> `max-frequency = <150000000>;` already defined in rk356x.dtsi

Yes, I will remove them.

> 
>> ...
>> +&usb_host0_ohci {
>> ...
>> +&usb_host0_ehci {
> 
> &usb_host0_ehci {
> &usb_host0_ohci {
> 
> Same for usb_host1
> 
>> ...
>> &usb2phy1_host {
>> 	phy-supply = <&vcc3v3_rf>;
>> 	status = "okay";
>> };
> 
> Is usb2phy1_host connected?

It looks like usb_host1_ehci, usb_host1_ohci, usb2phy1_host
are not used by any device.
I removed them and it still works fine.

> 
Thanks for your review, I will fix all problems in next version!

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
