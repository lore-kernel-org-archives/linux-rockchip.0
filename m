Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3494DCA0EDC
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 16:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V+b/7VW5xHsVXcjh9wabcHzZQqG1oq4q0iLBrl0ClUg=; b=g2pbFZ9alJQkL5oQ4D1CPKKJm8
	GLm+DCpp8hWrCnziHyAFmr8WvMXkagC6ayd3xgRVcQI206v4QodQNcU19CgKEV0DcTrx6QlCpx2XL
	DWo+k7I+0ui1DnXtYWdKIxeJExkAenL8fNfvmqyhTfY0KzV/3/RE42PSXWJJU3ROYPjPOTVDIPYnx
	IOmvGmVS2Gz218Vuf8tkiLI7c4PnSXm1m+1ku+EbkMbxIVez/FUw8nrywvpALdKO8dKxK1t5M3o8T
	cZ0PahRr3YWTIHQWm9xDL/TrepzsLP86k0/lAID2sD53AYS1bvNnvlwaqzkjQJCLw+lxqjzpavEPb
	TkA7FU/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk4aq-000000073H7-3lxk;
	Fri, 30 Aug 2024 16:35:24 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk4ZO-000000072V5-121x
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Aug 2024 16:33:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2CE98A41D41;
	Fri, 30 Aug 2024 16:33:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80415C4CED0;
	Fri, 30 Aug 2024 16:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725035632;
	bh=9xTcO1DOiqWpIcK869nAme3JXfSH8fw9r0L+VknD1Ds=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=uqPENUdlteO057JqH5uCqwYTFl2KLEEbcZ3HApYCUyyYta4xjNEjqXJ0qH2bcXLTI
	 4/B8JHZs/bL2OBVjAuCloyTBoNHf5di2ifm0sH5UksX9iroGiZ2ZTTj+uISKfyOEbl
	 HMnqMmxl7AIfpvAcF7YM9jiqgEmkS6yuaDuEzxnqov0Nq0s6aOu3dkb0RoR52LbJ/i
	 y81Y8tLTloclbpkRS3Y0xGFFxM9nazo+s/h+edxXDvVIIj8RuptUHtQqF8Ajt03B6Y
	 TmaL1ipij8J2d5xXgy/D8soR2sT7lHENVTZ0Au/lVGWanAvab3W3xGwwHww/86sipO
	 OMfvNR891QW0g==
Date: Fri, 30 Aug 2024 11:33:50 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: zzc@rock-chips.com, andyshrk@163.com, heiko@sntech.de, jonas@kwiboo.se, 
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>, 
 jagan@edgeble.ai, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
 conor+dt@kernel.org
In-Reply-To: <20240829204517.398669-1-macroalpha82@gmail.com>
References: <20240829204517.398669-1-macroalpha82@gmail.com>
Message-Id: <172503553992.420479.9699991919956159507.robh@kernel.org>
Subject: Re: [PATCH V2 0/3] Add GameForce Ace
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_093354_436102_1A73AB32 
X-CRM114-Status: GOOD (  15.18  )
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


On Thu, 29 Aug 2024 15:45:14 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the GameForce Ace. The GameForce Ace is an RK3588s
> based gaming device with a 1080p display, touchscreen, hall effect
> joysticks and triggers, 128GB of eMMC, 8GB or 12GB of RAM, WiFi 5,
> and support for a 2242 NVME.
> 
> Changes since V1:
>  - Update eMMC changes to note proper authorship.
>  - Removed cw2015 changes for dual cell configuration. For the moment
>    it's just cosmetic (aside from voltage_now reading incorrectly, no
>    other issues were observed).
>  - Removed USB bindings because vbus regulator isn't ready yet.
> 
> Alex Zhao (1):
>   arm64: dts: rockchip: rk3588s fix sdio pins to pull up
> 
> Chris Morgan (2):
>   dt-bindings: arm: rockchip: Add GameForce Ace
>   arm64: dts: rockchip: Add GameForce Ace
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../dts/rockchip/rk3588-base-pinctrl.dtsi     |   10 +-
>  .../dts/rockchip/rk3588s-gameforce-ace.dts    | 1237 +++++++++++++++++
>  4 files changed, 1248 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
> 
> --
> 2.34.1
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-gameforce-ace.dtb' for 20240829204517.398669-1-macroalpha82@gmail.com:

arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: video-codec@fdb50000: compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu'] is too long
	'rockchip,rk3588-vpu121' is not one of ['rockchip,rk3036-vpu', 'rockchip,rk3066-vpu', 'rockchip,rk3288-vpu', 'rockchip,rk3328-vpu', 'rockchip,rk3399-vpu', 'rockchip,px30-vpu', 'rockchip,rk3568-vpu', 'rockchip,rk3588-av1-vpu']
	'rockchip,rk3188-vpu' was expected
	'rockchip,rk3228-vpu' was expected
	'rockchip,rk3066-vpu' was expected
	'rockchip,rk3399-vpu' was expected
	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdb50000: failed to match any schema with compatible: ['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba0000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba4000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba8000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdbac000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
