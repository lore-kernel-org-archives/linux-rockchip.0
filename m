Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3059FECE564
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 08:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZsbF3G/WP9KYWepZ2MCg3EjwWds4fqYx8rFGYDrP1M=; b=j0gF1ug2LX876a
	mhbhy68zpEWYA9ucWHMjVa8wHJ4EmDiyLuSqoabuy8ofbubwuddQKEb+sWT6iiaqQOhmICwraatwz
	+RGg/d0dyshKTiyEwG7qd3vUiKlj8qSrGSCo0TXS8yHzDHpSAbA2lGYVnXny8RdQMLO0Mzb1df+DH
	mEenKvgaKCdWVqpBk/8iQSJxJf+EORTM9uLfHbagS4RY76y7NY35DrEyKTI3DYMZPnuBBQITKNvM7
	QfftY/evgLGL7yahKYq3IhbQ6+G68mX7wWbPcL1xHM1aEfiLl691X6aItoBUMfiehioQsHeOI5qpq
	uoYoDAxzG+yWFfMg/LfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwAU-00000004o1t-1spn;
	Tue, 10 Sep 2024 08:24:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snw8o-00000004nmz-0IEX;
	Tue, 10 Sep 2024 08:22:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mLX/DIBoOrfBorbkFkl8rvdIrIaBgzNT/RjG578VqDk=; b=Z0+ZSNu+CH1kpCtu+Ofb0YDimB
	hiNZN+0yRUXHgourSZWIgvLn5gaa5kepVpkm3pSRA1fpmFgfQeXI18AcVaGO3jLAfYF5IwCmnVv00
	R/mM8Di9BDh62z3NsPkgB8I9rTKh4MqCZIM/g6ODKkPOXEO7NKRTPfpB/+l1mh/xYUUq/rJwqdedK
	jn712slwdtBP7WiYJVRTnNrjOnPaElxswEZdyfEhDiiOnY/2p/IeC4ysCgn4dsW7p40dhP83xziua
	IahisU2HQd/3FRn/mJ8BKycXTPRyDwLeQc24PIj6Biyix5IRdgbc0Tv2OPwlbhJqP535OMW7smks+
	Sex0uiWw==;
Received: from i53875a02.versanet.de ([83.135.90.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1snw8R-000245-IZ; Tue, 10 Sep 2024 10:22:03 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 macromorgan@hotmail.com, jonas@kwiboo.se, tim@feathertop.org,
 knaerzche@gmail.com, efectn@protonmail.com, andyshrk@163.com,
 jagan@edgeble.ai, dsimic@manjaro.org, megi@xff.cz,
 sebastian.reichel@collabora.com, alchark@gmail.com,
 boris.brezillon@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 2/2] arm64: dts: rockchip: Add support for rk3588s evb1 board
Date: Tue, 10 Sep 2024 10:24:25 +0200
Message-ID: <1778254.M3retTD8dW@diego>
In-Reply-To: <20240910030951.3670653-3-damon.ding@rock-chips.com>
References: <20240910030951.3670653-1-damon.ding@rock-chips.com>
 <20240910030951.3670653-3-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_012226_168406_1C7CFAAF 
X-CRM114-Status: GOOD (  12.25  )
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

Am Dienstag, 10. September 2024, 05:09:51 CEST schrieb Damon Ding:
> Specification:
> - Rockchip RK3588S
> - RK806-2x2pcs + DiscretePower
> - eMMC5.1 + SPI Flash
> - Micro SD Card3.0
> - 1 x Typec3.0 + 2 x USB2 HOST
> - 1 x 1Lane PCIE2.0 Connector(RC Mode)
> - Headphone output
> - Array Key(MENU/VOL+/VOP-/ESC), Reset, Power on/off Key
> - 6 x SARADC
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---

[...]

> +	analog-sound {
> +		compatible = "simple-audio-card";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hp_detect>;
> +		simple-audio-card,name = "RK3588 EVB1 Audio";
> +		simple-audio-card,aux-devs = <&amp_headphone>, <&amp_speaker>;
> +		simple-audio-card,bitclock-master = <&masterdai>;
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,frame-master = <&masterdai>;
> +		simple-audio-card,hp-det-gpio = <&gpio1 RK_PD5 GPIO_ACTIVE_LOW>;
> +		simple-audio-card,mclk-fs = <256>;
> +		simple-audio-card,pin-switches = "Headphones", "Speaker";
> +		simple-audio-card,routing =
> +			"Speaker Amplifier INL", "LOUT2",
> +			"Speaker Amplifier INR", "ROUT2",
> +			"Speaker", "Speaker Amplifier OUTL",
> +			"Speaker", "Speaker Amplifier OUTR",
> +			"Headphones Amplifier INL", "LOUT1",
> +			"Headphones Amplifier INR", "ROUT1",
> +			"Headphones", "Headphones Amplifier OUTL",
> +			"Headphones", "Headphones Amplifier OUTR",
> +			"LINPUT1", "Onboard Microphone",
> +			"RINPUT1", "Onboard Microphone",
> +			"LINPUT2", "Microphone Jack",
> +			"RINPUT2", "Microphone Jack";
> +		simple-audio-card,widgets =
> +			"Microphone", "Microphone Jack",
> +			"Microphone", "Onboard Microphone",
> +			"Headphone", "Headphones",
> +			"Speaker", "Speaker";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s0_8ch>;
> +		};
> +
> +		masterdai: simple-audio-card,codec {
> +			sound-dai = <&es8388>;
> +			system-clock-frequency = <12288000>;
> +		};
> +	};
> +
> +	amp_headphone: headphone-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		enable-gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&headphone_amplifier_en>;
> +		sound-name-prefix = "Headphones Amplifier";
> +	};
> +
> +	amp_speaker: speaker-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		enable-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&speaker_amplifier_en>;
> +		sound-name-prefix = "Speaker Amplifier";
> +	};
> +
> +	backlight: backlight {

please sort nodes by node name ... so "backlight" after "analog-sound"

> +		compatible = "pwm-backlight";
> +		power-supply = <&vcc3v3_lcd_edp>;
> +		pwms = <&pwm12 0 25000 0>;
> +	};
> +
> +	combophy_avdd0v85: combophy-avdd0v85-regulator {

generally the naming convention for regulator nodes now is
regulator-* ... so regulator-combophy-avdd0v85 here
and similar for others below.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
