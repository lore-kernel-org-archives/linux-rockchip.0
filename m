Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F97BCE7AE2
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 08:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHew6NPpnKt0EuxrA6gIYCyNrK1idTmZ0MSKmUD1UcU=; b=FtJ4UtcL5go59o
	r9/NcLiMHdXD705OoqTSshr0JHF5NM45GOh/igEolBbGZo0EWiJUcvrDnv1yNRncNuCWSW3Z2bBuu
	1DeYiHiRtjVhNh+RzhK4Ii9ZgPnM2md51/CTreRuKxx+2/MHFTwoQimBryBWKPR6Qt8/8CP7Odouv
	sqVeB0Y36SnZyaKC39W8wAT4l9jvv+ofj3iiUIvt3IOa/ZHfxmqJJhBeBayXR6BdGiXVBjJBlnqJp
	qa8APbVF+3u81R1BeKQoiJp8uvyMm7E/hpF31SX2mBnxkT4FwtAurpYLrDZpAkNsNJfZyd4QNoQ7H
	YuPhyg9zxETN7wqR+zoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smU3R-0000000BF5y-17Sb;
	Fri, 06 Sep 2024 08:10:53 +0000
Received: from mail-m1029.netease.com ([154.81.10.29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smU3B-0000000BF28-3iQq;
	Fri, 06 Sep 2024 08:10:39 +0000
Received: from amadeus-Vostro-3710.lan (unknown [119.122.212.181])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 80F117E016D;
	Fri,  6 Sep 2024 16:10:10 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
Date: Fri,  6 Sep 2024 16:10:05 +0800
Message-Id: <20240906081005.69334-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240906045706.1004813-4-bigfoot@classfun.cn>
References: <20240906045706.1004813-4-bigfoot@classfun.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTE9CVkoZQh1LGhhLGE9ISVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVKQ0pZV1kWGg8SFR0UWUFZT0tIVUpLSEpMTElVSktLVU
	pCS0tZBg++
X-HM-Tid: 0a91c66235eb03a2kunm80f117e016d
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PFE6KRw6QjI4HT4wIzE2FR8L
	AUoKCxRVSlVKTElOTUpLSUpKSEJIVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpJVUpDSllXWQgBWUFITEpJNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_011038_148670_F98B05F4 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
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

Hi Junhao,

> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
> @@ -0,0 +1,595 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include <dt-bindings/soc/rockchip,boot-mode.h>

No need for input.h, leds/common.h and boot-mode.h.

> +#include "rk3568.dtsi"
> ...
> +	vcc3v3_sd: regulator-3v3-vcc-sd {
> +		pinctrl-0 = <&vcc_sd_h>;

schematics: sdmmc0_pwren

> ...
> +	vcc3v3_rf: regulator-3v3-vcc-rf {

schematics: VCC3V4_RF
VCCIN_5V -> VCC3V4_RF

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc3v3_rf_pwren_en>;

schematics: RF_PWR_EN

> ...
> +	vcc5v0_sysin: regulator-5v0-vcc-sysin {

schematics: VCC_SYSIN

> ...
> +	vcc5v0_syson: regulator-5v0-vcc-syson {

schematics: VCC_SYSON

> ...
> +	vcc5v0_usb30_otg0: regulator-5v0-vcc-usb-host {
> ...
> +		vin-supply = <&vcc5v0_syson>;

VCCIN_5V -> VCC5V0_USB30_OTG0

> ...
> +&gmac1 {
> ...
> +	tx_delay = <0x0>;
> +	rx_delay = <0x0>;

Please remove the tx_delay and rx_delay, it's useless.
I know there is an error log, but please ignore it first.

> ...
> +&pinctrl {
> ...
> +		bt_reg_on_h: bt-enable-h {
> +		pcie_pwren_h: pcie-enable-h {
> +		wifi_reg_on_h: wifi-enable-h {
> +		vcc3v3_rf_pwren_en: vcc5v0-modem-en {
> +		usb_host_pwren_h: vcc5v0-host-en {

obviously (

> +	wifi_pwrseq: wifi-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> ...
> +&pinctrl {
> ...
> +	sdio-pwrseq {

I tend to write like this:

```
&pinctrl {
	wifi {
		wifi_reg_on_h: wifi-reg-on-h {
```

> +	vcc_sd {
> +		vcc_sd_h: vcc-sd-h {

Overwrite original to match `sdmmc0_pwren`

sdmmc0 {
	sdmmc0_pwren: sdmmc0-pwren {

> +			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +

Extra blank lines.

> +};
> ...
> &sdmmc1 {
> ...
> 	max-frequency = <150000000>;

`max-frequency = <150000000>;` already defined in rk356x.dtsi

> ...
> +&usb_host0_ohci {
> ...
> +&usb_host0_ehci {

&usb_host0_ehci {
&usb_host0_ohci {

Same for usb_host1

> ...
> &usb2phy1_host {
> 	phy-supply = <&vcc3v3_rf>;
> 	status = "okay";
> };

Is usb2phy1_host connected?

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
