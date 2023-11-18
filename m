Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CE23C54FB9
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Nov 2023 12:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irELTplz6UBgUFNlFaB//bnLzy5BkQ0pQhuhbpuMKQE=; b=o33T402FDkYVcl
	grqrWOdPZTqXEpHiVPQXbZ5K/iHEFiucNiynUobbKIsuQVrG5O/l3x/K0+sQQ6hQoV6YKgkLFDCI5
	x2JjWiuR+feyLbBkBOxupPI53e+o/KbUeCmFzm1ipmQfxbfnwrJB57R+WbX5GtLeI8Sob8sjBd3Lp
	Uuxt4V94OtSA0jAWxnO9VC9+Y79gqSV7jq5sTDZaUyoIbMRjR95wlMPTjJhs7rw4HOyWit6e2mdhG
	TJEwVOc7iNWjmzJuf+HW+wp1rX8bBv660hGyfJ8t5fXJIgkGPUfAb10HwVm2sUGl92KM50oW1AJDL
	hJRlST+L9g6p+pd05jsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4K8W-008QRO-0v;
	Sat, 18 Nov 2023 12:09:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4K8T-008QQk-1j;
	Sat, 18 Nov 2023 12:09:18 +0000
Received: from i5e861935.versanet.de ([94.134.25.53] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r4K8I-0000ix-Ta; Sat, 18 Nov 2023 13:09:06 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Tim Lunn <tim@feathertop.org>
Cc: Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Tim Lunn <tim@feathertop.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 7/8] ARM: dts: Add Sonoff iHost Smart Home Hub
Date: Sat, 18 Nov 2023 13:09:05 +0100
Message-ID: <4921575.Y6S9NjorxK@diego>
In-Reply-To: <20231113120705.1647498-8-tim@feathertop.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
 <20231113120705.1647498-8-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231118_040917_579803_6EBC8B8B 
X-CRM114-Status: GOOD (  22.66  )
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

Hi Tim,

Am Montag, 13. November 2023, 13:07:04 CET schrieb Tim Lunn:
> Sonoff iHost is gateway device designed to provide a Smart Home Hub,
> it is based on Rockchip RV1126. There is also a version with 2GB RAM
> based off the RV1109 dual core SoC.
> 
> Features:
> - Rockchip RV1126
> - 4GB DDR4
> - 8GB eMMC
> - microSD slot
> - RMII Ethernet PHY
> - 1x USB 2.0 Host
> - 1x USB 2.0 OTG
> - Realtek RTL8723DS WiFi/BT
> - EFR32MG21 Silabs Zigbee radio
> - Speaker/Microphone
> 
> This patch adds the initial device tree for this device, it is largely
> based off the device trees for mainline Edgeble Neu2 and downstream
> Rockchip rv1126-evb-v13 configs. It has been adapted with relevant
> peripheral and GPIO pins for the iHost.
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>


> diff --git a/arch/arm/boot/dts/rockchip/rv1109.dtsi b/arch/arm/boot/dts/rockchip/rv1109.dtsi
> new file mode 100644
> index 000000000000..9cbaa08ab1b8
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1109.dtsi
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include "rv1126.dtsi"
> +
> +/ {
> +	compatible = "rockchip,rv1109";
> +
> +	cpus {
> +		/delete-node/ cpu@f02;
> +		/delete-node/ cpu@f03;
> +	};
> +
> +	arm-pmu {
> +		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-affinity = <&cpu0>, <&cpu1>;
> +	};
> +};

this definitly wants to be its own patch ;-) .

I.e. you add support for the rv1109, which seems to be the same as rv1126, just
with 2 instead of 4 cpu cores.




> +&sdio {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	keep-power-in-suspend;
> +	max-frequency = <100000000>;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
> +	rockchip,default-sample-phase = <90>;
> +	sd-uhs-sdr104;
> +	vmmc-supply = <&vcc3v3_sys>;
> +	vqmmc-supply = <&vcc_1v8>;
> +	status = "okay";
> +	#address-cells = <1>;
> +	#size-cells = <0>;

I don't think the *-cells are needed here


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
