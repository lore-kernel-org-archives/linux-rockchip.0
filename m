Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C2E1C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 15:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IkyRR7FBDeJb8vRNikdkkR49CFQlym6CIhfuV54NXws=; b=IXvloSigKaufRMhcIes1+3CeZg
	kJNYclAuAtz0A6E7dbzDvJu2gZSxQWaP/+tmo9Yq8236l8mJnaM7BymVFHY4/O6xX9eXqNmYkuoz5
	jvZjipIBbp9+Ji9AcBi2hKcFaGRoFyFo3aUTU8QcuprX6wur0AXz7YcIN005olYfFY6Q1xnwxaEEU
	+U0nAohwdeJKCaw4F2aILzgV0UUJKGgAVuXyA/Cf59H9KJMkfudT9rPty3VwaeY9e1MUE6Uz4fBOK
	l2B2a0k6BhtaVNdm3py2EU0J6DGVpaG0+8Pbn8YYxQpCnMmYNhwgTdxmJ3bP03rRHpMsN1G1TsNau
	xNZB8f4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sazDd-0000000GEoF-0OGq;
	Mon, 05 Aug 2024 15:01:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sazCD-0000000GEUv-49wm;
	Mon, 05 Aug 2024 15:00:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Content-Transfer-Encoding:Content-Type:
	Date:Sender:Reply-To:Content-ID:Content-Description;
	bh=juI2bGvJIEL3z2uks5UPmibeipaSbTtHT/eMHTmu64E=; b=NWh5nSiZIGREgmGzx90I35u6qW
	9IEWhANv1x25VVKXFQEAaASjaXuwIaDudjJaOfcPdFlXGcGJsdBSBQY807Ck3REiq31Fg/9it0wGp
	UZH+hqijAwiIlZ4zljUmbUiXlsq3vgwEwxZkqsjJmtvraDgKMndGltpyZmgFM7algYNFdQ0K6riwi
	41KpwvFhPaS9rVW/240oYQnnOAAVyMRY6ms6wka3rB5oaKCeWa1KOEWXcYoAnaARedUPLWWnJACji
	6FuwLLpZlBwuUhdXPy0NosmwUtSlsg6HyEsqGwaeyYRi2oTIiPh5l0s3F+XU2PgiLVhg6fwxu1saZ
	vUvluoOA==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sazC9-00000006HJ1-2nnP;
	Mon, 05 Aug 2024 15:00:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C18C0CE0B37;
	Mon,  5 Aug 2024 15:00:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 510FBC4AF1B;
	Mon,  5 Aug 2024 15:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722870015;
	bh=jIaq6vsuhkY+v59gy2RIN65uUrzZIQmOWCABGta2eFA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=aUNOAhePbdYRdnQ4NLgBWizO6a2ufDlEftJTpPcnoXscyuQVgQ1SgiTStmZk64xfF
	 knuG0ypn8Yq6ZrBAA+typSGh76Mx6BryZLQrhkVTqlCwOjXqLGVc+mFSytCRKx1Stb
	 Y2edYu22uNU3rbJ3dschCb+Qcu3VWLp6spk/S53ER/y9mEk8q6Cc8E+5r53kvMZss3
	 Kb7+uZSuGJzsZhK3icLmDg6gkWMZJVUScy4nyYXmpL8toq86aVoSRc4jNBfoAQLwwh
	 9kuup35jodzPQrbI2h3JvLChLYj14yirHAyjyNtvx4n8BgRo2DjUtfjMn8K/vUtvhF
	 LoqdP6PrIuj9Q==
Date: Mon, 05 Aug 2024 09:00:14 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>, 
 Chris Morgan <macromorgan@hotmail.com>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Jagan Teki <jagan@edgeble.ai>, linux-iio@vger.kernel.org, 
 Liang Chen <cl@rock-chips.com>, Thomas Gleixner <tglx@linutronix.de>, 
 linux-serial@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Jimmy Hon <honyuenkwun@gmail.com>, devicetree@vger.kernel.org, 
 Muhammed Efe Cetin <efectn@protonmail.com>, 
 Shresth Prasad <shresthprasad7@gmail.com>, 
 Weizhao Ouyang <weizhao.ouyang@arm.com>, Alexey Charkov <alchark@gmail.com>, 
 Tim Lunn <tim@feathertop.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-rockchip@lists.infradead.org, kernel@collabora.com, 
 Lars-Peter Clausen <lars@metafoo.de>, linux-kernel@vger.kernel.org, 
 Jonas Karlman <jonas@kwiboo.se>, Dragan Simic <dsimic@manjaro.org>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
 Jonathan Cameron <jic23@kernel.org>, Andy Yan <andyshrk@163.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <20240802214612.434179-1-detlev.casanova@collabora.com>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
