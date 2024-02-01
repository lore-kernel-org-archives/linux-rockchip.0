Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78900C47DDB
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 08:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EGUa5rQUiM0MhG4nKV5uAbtC6fqYOUXWYIrHXsdw70=; b=nwEbofqZHlGdng
	6+oySavI+vkiKZll5+eo9gqGPi0BSqqcudLQpbDwQjjvVDnpf7WYzQGBzg/e+yiVMWA5ww65yiHVN
	6ENHJ4pp9XlWCuvEniH0uzkA1f2Vu2FytSGMUSzc+uqyBLlcAQxrzJApvy0ZxLRc9/lx0zKNIEDvm
	36mNdnZRezIlU7reNe0/fDd90+ybB7tjZONPfHbhIwqIiKp6QY6FZHwBg7TvjAH4SgQpeagYFmV6t
	7Qf023rn8juHWIsVewA3+Bpii1r1xBoLW2cGQNsCJ7tBST1Exm5ZGcL+n5TWDNotYU/Hfzaq+S+4A
	Mm2X2O9dccKxUUHGeaZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVSe3-000000077bK-2iUM;
	Thu, 01 Feb 2024 08:42:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVSe0-000000077ZM-1qib;
	Thu, 01 Feb 2024 08:42:01 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rVSdZ-0004xF-5k; Thu, 01 Feb 2024 09:41:33 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>, Ondrej Jirman <megi@xff.cz>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>,
 Jagan Teki <jagan@edgeble.ai>, John Clark <inindev@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lucas Tanure <lucas.tanure@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 =?utf-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@protonmail.ch>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, quentin.schulz@theobroma-systems.com
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588: remove redundant cd-gpios in sdmmc
 node
Date: Thu, 01 Feb 2024 09:41:31 +0100
Message-ID: <4514845.zXnORWrf4K@diego>
In-Reply-To: <20240201034621.1970279-1-kever.yang@rock-chips.com>
References: <20240201034621.1970279-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_004200_520460_0758CCDF 
X-CRM114-Status: GOOD (  21.90  )
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

Hi Kever,

Am Donnerstag, 1. Februar 2024, 04:46:21 CET schrieb Kever Yang:
> The sdmmc node already have a "&sdmmc_det" for pinctrl which switch the
> GPIO0A4 to sdmmc detect function, no need to define a separate "cd-gpios".

just to make sure, did you test this on actual hardware?
Because there might be differences in behaviour.

> RK3588 has force_jtage feature which is enable JTAG function via sdmmc
> pins automatically when there is no SD card insert, this feature will
> need the GPIO0A4 works in sdmmc_det function like other mmc signal instead
> of GPIO function, or else the force_jtag can not auto be disabled when
> SD card insert.

We disable the jtag switching by default [0] ;-) .
And there are very good reasons for it too:


(1) JTAG is very much a debug feature, that the normal user will not need.
Especially not in a finished product. If a developer is debugging _that_
deep and needs jtag, they can enable it in their debug build.


(2) Randomly enabling features that may compromise security.
Why go through all the hoops of doing things like secure boot, signed
images and everything, just to have the kernel then export direct access
to the hardware on sd-card pins. If one wants to expose JTAG somewhere
this should be conscious choice and devs should not need to fork their
kernel just to shut down unwanted security-critical functionality.


(3) It affects board layouts _not following_ the standard layout.
Nobody is forcing board-designers to use Rockchip's desired pin
for card-detection. Some designer may just select a different pin
or a board could go without card-detect at all - see rk3588-jaguar.
These are both valid use-cases that need to be supported.


Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6f6878ec6faf16a5f36761c93da6ea9cf09adb33


> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 1 -
>  arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts     | 1 -
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 1 -
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts        | 1 -
>  4 files changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> index 3e660ff6cd5ff..1b606ea5b6cf2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> @@ -444,7 +444,6 @@ &sdhci {
>  &sdmmc {
>  	bus-width = <4>;
>  	cap-sd-highspeed;
> -	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	max-frequency = <150000000>;
>  	no-sdio;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> index 87a0abf95f7d4..67414d72e2b6e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> @@ -429,7 +429,6 @@ &sdhci {
>  &sdmmc {
>  	bus-width = <4>;
>  	cap-sd-highspeed;
> -	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	max-frequency = <150000000>;
>  	no-sdio;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index a0e303c3a1dc6..25a82008e4f76 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -371,7 +371,6 @@ &sdmmc {
>  	bus-width = <4>;
>  	cap-mmc-highspeed;
>  	cap-sd-highspeed;
> -	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	sd-uhs-sdr104;
>  	vmmc-supply = <&vcc_3v3_s3>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 2002fd0221fa3..00afb90d4eb10 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -366,7 +366,6 @@ &sdmmc {
>  	bus-width = <4>;
>  	cap-mmc-highspeed;
>  	cap-sd-highspeed;
> -	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>  	disable-wp;
>  	max-frequency = <150000000>;
>  	no-sdio;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
