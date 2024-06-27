Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DFA6C2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 14:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cKRPmJjjTGqXm5rtk6Shcz0u8ZKZxeP0Z6UVdXc6riI=; b=SkuzDZ90RTdD3Po6YP5fVNGe89
	h56QzsqtvGO+9b5h+whVnHKFOzpSpV7gef/Z0XGvw29d3O9ltASFwzd5VWWc71rO12Vys5p87e6E0
	qBM00TeYuYFdjC9sMXfyDFBYVgqaOKfU7LI1jORzPElwuMVPNe6FRiuPWTUuBio/2pweK2CZWtcYo
	uC06gY/CKWtZBbdsMASNIxdxi7Orv0WKSHy1S9PU6yHyR93wCTWaD9IGiF6F5eZ7faWAXN7elujgM
	P6zh6AXhHPkjM243MkVDDEakjk9MDDRpOfJBdibSodN0xNYbK/1Ac5SsXrPW5qy7cWW45KkUDGd/H
	ePJCyTQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMqDY-0000000AeyV-0wB0;
	Thu, 27 Jun 2024 14:35:20 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMqCn-0000000Aeil-0rvY;
	Thu, 27 Jun 2024 14:34:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 94611CE2F4D;
	Thu, 27 Jun 2024 14:34:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C50BC2BBFC;
	Thu, 27 Jun 2024 14:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719498870;
	bh=gv4MXPYZvm3lNZmH4AUd269FhyNbFCqWRSyx8/WMyNg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=qYlPuCj0oV8Jm9BP3YMEPpjI1Owzalvm09e89g6f/n5FCgTi97K/Yq+fjJowqXrP8
	 uIYh/tRKVbX0Bfcgm6354axi/B0ptRgdviyfaTjJ2fWgfp6w+B77vVJfNLa30E8lUF
	 jOg2tmfXhwOq96bNV073BUAn3PcgnRkGHbuZjR/QonTUBGWpSVYpyK77sjTSbPWeMq
	 BU41asrOKvaqNREPUT6F0eP9JIWoKw+VFXrTPH6xM2vLRyZK88yroP2EPrcB4mjfko
	 jQ61toqljbTP5BueUKCpqvp8ZRKZWMu9iigXTb6Ux0jk++xUhwU6B60fobefpO4FzL
	 9oPQ5b3CBOOHw==
Date: Thu, 27 Jun 2024 08:34:29 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20240626230319.1425316-1-jonas@kwiboo.se>
References: <20240626230319.1425316-1-jonas@kwiboo.se>
Message-Id: <171949859482.3298953.17210742633761408276.robh@kernel.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add Xunlong Orange Pi 3B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_073433_736183_27D911F4 
X-CRM114-Status: GOOD (  15.01  )
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


On Wed, 26 Jun 2024 23:03:10 +0000, Jonas Karlman wrote:
> This series adds initial support for the Xunlong Orange Pi 3B board.
> 
> The Xunlong Orange Pi 3B is a single-board computer based on the
> Rockchip RK3566 SoC.
> 
> Schematic for Orange Pi 3B can be downloaded from:
> http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-3B.html
> 
> Changes in v2:
> - Add DT for v2.1 hw revision, rename initial DT to v1.1:
>   - Ethernet phy io voltage: 3v3 (v1.1) / 1v8 (v2.1)
>   - Etherent reset gpios: GPIO3_C2 (v1.1) / GPIO4_C4 (v2.1)
>   - WiFi/BT: CDW-20U5622 (v1.1) / AP6256 (v2.1)
> - Rename led node and move led pinctrl props
> - Use regulator-.* nodename for fixed regulators
> - Drop rockchip,mic-in-differential prop
> - Add cap-mmc-highspeed to sdhci node
> - Add no-mmc and no-sd to sdmmc1 node
> 
> Jonas Karlman (2):
>   dt-bindings: arm: rockchip: Add Xunlong Orange Pi 3B
>   arm64: dts: rockchip: Add Xunlong Orange Pi 3B
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   8 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/rk3566-orangepi-3b-v1.1.dts  |  29 +
>  .../dts/rockchip/rk3566-orangepi-3b-v2.1.dts  |  70 ++
>  .../boot/dts/rockchip/rk3566-orangepi-3b.dtsi | 678 ++++++++++++++++++
>  5 files changed, 787 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v1.1.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v2.1.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
> 
> --
> 2.45.2
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3566-orangepi-3b-v1.1.dtb rockchip/rk3566-orangepi-3b-v2.1.dtb' for 20240626230319.1425316-1-jonas@kwiboo.se:

arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v2.1.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v1.1.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
