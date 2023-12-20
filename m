Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2536AC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 11:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kVikhSSki1gJ671NI6JoeZaXiyDvYwjlMQ8CUBjV60=; b=mPDP8RhU8tkBI6
	pIE7Yfg+/EHviBuz9JMknDXO6DCNn296IMZ6pByr3jlYOR1/OSe3FVzzswPE5QBMKgYqT8d2ay1p4
	s9xfqZ6l4n27GOHF+mo5IzQF41HXGdn9GQF0e4kJo43rk88jUfbsbEzCNSzoEqSZhA9IOwyQeMpYw
	U3iUMjlZA7n3tTOWsH4g2sZy01scmUOA9mYE1dJX8FIZow66zoaXu3xfZm8OT8P9L4M6/RKSurTFr
	0ejh0jiK7qrqfl9KxYTq/CB5VoDpWg89vwbEb77Zrpniu6qbTU5VSmCQAvuKa8c1Acww5GnlyJ01Q
	6hVt2ioTCldib5/pPhtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFvDT-00HH1w-1a;
	Wed, 20 Dec 2023 11:58:23 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFvDO-00HGvR-0M;
	Wed, 20 Dec 2023 11:58:21 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-54c79968ffbso6296208a12.3;
        Wed, 20 Dec 2023 03:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703073495; x=1703678295; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M4MQp2OF3aCJPYa6DyRdPYe2gbJFAe3IaKNMGusnjGg=;
        b=SOOPVDVsjE7Eqc1Q8dcttP+MZ1u5QVYhhrRATqmncItZGWCRc7vSpB8WiqaQ98Vlje
         fVNA6x0prLuFnogYKFfjhheQsA5hUCqjEfkemFXnjnDsT5IIhG8CYk5uhEGFoUpNNqUH
         0dhBmHHp0FkcN+uhmkQke8FbjKrGCrK9MRvFnPEt0frSGWzgaCcRQZ3M0N2NYbzjl+OY
         0YUQXfAmYXT+UJbUdBJ0wS1oE67fNuQ/I9vndeAyZElHYt5QB6AvPVGTBsYfUR9YvULM
         VycREYu4dHAQKG1S0h8ReWQrEgQXyA9VBdWbKUETUsego21DZya9FlrmPbYPvQIW6Rc9
         cw4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703073495; x=1703678295;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M4MQp2OF3aCJPYa6DyRdPYe2gbJFAe3IaKNMGusnjGg=;
        b=ANAyK+SdEaY21vJBO9kX7+XnUeOzGSpiM/x0XY+kiLNO3RSPpruLKz7Ga5uCzNMpu6
         znLykjX7ImJoj78ziI4IvAPkOqEQyUGseMn0KU8n328/rRVwh+0WE1dj66W6Kod+bESu
         qvkvjGJ/mwn2DLtHrkv73F6HH/w0Ejk4P8oPWE1LggDA2KycUaHY/LBw07tHNc8GXMLG
         iZ4lX/SEka/xp6NfXd3l0zBN1YDMGW3KBDS+M9ta+gOESRihp1+S1iNPfn18FPsUHEdj
         /2ejnH9WHG8EseDRxfY9To4XH2Duqh2NFQUbyA8f6O7IHHl+pS4eW5+q9zCeJQxeGDBz
         iscA==
X-Gm-Message-State: AOJu0YzsCa3Y36vos22lE8C1saKJsYipFr31fuaJ8WvxKqeg8q9BwdAB
	9D1ZIu0NyfVPo4OXvbn17aM=
X-Google-Smtp-Source: AGHT+IGhZLAxt4ECrXbJYifjVPpzAThqY1DSh5AXk6QBeSRsylGxXEgaYXLp8i+1DLNnhbTKRKMP6g==
X-Received: by 2002:a50:99dd:0:b0:553:fc4f:fd99 with SMTP id n29-20020a5099dd000000b00553fc4ffd99mr132389edb.54.1703073495044;
        Wed, 20 Dec 2023 03:58:15 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id cs1-20020a0564020c4100b0055282cb1033sm6311917edb.3.2023.12.20.03.58.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Dec 2023 03:58:14 -0800 (PST)
