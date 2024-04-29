Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD062C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Apr 2024 14:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dRJ+qh8bEL5jaQq00SWaAP2uyEfGz3cuZnjmp313Cyk=; b=StDe4a2uTagQSyIEgIegOJ3m7I
	WE/BqLAZKhomkcc77d+qhbe5OKEcftsbpjRw4/y19CKU9sPy5cker4PHHhnH+ssl+na0vvgokhgtC
	2bUdN3gm1G1YsGwsMmmHxEkHVQx3aTdRaezELq5Gk+svpgID5MgDbS1s6TsEXKsWlhxGjPoqP0sKa
	C952eXP3N5lDskWRwUsPLFA55kWO46bVKihReRdE2Okkh+nWtbGm/inmTuQC7RL+HujdkgjkTykYt
	xxES2jttO+2jfLUSffY8B5yDPJv0qGweJueerY4r5HuHpj5ibUB8XOmTbtR2wZoaauyw1sTlqUF5H
	90yihXiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1SCF-000000039jY-1hG5;
	Mon, 29 Apr 2024 14:41:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1SCB-000000039iQ-1cCq;
	Mon, 29 Apr 2024 14:41:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8F73260DDD;
	Mon, 29 Apr 2024 14:41:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28CCCC113CD;
	Mon, 29 Apr 2024 14:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714401690;
	bh=BfGzqjUkUfh2bKjqEy9+ovnsRwzMYpaL/0SsvVv1eD0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=XU6p+tGhv5RfHy84tJ1zvaJPBiOwMr01YePNRSF5lEf54aBacb+FYPUm19/u54tug
	 hNl/QAQflnCtzjGEwVVNArWfqKzdI2qpqokL2wI8Dzx/oCcaKU/IKn49mz5k2+518G
	 HMfdvfA/l27awPv6pTNbQkbujj6qUQYzl+sDhVn/79a6ncw+RxSEyZqI2kwogV/ndJ
	 UqSgFgdj3SFDsQfF+xRFessMq3mLUy7LhyiskNM+kjOO6KQNemBHvdIOrYkrd2kvYO
	 v7g1jh/GsGPbSUG/Mq1iGLoa/DAi7bK1nHFIfviXIKCIhXE9E6sJoa7+88Wcz/qIbY
	 RcNyhtjr9CyrA==
Date: Mon, 29 Apr 2024 09:41:27 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Andi Shyti <andi.shyti@kernel.org>, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Peter Rosin <peda@axentia.se>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com>
References: <20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com>
Message-Id: <171440140976.1676403.7480189987204011691.robh@kernel.org>
Subject: Re: [PATCH 0/7] Add Mule I2C multiplexer support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_074131_562916_65FBFB3D 
X-CRM114-Status: GOOD (  23.11  )
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


On Fri, 26 Apr 2024 18:49:31 +0200, Farouk Bouabid wrote:
> Mule is an mcu that emulates a set of i2c devices which are reacheable
> through an i2c-mux.
> 
> The emulated devices share a single i2c address with the mux itself where
> the requested register is what determines which logic is executed (mux or
> device):
> 
> 1- The devices on the mux can be selected (mux function) by writing the
> appropriate device number to an i2c config register (0xff) that is not
> used by any device logic.
> 
> 2- Any access to a register other than the config register will be
> handled by the previously selected device.
> 
>       +-------------------------------------------------------+
>       |  Mule                                                 |
>       |        +---------------+                              |
>     ----+-(1)->|Config register|-----+                        |
>       | |      +---------------+     |                        |
>       | |                            V_                       |
>       | |                            |  \          +--------+ |
>       | |                            |   \-------->| dev #0 | |
>       | |                            |   |         +--------+ |
>       | |                            | M |-------->| dev #1 | |
>       | +-----------(2)------------->| U |         +--------+ |
>       |                              | X |-------->| dev #2 | |
>       |                              |   |         +--------+ |
>       |                              |   /-------->| dev #3 | |
>       |                              |__/          +--------+ |
>       +-------------------------------------------------------+
> 
> The current i2c-mux implementation does not allow the mux to share the i2c
> address of a child device. As a workaround, when creating each i2c child
> adapter we do not assign the parent adapter to avoid the address-match with
> the mux.
> 
> This patch-series adds support for this multiplexer. Mule is integrated
> as part of rk3399-puma, px30-ringneck, rk3588-tiger and rk3588-jaguar
> boards.
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
> ---
> Farouk Bouabid (7):
>       i2c: mux: add the ability to share mux-address with child nodes
>       dt-bindings: i2c: mux: mule: add dt-bindings for mule i2c multiplexer
>       i2c: muxes: add support for mule i2c multiplexer
>       arm64: dts: rockchip: add mule i2c mux (0x18) on rk3399-puma
>       arm64: dts: rockchip: add mule i2c mux (0x18) on rk3588-tiger
>       arm64: dts: rockchip: add mule i2c mux (0x18) on px30-ringneck
>       arm64: dts: rockchip: add mule i2c mux (0x18) on rk3588-jaguar
> 
>  .../devicetree/bindings/i2c/i2c-mux-mule.yaml      |  80 +++++++++++
>  arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi    |  20 ++-
>  arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |  20 ++-
>  arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts     |  19 ++-
>  arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi     |  19 ++-
>  drivers/i2c/i2c-mux.c                              |  10 +-
>  drivers/i2c/muxes/Kconfig                          |  11 ++
>  drivers/i2c/muxes/Makefile                         |   1 +
>  drivers/i2c/muxes/i2c-mux-mule.c                   | 157 +++++++++++++++++++++
>  include/linux/i2c-mux.h                            |   1 +
>  10 files changed, 327 insertions(+), 11 deletions(-)
> ---
> base-commit: c85af715cac0a951eea97393378e84bb49384734
> change-id: 20240404-dev-mule-i2c-mux-9103cde07021
> 
> Best regards,
> --
> Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-jaguar.dtb' for 20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com:

arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: fan@18: '#cooling-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
