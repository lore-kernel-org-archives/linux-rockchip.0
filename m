Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E6C3E77191
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 15:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TX22fMyoOrmxT+W64V01YsvrgZ0dnO6ND0Y3d9OMb7M=; b=abaINZgblyLUfCSDOpYp9eVhYT
	Z+Y7c6JX5gA1Wp1MxBv88FKbCoBNkNrbbJr2Ra+WPB7vbTdXlerbrZvbCGX2K9FwwZlX34w6cSbYY
	98b3OtHuXoXSWo7nrfuVdrE2UhOVLiqjERdImmxXVs3jgKeuuVSCYwoXSCMun/RiuBuSKd6LHgYyv
	F0gbbORV517Yw1P6R9wGzbscriKe0VtNWbF137FXL4QnaGerp+v+Ni3AfImnVhAWor7O0plzqvfUx
	bmenR0ETuHKYmKbDk/FyIK2+zBFUSkeC4sleR1/6cjlqPyentXf/bRaJgIdxUjmIw66iZNvxtYWvH
	xhKLH+sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRCA2-00000000WJn-3P3f;
	Fri, 27 Dec 2024 15:21:58 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRC74-00000000Vl2-2OoG
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 15:18:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1CA4EA41926;
	Fri, 27 Dec 2024 15:17:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D8CDC4CEDC;
	Fri, 27 Dec 2024 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735312733;
	bh=tw6ZEAS9faDIB2cEYF9LXc8hyVuu18NNu4FmTjaXFxQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=dzQ//AxPvYQXZITJ8MjJmIp2+gH+tXJnwy0KolFV1/LCZqCZMRjket7I674G1BXpR
	 eRU/+BDUlzVnwTIwGY/kcHjnxF96JS5MuMwa03O3pshO1Cg1HG2+T6RpXBXWWHttwq
	 kTy6/r0ZRs7N5f5ZBU7uLnRed4uJcsPKX42oqLm4PBw4zq5erk13MmCfnkfIOHgBJR
	 i3SSIzJQvfpsfkzpBEoqZUT/KdgjOkpQE4tYJzByjZxGhNz8uTFpMdSEeMWDIsW63o
	 RORY7TdZizPINgDT7vo3SdfPHRWKaDYGZT2yWZp9+/YEEREX3f/Tp2bqcGKHbePjSs
	 rRxbwXm5RPr0g==
Date: Fri, 27 Dec 2024 09:18:51 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: dsimic@manjaro.org, sebastian.reichel@collabora.com, 
 michael.riesch@wolfvision.net, alchark@gmail.com, jonas@kwiboo.se, 
 conor+dt@kernel.org, macromorgan@hotmail.com, dmt.yashin@gmail.com, 
 tim@feathertop.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, 
 inindev@gmail.com, devicetree@vger.kernel.org, krzk+dt@kernel.org, 
 liujianfeng1994@gmail.com, marcin.juszkiewicz@linaro.org, jbx6244@gmail.com
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241226005845.46473-1-naoki@radxa.com>
References: <20241226005845.46473-1-naoki@radxa.com>
Message-Id: <173531253298.3886427.1210602416910073025.robh@kernel.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa ROCK 5B+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_071854_678010_AC0662F0 
X-CRM114-Status: GOOD (  12.71  )
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


On Thu, 26 Dec 2024 00:58:42 +0000, FUKAUMI Naoki wrote:
> The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.
> 
> This patch series introduces a shared .dtsi that can be used on the
> new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
> ROCK 5T.
> 
> FUKAUMI Naoki (2):
>   dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
>   arm64: dts: rockchip: Add Radxa ROCK 5B+
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../boot/dts/rockchip/rk3588-rock-5.dtsi      | 1042 +++++++++++++++++
>  .../boot/dts/rockchip/rk3588-rock-5b-plus.dts |   87 ++
>  4 files changed, 1135 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-rock-5b-plus.dtb' for 20241226005845.46473-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: phy@fee80000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: keys-0: 'key-0' does not match any of the regexes: '^button-', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/input/adc-keys.yaml#
arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: keys-1: 'key-1' does not match any of the regexes: '^button-', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/input/adc-keys.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
