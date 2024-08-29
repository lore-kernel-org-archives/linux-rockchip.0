Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69C99C87FD2
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 18:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DWZCrL7ltUdl0Pz4xyFvzLqFOHzQjcYCGeAEBpYPrxw=; b=apJ6sIZcVsMIfpWNBJmqZsZyGZ
	kk+1Rdmg3Qx7fAhKsFioQnauPxjuNRFO8/LbmTBKuODjT4CkoVbfSY+U3TViidflQBhVCtYFM2zig
	KGrjEXLW8m2deUdbzSEjeS4FHijQj2uGI1NrHhAG0j02/Tg0N0gA6RLrcvd5ncnLKHnGd8RY9ULwh
	5tJiOe60fG12uT9p/iJOvGv1FPFBaMQpro94agcj5UPVzcJ7xJ/q7NRfYXq0vTHRMffC6nf4jJ2jn
	QpNzfD1CBwKPwCBaR3lZz0W+EpEKN+0D8Enq37R3tKdHyvt1BnsqJ4n6Buxl2vFhgn9+lZ85x7jda
	ksbl3MAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjk5q-00000003EKq-3OPN;
	Thu, 29 Aug 2024 18:42:02 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjk50-00000003EAj-0VHW
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 18:41:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 33272CE1C4E;
	Thu, 29 Aug 2024 18:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A1B3C4CEC1;
	Thu, 29 Aug 2024 18:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724956867;
	bh=Y5ftCvwbu1YfN/WFW/s8mq+4lwkhQohqLKOcSJSl3L0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=e2uAjRYxvt6O3B4ae/frxJhUOnA+wHRGxE3UfLG2tSoAwYKNIOsof9+jegnlSveoL
	 p+Rak0Lbd666NKoROdfqQ9WCjIvpPGd6/rWWsYgvDB2qaQ/WkSyO6okH/Pg3crt3+J
	 YdJuzSXoY7Wqi/yUcEZz3bI24dzCNuX69kDtUX5R1ciZXJqchX6OP6r4unBSHh70z7
	 D2M8k0d49Pd6qg+VxjqkSccw3fIiYrwgZU0YDth+gxNieKFi3qoJwIVj5Yi5oBsGJC
	 HA5ECVQXFMXCpqZs4scvWhObpraplFEu/ymJNJEnY+v1kCX9oy6/ha9rmMOkP/nsTf
	 54uT4rZAjzzGg==
Date: Thu, 29 Aug 2024 13:41:05 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Diederik de Haas <didi.debian@cknow.org>
In-Reply-To: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
References: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
Message-Id: <172495659080.899972.1462110472298011019.robh@kernel.org>
Subject: Re: [PATCH v6 0/9] FriendlyELEC NanoPC-T6 improvements
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_114110_536816_CD3691F9 
X-CRM114-Status: GOOD (  21.62  )
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


