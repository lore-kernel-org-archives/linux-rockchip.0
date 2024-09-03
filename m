Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAE7BCD3439
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 14:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cEfSoDYw80kUK6MGpw/FqfRDwq28I5gHwHv0B/60g5w=; b=HllbaHzSV8C2tv8ppCr9ejF5b2
	/syeA03WOvPTbDqY9Tb9u184brp6oVb8yqFzjS1vHiHPTgknDZrT6A2EpIuk1YYHiBES+CeP+tAMM
	Vk1y7BW/KJrXsoyyA/++LWKBEXOtaQYguujCNdKKq5+YLc6HGMrHK2yzLUwlcOenfAhjya3xChwQE
	BCtRzJTRfSjZp7V4ANgI4vOwDSYrTC8umcg+oOfH8Cpr/M1F5cq0XE4sk72NzsVyg2KYdPqusvYJt
	roQNR2o3tclVfq/+of2V/x6oWTdFgEui2Ri2LhAOagqnYKg9SQysHZiqKWfTI/ZtkFydF4HnlRvQd
	fV6H5ZvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUXt-00000000aUq-0jVd;
	Tue, 03 Sep 2024 14:30:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUUU-00000000Z4g-0oon;
	Tue, 03 Sep 2024 14:26:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 821CA5C5878;
	Tue,  3 Sep 2024 14:26:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 664ABC4CEC7;
	Tue,  3 Sep 2024 14:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725373600;
	bh=oepubW5xCjnomthQWrM+V31kgGapv4R6djjQTRdai7g=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=RZNl6SxOy3lRIAGl0KBzxJnXKwr/4wIqks5ps/W01gjbCvPlsC2X8eu6OWOutjYhV
	 a+64ojJLBCLo8FSYCIYdtle3x1ox0YzNE5bE1HWjeWk2lm/hURdSDw1RVjXxbSN5Vf
	 QgA+YgGZvVlQvdKUk0pkpjbfoDNnapuY/SJxs+VEgw5KjRzniQB+zrrOuuenWd+C9K
	 wHbx/B1cDFpwoZhymfQNfTn4K8e9PoS9frP+Zqb3ed6UJpDcfusewTF7HKAl5clCUB
	 Ws9k6f1Hy2NxC60GUF8jmo0a4d6QyUgx150NYL5koZkBI7RRC10lwLWM33MR9cmuXo
	 CoH4/tk/jeXeg==
Date: Tue, 03 Sep 2024 09:26:39 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Dongjin Kim <tobetter@gmail.com>, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20240901112020.3224704-1-jonas@kwiboo.se>
References: <20240901112020.3224704-1-jonas@kwiboo.se>
Message-Id: <172537334390.873091.5239461386156277757.robh@kernel.org>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add Hardkernel ODROID-M2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_072642_584079_4F9843E9 
X-CRM114-Status: GOOD (  17.35  )
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


On Sun, 01 Sep 2024 11:20:13 +0000, Jonas Karlman wrote:
> This series add initial support for the Hardkernel ODROID-M2 board.
> 
> The Hardkernel ODROID-M2 is a single-board computer based on Rockchip
> RK3588S2 SoC. It features e.g. 8/16 GB LPDDR5 RAM, 64 GB eMMC, SD-card,
> GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0/Type-C.
> 
> Schematics for ODROID-M2 can be found at:
> https://wiki.odroid.com/_media/odroid-m2/hardware/m2_main_rev1.0_240611.pdf
> 
> The device tree was created based on the schematics with regulator
> voltage values adjusted to closer match vendor downstream device tree.
> 
> Testing was done booting into Linux using mainline U-Boot from [1],
> a test build of mainline U-Boot for ODROID-M2 can be found at [2].
> 
> U-Boot patches will be sent once DT reach the devicetree-rebasing tree.
> 
> [1] https://github.com/Kwiboo/u-boot-rockchip/commits/rk3xxx-2024.10/
> [2] https://github.com/Kwiboo/u-boot-build/actions/runs/10653436524
> 
> Jonas Karlman (2):
>   dt-bindings: arm: rockchip: Add Hardkernel ODROID-M2
>   arm64: dts: rockchip: Add Hardkernel ODROID-M2
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588s-odroid-m2.dts   | 903 ++++++++++++++++++
>  3 files changed, 909 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-odroid-m2.dtb' for 20240901112020.3224704-1-jonas@kwiboo.se:

arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dtb: video-codec@fdb50000: compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu'] is too long
	'rockchip,rk3588-vpu121' is not one of ['rockchip,rk3036-vpu', 'rockchip,rk3066-vpu', 'rockchip,rk3288-vpu', 'rockchip,rk3328-vpu', 'rockchip,rk3399-vpu', 'rockchip,px30-vpu', 'rockchip,rk3568-vpu', 'rockchip,rk3588-av1-vpu']
	'rockchip,rk3188-vpu' was expected
	'rockchip,rk3228-vpu' was expected
	'rockchip,rk3066-vpu' was expected
	'rockchip,rk3399-vpu' was expected
	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dtb: /video-codec@fdb50000: failed to match any schema with compatible: ['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu']
arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dtb: /video-codec@fdba0000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dtb: /video-codec@fdba4000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dtb: /video-codec@fdba8000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dtb: /video-codec@fdbac000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