Message-ID: <406ba492-8f6b-26aa-55cf-2efa8d52ebaf@gmail.com>
Date: Wed, 20 Dec 2023 12:58:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: restyle emac nodes"
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 david.wu@rock-chips.com, Andy Yan <andy.yan@rock-chips.com>
References: <20231220103334.2665543-1-andyshrk@163.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20231220103334.2665543-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_035818_170979_B7491607 
X-CRM114-Status: GOOD (  21.01  )
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



On 12/20/23 11:33, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> When try to run rk3036 kylin board with mainline,
> I found the emac ethernet probe failed:
> 
> [    2.324583] loop: module loaded
> [    2.328435] SPI driver spidev has no spi_device_id for rockchip,spidev
> [    2.338688] tun: Universal TUN/TAP device driver, 1.6
> [    2.345397] rockchip_emac 10200000.ethernet: no regulator found
> [    2.351892] rockchip_emac 10200000.ethernet: ARC EMAC detected with id: 0x7fd02
> [    2.359331] rockchip_emac 10200000.ethernet: IRQ is 43
> [    2.364719] rockchip_emac 10200000.ethernet: MAC address is now e6:58:d6:ec:d9:7c
> [    2.396993] mdio_bus Synopsys MII Bus: mdio has invalid PHY address
> [    2.403306] mdio_bus Synopsys MII Bus: scan phy mdio at address 0
> [    2.508656] rockchip_emac 10200000.ethernet: of_phy_connect() failed
> [    2.516334] rockchip_emac 10200000.ethernet: failed to probe arc emac (-19)
> 
> This reverts commit 1dabb74971b3 ("ARM: dts: rockchip: restyle emac nodes")
> make emac on rk3036 kylin board probe right again:
> [    1.920385] CAN device driver interface
> [    1.925499] rockchip_emac 10200000.ethernet: no regulator found
> [    1.932535] rockchip_emac 10200000.ethernet: ARC EMAC detected with id: 0x7fd02
> [    1.940735] rockchip_emac 10200000.ethernet: IRQ is 42
> [    1.946743] rockchip_emac 10200000.ethernet: MAC address is now 96:7d:4f:0a:69:b3
> [    2.581340] rockchip_emac 10200000.ethernet: connected to Generic PHY phy with id 0xffffc816
> [    2.592560] e1000e: Intel(R) PRO/1000 Network Driver
> [    2.598136] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> 
> Fixes: 1dabb74971b3 ("ARM: dts: rockchip: restyle emac nodes")
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  arch/arm/boot/dts/rockchip/rk3036-evb.dts     | 16 ++++++----------
>  arch/arm/boot/dts/rockchip/rk3036-kylin.dts   | 16 ++++++----------
>  arch/arm/boot/dts/rockchip/rk3036.dtsi        |  2 ++
>  .../boot/dts/rockchip/rk3066a-marsboard.dts   | 17 +++++++----------
>  .../boot/dts/rockchip/rk3066a-rayeager.dts    | 15 +++++----------
>  .../boot/dts/rockchip/rk3188-radxarock.dts    | 19 ++++++++-----------
>  arch/arm/boot/dts/rockchip/rk3xxx.dtsi        |  2 ++
>  7 files changed, 36 insertions(+), 51 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036-evb.dts b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
> index becdc0b664bf..94216f870b57 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036-evb.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
> @@ -15,20 +15,16 @@ memory@60000000 {
>  };
>  
>  &emac {
> -	phy = <&phy0>;
> -	phy-reset-duration = <10>; /* millisecond */
> -	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
> -	status = "okay";
> +	phy = <&phy0>;
> +	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
> +	phy-reset-duration = <10>; /* millisecond */


>  
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> +	status = "okay";
>  
> -		phy0: ethernet-phy@0 {
> -			reg = <0>;
> -		};
> +	phy0: ethernet-phy@0 {
> +		reg = <0>;
>  	};

Sorry, didn't have the hardware when changing that binding.
A little bit background info:

The rk3036 TRM states:
Management Interface (MDIO) state machine for easy real-time communication with the
PHY

A revert of the DT must also match a binding. But...
Bindings must describe the hardware as close as possible.
So when the phy is called over the mdio we must add phy as part of a mdio node.(Is that correct? Ask a expert!)
Somehow the old emac driver doesn't support this sub node setup.
First request would be have a look to make the driver work as it should.

Johan

>  };
>  
> diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> index 67e1e04139e7..e817eba8c622 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> @@ -80,20 +80,16 @@ &acodec {
>  };
>  
>  &emac {
> -	phy = <&phy0>;
> -	phy-reset-duration = <10>; /* millisecond */
> -	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
> -	status = "okay";
> +	phy = <&phy0>;
> +	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
> +	phy-reset-duration = <10>; /* millisecond */
>  
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> +	status = "okay";
>  
> -		phy0: ethernet-phy@0 {
> -			reg = <0>;
> -		};
> +	phy0: ethernet-phy@0 {
> +		reg = <0>;
>  	};
>  };
>  
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 78686fc72ce6..e240b89b0b35 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -228,6 +228,8 @@ emac: ethernet@10200000 {
>  		compatible = "rockchip,rk3036-emac";
>  		reg = <0x10200000 0x4000>;
>  		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
>  		rockchip,grf = <&grf>;
>  		clocks = <&cru HCLK_MAC>, <&cru SCLK_MACREF>, <&cru SCLK_MAC>;
>  		clock-names = "hclk", "macref", "macclk";
> diff --git a/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts b/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
> index f6e8d49a02ef..e3d6f0e81330 100644
> --- a/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
> @@ -150,21 +150,18 @@ vcc28_cif: regulator@12 {
>  #include "../tps65910.dtsi"
>  
>  &emac {
> +	status = "okay";
> +
>  	phy = <&phy0>;
>  	phy-supply = <&vcc_rmii>;
> +
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&phy_int>;
> -	status = "okay";
> -
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
>  
> -		phy0: ethernet-phy@0 {
> -			reg = <0>;
> -			interrupt-parent = <&gpio1>;
> -			interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
> -		};
> +	phy0: ethernet-phy@0 {
> +		reg = <0>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
>  	};
>  };
>  
> diff --git a/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts b/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
> index 29d8e5bf88f5..096616324c2d 100644
> --- a/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
> @@ -142,20 +142,15 @@ &cpu1 {
>  };
>  
>  &emac {
> -	phy = <&phy0>;
> -	phy-supply = <&vcc_rmii>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&rmii_rst>;
> +	phy = <&phy0>;
> +	phy-supply = <&vcc_rmii>;
>  	status = "okay";
>  
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		phy0: ethernet-phy@0 {
> -			reg = <0>;
> -			reset-gpios = <&gpio1 RK_PD6 GPIO_ACTIVE_LOW>;
> -		};
> +	phy0: ethernet-phy@0 {
> +		reg = <0>;
> +		reset-gpios = <&gpio1 RK_PD6 GPIO_ACTIVE_LOW>;
>  	};
>  };
>  
> diff --git a/arch/arm/boot/dts/rockchip/rk3188-radxarock.dts b/arch/arm/boot/dts/rockchip/rk3188-radxarock.dts
> index 118deacd38c4..239d2ec37fdc 100644
> --- a/arch/arm/boot/dts/rockchip/rk3188-radxarock.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3188-radxarock.dts
> @@ -126,21 +126,18 @@ vsys: vsys-regulator {
>  };
>  
>  &emac {
> -	phy = <&phy0>;
> -	phy-supply = <&vcc_rmii>;
> +	status = "okay";
> +
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&phy_int>;
> -	status = "okay";
>  
> -	mdio {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> +	phy = <&phy0>;
> +	phy-supply = <&vcc_rmii>;
>  
> -		phy0: ethernet-phy@0 {
> -			reg = <0>;
> -			interrupt-parent = <&gpio3>;
> -			interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
> -		};
> +	phy0: ethernet-phy@0 {
> +		reg = <0>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
>  	};
>  };
>  
> diff --git a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> index cb4e42ede56a..17e89d30de78 100644
> --- a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> @@ -193,6 +193,8 @@ emac: ethernet@10204000 {
>  		compatible = "snps,arc-emac";
>  		reg = <0x10204000 0x3c>;
>  		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
>  
>  		rockchip,grf = <&grf>;
>  

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
