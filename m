Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA248C30653
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 13:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ltwaxHHcuSP++PmqVUU4x4ILpMB7w24bwvQgEAo2iyI=; b=LuchlFHhGiQEByGEghzOPRsIOq
	jyhFvKfVMjXfgbYTrRAl+/7Zq5WZVLCO9SYyh+tsa1G9nTLeAfkgJw/h9yp2ihqWxhau+cG33ACOO
	VZop9/HHQDMEoZZGvDMadHjQDQ1ZO6sUfL/EKDjBmfjXOXBmhy6cyIzo93+P4w8QgU6EfYkcnYChC
	kpGhr/8XH82ELAvc5mK+TWO6hdxESv62FURxjEuLp+2074dHHHjOObtWasB3ewmSbVAqDNwtN10kJ
	0t/wW4YQUOC/eZpibqARhnh2mR/YTsNMun0n1AmAsuNBUiPyOKYcpHNmGfbZyGDs2heoeN9SsgdHx
	iSD24iTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMSee-00000006wz9-0631;
	Wed, 26 Jun 2024 13:25:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMSeB-00000006wlp-3CMa
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 13:25:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 17785619E2;
	Wed, 26 Jun 2024 13:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 811FFC2BD10;
	Wed, 26 Jun 2024 13:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719408314;
	bh=cSDPpTMcDEC2j8uQwxtBCGBjo3Lk1dGBNRAzKOx07Xw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=HryVjBQ9WTLc4ViiTTMguJigtEDUnEcofSwoss3Pz9nOYoOowz39fjk/f8AqgzhYi
	 pyrLWo1Z6HDbpQRYs5ucLkobYtbJb6t6Zshxmy6vI6MIoJYmBoF3b1+zwXwjDzcLOF
	 E/UpVaNCL/qp5OPPrX1uufQCfcer72i2cqHKuKgLQOcMsL5Lz4M88q1RVBT34ys651
	 hZRIp0T0KEQSH0KZ5mVNQR/SWOHp9MtJ2kOTx/zm0j9BUM922//y3uOLH+wkU/N9ip
	 Y048XXV7OajniVJK7pq17pX9RTuXioOLjEuqIDBAQzELsl8UHf4PUh9esLaHSG7Tan
	 Aj5Sm4NanvJsQ==
Date: Wed, 26 Jun 2024 07:25:13 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, heiko@sntech.de, 
 conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20240623201415.3205-1-naoki@radxa.com>
References: <20240623201415.3205-1-naoki@radxa.com>
Message-Id: <171940790949.2950908.11858258280996418792.robh@kernel.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E
 v3.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_062515_905235_B11A76B1 
X-CRM114-Status: GOOD (  10.62  )
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


On Mon, 24 Jun 2024 05:14:13 +0900, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa ROCK Pi E v3.0 board.
> 
> Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
> RK3328 SoC with a compact form factor.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> Changes in v3:
> - none
> Changes in v2:
> - none
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240623201415.3205-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: ethernet@ff540000: Unevaluated properties are not allowed ('snps,rxpbl', 'snps,txpbl' were unexpected)
	from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: ethernet@ff550000: Unevaluated properties are not allowed ('snps,txpbl' was unexpected)
	from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
