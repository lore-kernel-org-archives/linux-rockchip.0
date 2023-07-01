Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05955EB64DC
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jul 2023 11:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDcD36MofVd42AVvZ28oLWrWp1lDarv4Fi7fhSnyjPE=; b=b1a6yWr92QsQll
	uA5M3tswBs4BNF5fisy1dBVyQdIIKLE0YeLAvW7BIPNEu7MCbbWt7ppjy9L/G2ImCUtMM5JrDp8rx
	oDvhKeqt5eek5ye4OvO7SGU4qd0X9AgbXyGY3mbGWu7l7rhsLSGlVmim9bGn+2Jvmgm7y0sPM8QcI
	K55aoXvyr+MohUEJtnLsVSzU9zBb6lLw4/Cs10MuEfETyPC0FFoVNoUHdqCvRqOzsbSWo1SEZEctH
	AneJGdrBmnr9T+OgiAGSoY+8Fep1hpbFTBHSfmzuq5D5Y6uaWcAiU3jziJEtIsW7n7ezkr5cebFmk
	7x7uFSJIMP7ZfntG9pNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFYOw-005jU7-1v;
	Sat, 01 Jul 2023 11:04:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFYOs-005jSt-3C;
	Sat, 01 Jul 2023 11:04:24 +0000
Received: from i53875a33.versanet.de ([83.135.90.51] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qFYOo-0000lG-Ek; Sat, 01 Jul 2023 13:04:18 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, ocfox <i@ocfox.me>
Cc: ocfox <i@ocfox.me>
Subject: Re: [PATCH] arm64: dts: rockchip: add support for Rongpin king3399 board
Date: Sat, 01 Jul 2023 13:04:16 +0200
Message-ID: <4811978.GXAFRqVoOG@diego>
In-Reply-To: <20230630173010.272469-1-i@ocfox.me>
References: <20230630173010.272469-1-i@ocfox.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230701_040423_029731_3D711499 
X-CRM114-Status: GOOD (  16.48  )
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

Hi,

all of what Krzysztof said in his mail + the stuff below please:

Am Freitag, 30. Juni 2023, 19:27:52 CEST schrieb ocfox:
> king3399 is a bord from Rongpin, you can find detail about
> it here:
> (http://www.rpdzkj.com/copy_2_1703937_175104_2536441.html)
> 
> This patch add basic node for the board and make it able to bring
> up.
> 
> Works:
> - USB, type-C port
> - Ethernet
> - WiFi/BT
> - HDMI
> - eMMC
> - PCIe
> - sd-card
> 
> Not test for other peripheral:
> - AUDIO
> - MIC
> - SIM
> - MIPI
> 
> Signed-off-by: ocfox <i@ocfox.me>

I think we request a full name here and as patch author.

[...]

> +	vcc3v3_sys: vcc3v3-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	// 4G Module

please use a consistent comment style ... in the "/* foobar */" style

> +	vcc3v3_gsm: vcc3v3-gsm {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>; // bsp
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc3v3_gsm_en>;
> +		regulator-name = "vcc3v3_gsm";
> +		// regulator-always-on;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +	// vdd 5v: USB 2&3, USB Hub, Type-C, HDMI, MIPI, IR

so this regulator controls all of those?

In that case maybe do it similarly to vcc1v8-s3 and use multiple labels
for the node - i.e. the line name leading to the consumer from the
schematics.

That way comparing schematics against the dts gets easier.

See
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts#n40
for an example


> +	vcc5v0_host: vcc5v0-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		regulator-boot-on;
> +		gpio = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>; // bsp
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_host_en>;
> +		regulator-name = "vcc5v0_host";
> +		// regulator-always-on;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc5v0_typec0: vbus-typec-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>; // bsp
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_typec_en>;
> +		regulator-name = "vcc5v0_typec0";
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc_sys: vcc5v0_sys: vcc5v0-sys { // bsp
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +

double empty line

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
