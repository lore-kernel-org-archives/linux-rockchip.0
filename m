Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98619C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 18:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GHlrX4DOcYFwy4xV3ypwcnYotgE0QFyUk5Y4P1AqnRw=; b=IP57BQQcqdK3QVT76/kaA+g0q1
	iYFOWjYshhrMyQSU+CSgaqpQ0TAwPxEpGK+dCgk5XOS072Ple+7hOBR9ygf+8JRZ44+Za7oXTL46z
	ELOSh3bLK0miv5r1Zpj+yILqcq6EZ/GYsokKBEF+HiQpNlQa+vIPKIQFWhNhjqkQdqcOxO0aFtx46
	EiY3ahurFz8+2smZxbUJGlw6BzE3dBPWqjCg1UF1+VIAanbXE2cwygQScj9zGlThT1z344D1GmmxV
	rg16PdTdskECcNem2gJ7tS0H6IcSboMujS167G/+zh1ymnFJvMYxmXP+QATiWH3qjlj2fBkHmWpxs
	Vrxi00/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwRMl-00000009Ums-0NBh;
	Mon, 15 Apr 2024 18:47:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwRMd-00000009Uih-1LjR;
	Mon, 15 Apr 2024 18:47:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7B40460F82;
	Mon, 15 Apr 2024 18:47:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2B28C113CC;
	Mon, 15 Apr 2024 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713206854;
	bh=rV4vumlD5sNk0OfLAqgD11a4eTS4oTmbL+qXO4bP6Rs=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=O3sk12O1vNISu6JoCLhLE38ZrJWjsGDTXqpKMoWt7iCkqvjwE8YQq/HuZ8uIeB8xD
	 VrH1rYn7KLBMQrS/hIH8izpK6lYWSCAQ9yqQikREpywIso/QdyIK90n3mA9s9VaVBe
	 jNRd2mhID8LHACuK76b9LK5AOBL8QrS1M6QRtoOOBUgZ31wqIjYvD0nK0KPyTr+tEd
	 BnuA0wIwOi/QoEi+PWgsdvd4CrvD0UPeiEjtHzgadHteCrh9Ck+cdj17ThFzT7l1sP
	 dQh6rMMtqo1+Lg/V9zrih3sWqEKDKdzyoJUiZonNvhKhk4yjltm3/lcOG355g5MgES
	 i257yjYc2/zqw==
Date: Mon, 15 Apr 2024 13:47:32 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 linux-rockchip@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240415150349.2207075-1-jonas@kwiboo.se>
References: <20240415150349.2207075-1-jonas@kwiboo.se>
Message-Id: <171320635363.5131.4762067826853746147.robh@kernel.org>
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_114735_558804_D420E6B8 
X-CRM114-Status: GOOD (  16.11  )
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


On Mon, 15 Apr 2024 15:03:42 +0000, Jonas Karlman wrote:
> This series adds initial support for the Radxa ZERO 3W/3E boards.
> 
> The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
> computer based on the Rockchip RK3566, with a compact form factor and
> rich interfaces.
> 
> Schematic for ZERO 3W and ZERO 3E can be found at:
> https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
> https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_v1200_schematic.pdf
> 
> Changes in v2:
> - Collect acked-by tag
> - Add to Makefile
> - Add patch to fix #sound-dai-cells warning
> 
> Changes in v3:
> - Fix devicetree spelling
> - Sort hdmi-con, leds, pmic@20 and regulator@40 nodes
> - Change to regulator-off-in-suspend for vdd_logic
> - Drop patch to fix #sound-dai-cells warning, similar patch [1] already
>   exists
> 
> [1] https://lore.kernel.org/linux-rockchip/3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com/
> 
> Jonas Karlman (2):
>   dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
>   arm64: dts: rockchip: Add Radxa ZERO 3W/3E
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   7 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
>  .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
>  .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
>  5 files changed, 519 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi
> 
> --
> 2.43.2
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3566-radxa-zero-3e.dtb rockchip/rk3566-radxa-zero-3w.dtb' for 20240415150349.2207075-1-jonas@kwiboo.se:

arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dtb: hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dtb: hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
