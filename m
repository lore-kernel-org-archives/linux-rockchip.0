Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2457C83F22
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 16:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MxwzILRgzrYz4eTU1XCBXtwD9vkyRsNJAX7LMLrSaqk=; b=pZ/aLseDecwDrxwfCEQSdwyA7t
	6k+3fCgpknB9QwOlWu3T037y7LomMk3JG4P1bGGW5Hv0gMDSnn4XKNMmxbgfXrSK01RTZJHnySsPV
	BoCbLLfDiIcHVgHeBJjerAOQRvDYa0OJ7KRCPiOyThfjpdy6wprh6dg4/hoVnJKp7W2Nurn4vR4xj
	buVpcf8Olv28iMF4vFKws35OlmCegjbSlN36XHALDGD3aKijJaq7HMPPdC8tL9XpcnXT7XH5ZPV5M
	OpsT3+8ERZmyo4I8hjDHafgHxIYeVChCW2t2tyca0pdcH5rT5U/dW1ECE5bH2sb2u+TzwZdc8m5MZ
	UvZDBPEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubi8h-00000005h1N-3WUV;
	Tue, 15 Jul 2025 16:04:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubgbZ-00000005MYK-0L8b;
	Tue, 15 Jul 2025 14:26:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2CE6261462;
	Tue, 15 Jul 2025 14:26:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BE2DC4CEE3;
	Tue, 15 Jul 2025 14:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752589559;
	bh=4Iuh1W4p/GuvtYKXIWTDTZsm2HB078xwuI7VRYFOyrw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=kTO9LMpppBNDHQsBuRHRm7reVUOsGe4WX1YKctqv6iQWzbpNpKKQr3XuqAkSK85bq
	 qD5CJ4tAUv4cq0Nw/3C25mnl5K4VFYtuHHI8TV2w/b9GmIuoLhDXBUIySdpcLApvic
	 mZhp6F9t9M6TNAtr4xx4Stm8+7csKiPYehRn4VI17JPmZvDP9eycI3HkjLgv7VZP95
	 86VFSx/X1SJV5jLNwnTO40XUc1OapKhEI6IwCSntnvT6tvzmwpI9BxtnDbZGa23GR/
	 4HivpPBJIf/oE9L8cJ0GsWg2OI4gPGr8u/Jj9/LbezFz49+hdJ/20/ZgdzEBaeongY
	 YDjIAY54qI2GQ==
Date: Tue, 15 Jul 2025 09:25:58 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Frank Wang <frank.wang@rock-chips.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, dri-devel@lists.freedesktop.org, 
 Thomas Zimmermann <tzimmermann@suse.de>, Conor Dooley <conor+dt@kernel.org>, 
 Amit Sunil Dhamne <amitsd@google.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>, 
 linux-kernel@vger.kernel.org, David Airlie <airlied@gmail.com>, 
 Andy Yan <andy.yan@rock-chips.com>, linux-phy@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, Simona Vetter <simona@ffwll.ch>, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <20250715112456.101-1-kernel@airkyi.com>
References: <20250715112456.101-1-kernel@airkyi.com>
Message-Id: <175258937557.1273563.1571687320229620719.robh@kernel.org>
Subject: Re: [PATCH 0/5] Add Type-C DP support for RK3399 EVB IND board
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


On Tue, 15 Jul 2025 19:24:51 +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The RK3399 EVB IND board has a Type-C interface DisplayPort. It use
> fusb302 chip as Type-C controller.
> 
> This series focuses on adding TCPM support for USBDP PHY and DP driver.
> Before this, the USBDP PHY and DP controller of RK3399 sensed state
> changes through extcon, and devices such as the RK3399 Gru-Chromebook
> rely on them. This series should not break them.
> 
> Patch1 add missing "displayport" prop for USB connector binding.
> Patch2 add new Type-C mode/orientation switch for RK3399 USBDP phy
> binding.
> Patch3 add TCPM support for RK3399 USBDP PHY.
> Patch4 add TCPM support for CDN-DP.
> Patch5 add Type-C DP support for RK3399 EVB IND board.
> 
> Chaoyi Chen (5):
>   dt-bindings: connector: Add displayport connector for hotplug notify
>   dt-bindings: phy: rockchip: rk3399-typec-phy: Support mode/orientation
>     switch
>   phy: rockchip: phy-rockchip-typec: Add support for Type-C TCPM
>   drm/rockchip: cdn-dp: Add support for Type-C TCPM
>   arm64: dts: rockchip: rk3399-evb-ind: Add support for DisplayPort
> 
>  .../bindings/connector/usb-connector.yaml     |   4 +
>  .../phy/rockchip,rk3399-typec-phy.yaml        |  14 +
>  .../boot/dts/rockchip/rk3399-evb-ind.dts      | 119 +++++++
>  drivers/gpu/drm/rockchip/cdn-dp-core.c        |  37 +-
>  drivers/phy/rockchip/phy-rockchip-typec.c     | 335 +++++++++++++++++-
>  5 files changed, 482 insertions(+), 27 deletions(-)
> 
> --
> 2.49.0
> 
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
 Base: tags/next-20250715 (exact match)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250715112456.101-1-kernel@airkyi.com:

arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: dp@fec00000 (rockchip,rk3399-cdn-dp): ports: 'port@0' is a required property
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3399-cdn-dp.yaml#
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: dp@fec00000 (rockchip,rk3399-cdn-dp): ports: 'port@1' is a required property
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3399-cdn-dp.yaml#
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: dp@fec00000 (rockchip,rk3399-cdn-dp): Unevaluated properties are not allowed ('ports' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3399-cdn-dp.yaml#
arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dtb: /sound: failed to match any schema with compatible: ['rockchip,rk3399-gru-sound']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
