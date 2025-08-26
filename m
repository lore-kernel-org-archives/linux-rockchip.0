Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA428CA0FEB
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 14:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sYcybCK4sFmbM3Z9mrKofWZVVmveZkvr3m6qeUAqDgk=; b=ios3CxG7jUqXqjAtZf2yenQq7u
	Rsdze27nlZ1mI/IFrlCDPneNLvLbbN1yezzieaJ7M33MexaDTzGooWBpviEynTxbdTLOal53t82al
	Y7nO/mEWMR695BYAItBOz/2MSXayHVhIQ1Zx/pEeuLzUGfSn1rqMRUJQlUi7IwCqq80eg4GAU1pNq
	AcYM26uWvnywIS/bMujfcbtJn/uomDIH5T0dw/sOxre91aBgY9Q9NRDyxeNO1pLmAB/7qH24etwj+
	ojPBv2VK7zBi/WBD2PykiNW08b+HqoXRXf13DjmoywTAB9P0nW3M18P7RNSqGqFP1KmaR5NquMDh5
	1Q+eYiMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqud6-0000000CG66-3XGs;
	Tue, 26 Aug 2025 14:26:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uquAH-0000000CAEf-2bwL;
	Tue, 26 Aug 2025 13:56:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F339A602B4;
	Tue, 26 Aug 2025 13:56:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ECD3C116B1;
	Tue, 26 Aug 2025 13:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756216604;
	bh=xnXpnVUGFEd1h6mY4HxI1CfSHwBmj/DTXkzjf07zO3M=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Fl+4kFLi9xi0OWLGHAm4VRn0IfkuXC0HUJqTXNN+bOCMxEQiXBhH6UKAVj3OB0+JU
	 R9dLFpZxnOvUCB+l3ocd/5YJKtNLBsQQ+ODsjdMGOOIa1rgu/W1yFa+vBWOpP87Xk5
	 WhwKSgq8R42zh1U0OLIEJs4tTMw9vg4o81ZgOj9gpn6crBdtb9G/ciA+XjwyKFywux
	 itfSWG/NX1sTzL5+eLtAQUuuAZrHk4t3dgfD+gR+uOrDduhC6gzmYvfn9w6YMqtytF
	 w4kl7LO5CyPJx6FptL8oVA1e45IiT4U8IC5cWAH+D5Mtodv0UDwwCOxQGWFAuJonV2
	 2HVI2GfQEBfwQ==
Date: Tue, 26 Aug 2025 08:56:43 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 Stephen Rothwell <sfr@canb.auug.org.au>, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Fred Bloggs <f.blogs@napier.co.nz>, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Hsun Lai <i@chainsx.cn>
In-Reply-To: <20250826030818.3485927-1-i@chainsx.cn>
References: <20250826030818.3485927-1-i@chainsx.cn>
Message-Id: <175621649670.159455.15557432322730951360.robh@kernel.org>
Subject: Re: [PATCH v2 0/2] Add support for 100ASK DShanPi A1
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


On Tue, 26 Aug 2025 11:08:15 +0800, Hsun Lai wrote:
> This series add support for 100ASK DShanPi A1.
> 
> Info of device can be found at:
> https://wiki.dshanpi.org/en/docs/DshanPi-A1/intro/
> 
> Changes in v2:
> - Delete the pwm include file (Chukun Pan, v1)
> - Fix vcc3v3_pcie gpios (Chukun Pan, v1)
> - Adjust the order of some nodes (Chukun Pan, v1)
> - Fix sdmmc (Chukun Pan, v1)
> - Add phy-supply for u2phy0_otg (Chukun Pan, v1)
> 
> Changes in v1:
> - Add support for 100ASK DShanPi A1
> 
> Hsun Lai (2):
>   dt-bindings: arm: rockchip: Add 100ASK DShanPi A1
>   arm64: dts: rockchip: add DTs for 100ASK DShanPi A1
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 838 ++++++++++++++++++
>  3 files changed, 844 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
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


This patch series was applied (using b4) to base:
 Base: attempting to guess base-commit...
 Base: tags/v6.17-rc1-22-g7d11b8c260ea (exact match)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250826030818.3485927-1-i@chainsx.cn:

arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dtb: syscon@26034000 (rockchip,rk3576-dcphy-grf): clocks: False schema does not allow [[21, 492]]
	from schema $id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dtb: /soc/dsi@27d80000: failed to match any schema with compatible: ['rockchip,rk3576-mipi-dsi2']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
