Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EE57C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 18:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3qwSPUZUjzqQfFlghckZmKgWpMbm9ay+7HhLdGIU9ts=; b=3BIZdEJJiRHgE5TLNFGS+jZbHN
	KpRQA7zcDfD4zUUwfrCdWFSFSB1w8iZG5bf8vCSppU+k2ckqUkdsLdvxIpT2MntdZOIXZi8CdCy2v
	9JDRCRMKYHIUAu0tcYEOlhe8/09oQhpWOH9kizKFPZZQ9mDJfrop+SS9gWmkW15lfKr1tSpFlT/Fb
	TnayU1m1k5LCny9Hg87SpDkTjVyxmFMYQP3HaVarrT0ENuGbJ76D+T5R3X+tMo3FE8gdsRSPIQYxI
	UmbmApsPAJIgspBXoX/ixQL2kQp2YGaw74eFlbrS56zwlKxgpjlNvDk2tiW5O85dSyCDOw5dIYByh
	zKvEIR6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwRMP-00000009Uaj-0Szq;
	Mon, 15 Apr 2024 18:47:21 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwRMK-00000009UWj-0yiu;
	Mon, 15 Apr 2024 18:47:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6CEE0CE0E5A;
	Mon, 15 Apr 2024 18:47:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 933C2C2BD11;
	Mon, 15 Apr 2024 18:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713206833;
	bh=C2qyiGADw+gC+Ft/ZZHJ29hdNBa1l7Td5WbuGlH9vpg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=A9IfzMpCmrBPoM0NqB4VTba0T3/IBkWc6VWPapKECLtZko/XloDRryQxIFfKq8O6Q
	 WNRpa0O5w1+JRRXCTGDf+5Cr0lXPf76kDf2Ix5bo7TziOyYDJFLfHpsWMjcdgTxf4u
	 5KLoM3bthozHti+qovaMGqaIP0he7HZQu1syN0uHNBe5lQhxZavAlqKjpJ1Q2GII5U
	 VPqGqvs4TkdLt1pFJDRf1QzJcTmWnvbD7HpwboKee9/oOoKUb7gRWpkLytahqwZKaa
	 7FEhzNKlrb2xKFdyGpv8NkF40Jdk3mMoF/JJYN0VcnwjcKbjRJA52V6rDPSs+VGdQB
	 W8Y5jG5RnaV5Q==
Date: Mon, 15 Apr 2024 13:47:10 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20240414151135.1774981-1-jonas@kwiboo.se>
References: <20240414151135.1774981-1-jonas@kwiboo.se>
Message-Id: <171320634867.4962.13146446067412634937.robh@kernel.org>
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_114716_684218_CC653129 
X-CRM114-Status: GOOD (  15.09  )
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


On Sun, 14 Apr 2024 15:11:26 +0000, Jonas Karlman wrote:
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
> Jonas Karlman (3):
>   dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
>   arm64: dts: rockchip: Add Radxa ZERO 3W/3E
>   dt-bindings: display: rockchip,dw-hdmi: Fix #sound-dai-cells warning
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   7 +
>  .../display/rockchip/rockchip,dw-hdmi.yaml    |   4 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
>  .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
>  .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
>  6 files changed, 523 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3566-radxa-zero-3e.dtb rockchip/rk3566-radxa-zero-3w.dtb' for 20240414151135.1774981-1-jonas@kwiboo.se:

arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dtb: hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dtb: hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
