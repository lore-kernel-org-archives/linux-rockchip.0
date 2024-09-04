Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1016CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 13:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UilCPNF1KFETy7lqWecveITEz4ftuKkay7XMPQPrhPI=; b=PPsD+6Ngq8RcNtJu/XKdgbsaNK
	TSVh3AJlKSJ/YLRiUx/IDHfLF8ZK2RjDON4wKO8UD9lHJD5/lNAACqLtb3mC6BTrLE8sdgZWK4joA
	vXyw30Dro8otLeLq0IA0CvUm5vHz63/ElKGT3ILu+c7d4Zx6KabsAKks4eQjXVk9U+PeYimJPJTJq
	3UDQGmtnh198upb2zFfQpaXQHKjn9OBBK0DSzDdshgumr1G49m5bwwJGKqb6oUg0cpGtENh/1MxCI
	UPMWGLczqIn3Wmxx8MqU9MAUxVVw20+i3flkX1IsYKDmiemJQdrkhwPTUDlXJOy3H+ZTYf5+6iThv
	NiWEtKAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqEU-00000004aoY-0dir;
	Wed, 04 Sep 2024 13:39:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqBh-00000004Zur-1KO9;
	Wed, 04 Sep 2024 13:36:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5DE445C573B;
	Wed,  4 Sep 2024 13:36:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78628C4CEC6;
	Wed,  4 Sep 2024 13:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725457004;
	bh=oDjE+vXredknBm8QeGQHFI6cPwk2C9o9aiXVHeKEOvk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=Icl/vu/Wf1RLsvO9UJzE8rJ+8YBop70OmuI36qqXKJKayH+tv06QweaS4bP4ZvccR
	 1YpdAc+scFoqqiX/xBm0XAyYbGeDTFAecogVLZftdiSLbwaCxrdSoGtP8d0vytpA4p
	 YFYgN0Luj2eR0ivVh/AC3uVrDdBhPZv4qVatD526JlS/6PwprLTOw9G0K/T12uMhSz
	 RtnRGU7SAsdLnWeUVlXGNKDdFOBVMtylOpBC+UwEM364bx7Z2nw2b+XxF1NQjwlvkM
	 0JwhukaJMDDZ8lucNpvIa/B+i2aG04xpYOGtFFpnWpk+gnh4N/Ij9eVnv11gq5vlxX
	 t2Pj2hishU32A==
Date: Wed, 04 Sep 2024 08:36:43 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>, 
 linux-kernel@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Dragan Simic <dsimic@manjaro.org>, Chukun Pan <amadeus@jmu.edu.cn>
In-Reply-To: <20240904111456.87089-1-bigfoot@classfun.cn>
References: <20240904111456.87089-1-bigfoot@classfun.cn>
Message-Id: <172545685977.2410524.10394848640957143488.robh@kernel.org>
Subject: Re: [PATCH 0/3] Add support for Ariaboard Photonicat RK3568
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_063645_429609_1983C700 
X-CRM114-Status: GOOD (  13.30  )
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


On Wed, 04 Sep 2024 19:14:53 +0800, Junhao Xie wrote:
> Add dts for Ariaboard Photonicat RK3568.
> 
> This series bring support for:
> * Debug UART
> * SDIO QCA9377 WiFi and Bluetooth
> * M.2 E-Key PCIe WiFi and Bluetooth
> * M.2 B-Key USB Modem WWAN
> * Ethernet WAN Port
> * MicroSD Card slot
> * eMMC
> * HDMI Output
> * Mali GPU
> * USB Type-A
> 
> 
> Junhao Xie (3):
>   dt-bindings: vendor-prefixes: Add Shanghai Novotech Ariaboard
>   dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
>   arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../rockchip/rk3568-ariaboard-photonicat.dts  | 598 ++++++++++++++++++
>  4 files changed, 606 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-ariaboard-photonicat.dts
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3568-ariaboard-photonicat.dtb' for 20240904111456.87089-1-bigfoot@classfun.cn:

arch/arm64/boot/dts/rockchip/rk3568-ariaboard-photonicat.dtb: phy@fe8c0000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3568-ariaboard-photonicat.dtb: rfkill-modem: 'reset-gpios' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/net/rfkill-gpio.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
