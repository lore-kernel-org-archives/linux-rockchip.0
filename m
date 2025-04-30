Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61D08C369DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 20:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:From:MIME-Version:Date:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9hyChTOkSkEHB2Ue7iqGzy9yXIrOQ2PcsfhiHwdJHE=; b=n+hXcSsCFm6CCp
	KzU3JbQBURS4A4miG6RdYvcIs4d4YKn6w2KXO8tFYPERN3spO4SgTZRdTZE7zo0GbvzDtV4VGERvE
	VxRaPCXgkVldSrE/QoEYmpwp1ehNEcWFbKWeKAMLRbdPZGGHOiTJ3pzxkbCD4j7Z9KsQq2IOtoVWN
	oAJwDPAdAldUKSg1hbnYhdR6BdxcrZLCPVQksOyaRbK8aYZyQ5A7IIQIxC+tS8Ij3nevISJtMdSsQ
	shBi2mYKK2NjEPsxJkXHrP7/qViX6dkYSgp1NH8XgiTmvaV7YU1njIIN7eI7T0VyRUI748PjE82cT
	fZmqYxjmGvKOg4bgmQUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAEVq-0000000Dzqe-0Afn;
	Wed, 30 Apr 2025 20:58:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAETt-0000000DzYF-32eH;
	Wed, 30 Apr 2025 20:56:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 30FA144B28;
	Wed, 30 Apr 2025 20:56:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 192B2C4CEE7;
	Wed, 30 Apr 2025 20:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746046597;
	bh=CNFQzBWHud68EqtwfCS0lqVaovyNeZ1bIh+mHiCp5Wk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=GzvUg+LP7Yc5dkGuRgqSnc1qQyDhipGHfgFamgs68QhRFQ0d6OUlR4pTvQarTDpWL
	 cRTT+7d7yAx4qAdtY+Tg334E6WGqE1Qejom1WTQf+n0KES6r6WRABfqet41mMdhqEI
	 WLDh2h+KmCksDFtap6Ln7XRcxKXrfrSl5l2SIV0ca8rYnGehc4JaTS8HB+5TgHR6Zc
	 F7LGINCm9rqPy999uHDVkbT0LbIgcLGjkdHqrJRqhRu44/vcwJvclF8ZBsIy5eF4Vm
	 p0DVbhwFrBzGpfnIpnKF/Rs5MnZmldqhEgbEzaDOi3JZvCS2IkDzQwW6+tmGPcpVoG
	 CH+Pw+HUusPrg==
Date: Wed, 30 Apr 2025 15:56:35 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <20250430074848.539-1-kernel@airkyi.com>
References: <20250430074848.539-1-kernel@airkyi.com>
Message-Id: <174604649749.180857.9703877984884077664.robh@kernel.org>
Subject: Re: [PATCH v2 0/2] Add support for rk3399 industry evaluation
 board
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_135637_806932_AC451499 
X-CRM114-Status: GOOD (  17.60  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Jimmy Hon <honyuenkwun@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@gmail.com>, Quentin Schulz <quentin.schulz@cherry.de>, FUKAUMI Naoki <naoki@radxa.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Wed, 30 Apr 2025 15:48:46 +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> General feature for rk3399 industry evaluation board:
> - Rockchip RK3399
> - 4GB LPDDR4
> - emmc5.1
> - SDIO3.0 compatible TF card
> - 1x HDMI2.0a TX
> - 1x HDMI1.4b RX with TC358749XBG HDMI to MIPI CSI2 bridge chip
> - 1x type-c DisplayPort
> - 3x USB3.0 Host
> - 1x USB2.0 Host
> - 1x Ethernet / USB3.0 to Ethernet
> 
> Tested with HDMI/GPU/USB2.0/USB3.0/TF card/emmc.
> 
> Changes in v2:
> - Link to V1: https://lore.kernel.org/all/20250427094211.246-1-kernel@airkyi.com/
> - Remove gmac
> - Add rk809 PMIC
> - Add CPU supply
> - Fix io-domain for sdmmc
> - Enable vopl
> 
> Chaoyi Chen (2):
>   dt-bindings: arm: rockchip: Add rk3399 industry evaluation board
>   arm64: dts: rockchip: Add rk3399-evb-ind board
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3399-evb-ind.dts      | 466 ++++++++++++++++++
>  3 files changed, 472 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts
> 
> --
> 2.49.0
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


This patch series was applied (using b4) to base:
 Base: attempting to guess base-commit...
 Base: tags/v6.15-rc1-23-g0d0947766d87 (exact match)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250430074848.539-1-kernel@airkyi.com:

arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: /dp@fec00000: failed to match any schema with compatible: ['rockchip,rk3399-cdn-dp']
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: pmic@20 (rockchip,rk809): 'pmic-reset-func' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk817.yaml#
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: tcs4525@1c (tcs,tcs4525): Unevaluated properties are not allowed ('regulator-compatible', 'regulator-initial-state' were unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: tcs4526@10 (tcs,tcs4525): Unevaluated properties are not allowed ('regulator-compatible', 'regulator-initial-state' were unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: /syscon@ff770000/pcie-phy: failed to match any schema with compatible: ['rockchip,rk3399-pcie-phy']
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: /phy@ff7c0000: failed to match any schema with compatible: ['rockchip,rk3399-typec-phy']
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: /phy@ff800000: failed to match any schema with compatible: ['rockchip,rk3399-typec-phy']
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: pmic: vsel1-gpio: {'rockchip,pins': [[1, 17, 0, 169]], 'phandle': 117} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: pmic: vsel2-gpio: {'rockchip,pins': [[1, 14, 0, 169]], 'phandle': 118} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
