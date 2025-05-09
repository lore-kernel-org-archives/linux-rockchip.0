Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 434BEC3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 16:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aONNQ0FpVEw61VNTKxgMlNizNJADd4+erUSUaVBuHGw=; b=gHp74PLQ6q2V4Mvue7hNzmcOh0
	hyS+5spdzmztiNu0BndXAvcpGT7j4peZskWnyDJ7XowLq+nDtG4TcNNnz98hKKOTdL9snDPT5tFG/
	QH8++z7xPbcpVCkQZLciSeadrZhn5E5B8lEjBH36CIcDAyJWZUjgjPsOjHkToOAK4CF0CXNKxzTS2
	sdZl6okMCoK6/jR+Ev5hIT07rbg61+7HaAoIBOA2nJtuA3hGIrMf5cRuFkW35O93BQvaxp8Mg/0Dl
	0Km54ECE9cx1tqQSlKIvseEabOHjiWGG5T726WAeJPhsNih7nbo3wLriufmj1mv2q4adlsUkPdgNM
	agNJpljQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDQgZ-00000004Iz2-0VLG;
	Fri, 09 May 2025 16:34:55 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDOXB-00000003v4j-21Zb;
	Fri, 09 May 2025 14:17:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C95AFA4C300;
	Fri,  9 May 2025 14:17:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45D22C4CEE4;
	Fri,  9 May 2025 14:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746800224;
	bh=hA+Ww4vy1WmPC6ngKo3l3xg9yMIXdOIipY2osC7nGmc=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=U2q+dLGsfJg1tCC/qbSehXOGekZyB7XemA6wb6gUXoawYhZ+aDMMv1ZFbMY6HUpnk
	 c0YdwDI3/EMUekz8/xrb6JXfyG901ARY8SI/7eHeCInnyqkMA2WUq2N90dBSfCfzj6
	 OQg5vMMlZ3a0FA+RxzGx82RhqHFQuvVr8CVLcotvKvRO03yk1A3itW6ceiqgtL5MLe
	 1YFpGUCZp7wIwrFgIuLpj2XX0QR7O7NXHG0UiXXBNXFjaF0deecP7Gw6O1lMJruu+x
	 53aKcIrEBamUjrpZPCimc6wIRyWbcGG7s/uFAPGdZyF9ISyrRXsYyg0xdWAV5r5mwR
	 ebvEuOrTGbDJw==
Date: Fri, 09 May 2025 09:17:02 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, kernel@collabora.com, 
 FUKAUMI Naoki <naoki@radxa.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
In-Reply-To: <20250508-rock5bp-for-upstream-v2-0-677033cc1ac2@kernel.org>
References: <20250508-rock5bp-for-upstream-v2-0-677033cc1ac2@kernel.org>
Message-Id: <174679985287.3369051.14227124355079340433.robh@kernel.org>
Subject: Re: [PATCH v2 0/5] arm64: dts: rockchip: add ROCK 5B+ support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_071705_645942_F7AAE2FF 
X-CRM114-Status: GOOD (  21.96  )
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


On Thu, 08 May 2025 19:48:49 +0200, Sebastian Reichel wrote:
> This series adds support for the ROCK 5B+, which (as the name suggests)
> is an improved version of the ROCK 5B. It also adds initial USB-C
> support for both the ROCK 5B and the 5B+.
> 
> Changes in PATCHv2:
>  - Link to v1: https://lore.kernel.org/r/20250324-rock5bp-for-upstream-v1-0-6217edf15b19@kernel.org
>  - Replaced DT binding patch with the version from NAOKI
>  - Dropped unused pinctrl for vcc5v0_host_en from the shared DT
>  - Moved USB-C SBU DC pins to board specific files, since they differ
>    between Rock 5B and Rock 5B+
>  - Added pinmux for SBU DC pins
>  - Rebased to latest version of Heiko's for-next branch
>  - Disable USB-C on Rock 5B for now
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> FUKAUMI Naoki (1):
>       dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
> 
> Sebastian Reichel (4):
>       arm64: dts: rockchip: move rock 5b to include file
>       arm64: dts: rockchip: move rock 5b to include file
>       arm64: dts: rockchip: add Rock 5B+
>       arm64: dts: rockchip: add USB-C support for ROCK 5B+
> 
>  .../devicetree/bindings/arm/rockchip.yaml          |    5 +
>  arch/arm64/boot/dts/rockchip/Makefile              |    1 +
>  .../boot/dts/rockchip/rk3588-rock-5b-plus.dts      |  129 +++
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |  970 +-----------------
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi   | 1082 ++++++++++++++++++++
>  5 files changed, 1247 insertions(+), 940 deletions(-)
> ---
> base-commit: b7caeb9545db25649eda36ce593b70cc2aa804ab
> change-id: 20250324-rock5bp-for-upstream-fd85b00b593b
> 
> Best regards,
> --
> Sebastian Reichel <sre@kernel.org>
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
 Base: base-commit b7caeb9545db25649eda36ce593b70cc2aa804ab not known, ignoring
 Base: attempting to guess base-commit...
 Base: tags/v6.15-rc1-40-g425af91c5802 (best guess, 2/3 blobs matched)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250508-rock5bp-for-upstream-v2-0-677033cc1ac2@kernel.org:

arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: /edp@fdec0000: failed to match any schema with compatible: ['rockchip,rk3588-edp']
arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: /edp@fded0000: failed to match any schema with compatible: ['rockchip,rk3588-edp']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