On Thu, 29 Aug 2024 14:26:51 +0200, Marcin Juszkiewicz wrote:
> This series updates FriendlyELEC NanoPC-T6 situation. There is non-LTS
> (2301) version of a board and LTS (2310) version.
> 
> This series creates common DTSI for both boards and then separate
> NanoPC-T6 and NanoPC-T6 LTS DTS files. This way T6 gets MiniPCIe section
> and T6-LTS gets USB20 section.
> 
> Then set of changes for both versions are done:
> 
> - enable USB-C port (one orientation only)
> - enable Mali GPU
> - enable IR receiver (tested using ir-keytable)
> - enable SPI flash (present on LTS, optional on non-LTS)
> - enable Mask Rom button as input device
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> 
> ---
> Changes in v6:
> - split 2nd patch into parts:
>   - create common DTSI
>   - move non-LTS (2301) parts to rk3588-nanopc-t6.dts
>   - add LTS (2310) in rk3588-nanopc-t6-lts.dts
> - Link to v5: https://lore.kernel.org/r/20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org
> 
> Changes in v5:
> - added Reviewed-by to 'add spi flash' patch
> - dropped adding SPI M1 pinctl
> - changed ir-receiver to have pinctrl like Jonas Karlman suggested
> - Link to v4: https://lore.kernel.org/r/20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org
> 
> Changes in v4:
> - added Acked-by to dt-bindings patch
> - create common dtsi for both board versions
> - nanopc-t6.dts has minipcie items
> - nanopc-t6-lts.dts has usb 2.0 host enablement
> - Link to v3: https://lore.kernel.org/r/20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org
> 
> Changes in v3:
> - create separate NanoPC-T6 LTS devicetree as suggested
> - Link to v2: https://lore.kernel.org/r/20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org
> 
> Changes in v2:
> - merged changes into NanoPC-T6 dts file
> - add SPI flash pinctl for SPI M1
> - enable SPI on NanoPC-T6 LTS
> - enable USB-C port (one orientation only)
> - enable Mali GPI
> - enable IR receiver (not tested)
> - Link to v1: https://lore.kernel.org/r/20240820-friendlyelec-nanopc-t6-lts-v1-1-da1273c3e08e@juszkiewicz.com.pl
> 
> ---
> Marcin Juszkiewicz (9):
>       dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
>       arm64: dts: rockchip: prepare NanoPC-T6 for LTS board
>       arm64: dts: rockchip: move NanoPC-T6 parts to DTS
>       arm64: dts: rockchip: add NanoPC-T6 LTS
>       arm64: dts: rockchip: add SPI flash on NanoPC-T6
>       arm64: dts: rockchip: add IR-receiver to NanoPC-T6
>       arm64: dts: rockchip: enable GPU on NanoPC-T6
>       arm64: dts: rockchip: enable USB-C on NanoPC-T6
>       arm64: dts: rockchip: add Mask Rom key on NanoPC-T6
> 
>  .../devicetree/bindings/arm/rockchip.yaml          |   6 +-
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 908 +--------------------
>  ...{rk3588-nanopc-t6.dts => rk3588-nanopc-t6.dtsi} | 143 +++-
>  5 files changed, 189 insertions(+), 930 deletions(-)
> ---
> base-commit: d5d547aa7b51467b15d9caa86b116f8c2507c72a
> change-id: 20240820-friendlyelec-nanopc-t6-lts-00c7678c3bd7
> 
> Best regards,
> --
> Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-nanopc-t6-lts.dtb rockchip/rk3588-nanopc-t6.dtb' for 20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org:

arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: video-codec@fdb50000: compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu'] is too long
	'rockchip,rk3588-vpu121' is not one of ['rockchip,rk3036-vpu', 'rockchip,rk3066-vpu', 'rockchip,rk3288-vpu', 'rockchip,rk3328-vpu', 'rockchip,rk3399-vpu', 'rockchip,px30-vpu', 'rockchip,rk3568-vpu', 'rockchip,rk3588-av1-vpu']
	'rockchip,rk3188-vpu' was expected
	'rockchip,rk3228-vpu' was expected
	'rockchip,rk3066-vpu' was expected
	'rockchip,rk3399-vpu' was expected
	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /video-codec@fdb50000: failed to match any schema with compatible: ['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /video-codec@fdba0000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /video-codec@fdba4000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /video-codec@fdba8000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /video-codec@fdbac000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: regulator@42: Unevaluated properties are not allowed ('rockchip,suspend-voltage-selector' was unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: pmic@0: Unevaluated properties are not allowed ('regulators' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: codec@1b: Unevaluated properties are not allowed ('assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks', 'port' were unexpected)
	from schema $id: http://devicetree.org/schemas/sound/realtek,rt5616.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: sound: 'simple-audio-card,hp-pin-name' does not match any of the regexes: '^simple-audio-card,codec(@[0-9a-f]+)?$', '^simple-audio-card,cpu(@[0-9a-f]+)?$', '^simple-audio-card,dai-link(@[0-9a-f]+)?$', '^simple-audio-card,plat(@[0-9a-f]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/sound/simple-card.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: vcc3v3-sd-s0-regulator: Unevaluated properties are not allowed ('enable-active-low' was unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fixed-regulator.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
