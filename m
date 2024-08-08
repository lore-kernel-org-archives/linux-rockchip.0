Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74AFEC52D7B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FQBUgOpjIZ+7a4wCffWjSKtKsRF0rkTmBjvYISUC73w=; b=SeTJ2zl9POye9E7pmT+fVIVg8z
	rwZQ7NCxbz2kde2KhzuDn2Ew6B1DEYkwpAdymxlBIHZwhQzZQiK/kXc4RaariiO/gN30kYrDEHQ8s
	JRhGeLbU/GfyVHAiuLg6nz8dJqUp5m5jVMBpuPuiZv8N4i3Ll8qpnsuxH/b5byPq3S9r/rt9Hp3Ql
	27eU8zuWscEI7RNUVJNkmtvyOeQsiyC6dSiqVA8Oy5mktZaPmPJ9ke71tAVBRALLTvdI1RjMl/CU0
	nYihqSIInWth7ZFij0S2bGo1ehKurOkZQAM91X5kIx93QQ2bXa9OylfrNP7vvqA7QbfeAsePexGWg
	jBBck8Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Hx-00000008zZG-3mxp;
	Thu, 08 Aug 2024 16:46:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6HW-00000008zVb-1I8k
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 16:46:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 717A66126F;
	Thu,  8 Aug 2024 16:46:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D410DC32782;
	Thu,  8 Aug 2024 16:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723135589;
	bh=oy7hlxSDijj4NG3F0KPDLjqbLMk/6y0GCGDmUepKDys=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=hsnb0K5ZrDaH3FaNaRPSirSYoDrLt2VyOTxN2FvbAHG4axbMfyIc5UiwjdWY7i/eC
	 Llqh5e+StHCHJKf68uI7BforQNi5NrgImpclFpHmwlmbbNImNi2qHUczWhu2tiHiCx
	 xJl6rVdu5Sm+OIjLg3gLC+K+wtARJCy7B8DgFK9fsUz/GAdy6Tyk+mrfhY2dhKDhbB
	 bZ7YJoz9+jz5J6uYqzGm3iB3xyO6Aex3x+dhybcDGxBJQ6V/QdFbwGRjUdSgcSlmTv
	 t7tY40z9EphBHeA4pMPGI38kFiaosbv6A3+87Ewuo9GSxUd4Ty/vf1FUvLKrgMQoQi
	 Z4GGUFOs94LXQ==
Date: Thu, 08 Aug 2024 10:46:27 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
 heiko@sntech.de, linux-rockchip@lists.infradead.org
In-Reply-To: <20240808093808.1740-1-naoki@radxa.com>
References: <20240808093808.1740-1-naoki@radxa.com>
Message-Id: <172313547253.1400606.11960006697547610193.robh@kernel.org>
Subject: Re: [PATCH 00/10] arm64: dts: rockchip: standardize the definition
 of LEDs for Radxa boards
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_094630_499816_784B5211 
X-CRM114-Status: GOOD (  12.87  )
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


On Thu, 08 Aug 2024 18:37:58 +0900, FUKAUMI Naoki wrote:
> the standard definition of LEDs for Radxa boards are:
> 
>   color = <LED_COLOR_ID_xxx>; [1]
>   default-state = "on"; [2]
>   function = LED_FUNCTION_xxx [1] [3]
>   gpios = <&gpioX RK_Pxx GPIO_ACTIVE_xxx>;
>   linux,default-trigger = "xxx"; [3]
>   pinctrl-names = "default"; [4]
>   pinctrl-0 = <&xxx>; [4]
> 
> [1] use "color:function" instead of `label = "xxx:yyy:zzz"`
> [2] all LEDs should be turned on at U-Boot
> [3] if trigger is "heartbeat", FUNCTION should be HEARTBEAT
> [4] if it's SOM and carrier board, put pinctrl properties here
>     if it's SBC, put them under `compatible = "gpio-leds"`
> 
> FUKAUMI Naoki (10):
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK Pi S
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK Pi E
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK 4C+
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK Pi 4
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa CM3
>     IO
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK 3C
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa E25
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK 3A
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK 5B
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK 5A
> 
>  arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 4 +---
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi   | 4 +++-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 6 ++++--
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 5 +++--
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 6 +++---
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 9 +++++----
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 5 +++--
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts    | 7 ++++---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 9 +++++----
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts      | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
>  12 files changed, 37 insertions(+), 27 deletions(-)
> 
> --
> 2.43.0
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3308-rock-pi-s.dtb rockchip/rk3399-rock-4c-plus.dtb rockchip/rk3566-radxa-cm3-io.dtb rockchip/rk3566-rock-3c.dtb rockchip/rk3568-radxa-e25.dtb rockchip/rk3568-rock-3a.dtb rockchip/rk3588-rock-5b.dtb rockchip/rk3588s-rock-5a.dtb' for 20240808093808.1740-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts:24.5-30: Warning (pwms_property): /pwm-leds/multi-led/led-red:pwms: property size (12) too small for cell size 3
arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts:29.5-30: Warning (pwms_property): /pwm-leds/multi-led/led-green:pwms: property size (12) too small for cell size 3
arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts:34.5-31: Warning (pwms_property): /pwm-leds/multi-led/led-blue:pwms: property size (12) too small for cell size 3






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