Message-Id: <172286966767.2709106.17051987571770592906.robh@kernel.org>
Subject: Re: [PATCH 00/10] Add device tree for ArmSoM Sige 5 board
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_160022_505770_548F685A 
X-CRM114-Status: GOOD (  17.31  )
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


On Fri, 02 Aug 2024 17:45:27 -0400, Detlev Casanova wrote:
> Add the rk3576-armsom-sige5 device tree as well as its rk3576.dtsi base
> and pinctrl information in rk3576-pinctrl.dtsi.
> 
> The other commits add DT bindings documentation for the devices that
> already work with the current corresponding drivers.
> 
> The other bindings and driver implementations are in other patch sets:
> - PMIC: https://lore.kernel.org/lkml/20240802134736.283851-1-detlev.casanova@collabora.com/
> - CRU: https://lore.kernel.org/lkml/20240802214053.433493-1-detlev.casanova@collabora.com/
> - PINCTRL: https://lore.kernel.org/lkml/20240802145458.291890-1-detlev.casanova@collabora.com/
> - PM DOMAIN: https://lore.kernel.org/lkml/20240802151647.294307-1-detlev.casanova@collabora.com/
> - DW-MMC: https://lore.kernel.org/lkml/20240802153609.296197-1-detlev.casanova@collabora.com/
> - GMAC: https://lore.kernel.org/lkml/20240802173918.301668-1-detlev.casanova@collabora.com/
> 
> Detlev Casanova (10):
>   dt-bindings: arm: rockchip: Add ArmSoM Sige 5
>   dt-bindings: arm: rockchip: Add rk576 compatible string to pmu.yaml
>   dt-bindings: i2c: i2c-rk3x: Add rk3576 compatible
>   dt-bindings: iio: adc: Add rockchip,rk3576-saradc string
>   dt-bindings: mfd: syscon: Add rk3576 QoS register compatible
>   dt-bindings: serial: snps-dw-apb-uart: Add Rockchip RK3576
>   dt-bindings: soc: rockchip: Add rk3576 syscon compatibles
>   dt-bindings: timer: rockchip: Add rk3576 compatible
>   arm64: dts: rockchip: Add rk3576 SoC base DT
>   arm64: dts: rockchip: Add rk3576-armsom-sige5 board
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
>  .../devicetree/bindings/arm/rockchip/pmu.yaml |    2 +
>  .../devicetree/bindings/i2c/i2c-rk3x.yaml     |    1 +
>  .../bindings/iio/adc/rockchip-saradc.yaml     |    3 +
>  .../devicetree/bindings/mfd/syscon.yaml       |    2 +
>  .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
>  .../devicetree/bindings/soc/rockchip/grf.yaml |   16 +
>  .../bindings/timer/rockchip,rk-timer.yaml     |    1 +
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../boot/dts/rockchip/rk3576-armsom-sige5.dts |  613 ++
>  .../boot/dts/rockchip/rk3576-pinctrl.dtsi     | 5775 +++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 1635 +++++
>  12 files changed, 8055 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576.dtsi
> 
> --
> 2.46.0
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3576-armsom-sige5.dtb' for 20240802214612.434179-1-detlev.casanova@collabora.com:

In file included from arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts:14:
arch/arm64/boot/dts/rockchip/rk3576.dtsi:6:10: fatal error: dt-bindings/clock/rockchip,rk3576-cru.h: No such file or directory
    6 | #include <dt-bindings/clock/rockchip,rk3576-cru.h>
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[3]: *** [scripts/Makefile.lib:434: arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb] Error 1
make[2]: *** [scripts/Makefile.build:485: arch/arm64/boot/dts/rockchip] Error 2
make[2]: Target 'arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb' not remade because of errors.
make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1389: rockchip/rk3576-armsom-sige5.dtb] Error 2
make: *** [Makefile:224: __sub-make] Error 2
make: Target 'rockchip/rk3576-armsom-sige5.dtb' not remade because of errors.






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
