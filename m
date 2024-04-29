Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5159CC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Apr 2024 14:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V7W9/HE1f9NMZ3iup49bVSD6lbo4Uv1n3VwbLDFZ2Ro=; b=HhT4kMesm7jAgaoSDZCsi9ZpcV
	W2ItgpWa0KU9FoNCYe9GdZwo9MDDytBUqWMR/wF/00iWMd1CJ66MhpvII73qpBTFKlZIpq2kA9xhD
	STT2dKlGIVdN8DrkAeZesRrSHp0wOmSi+qvFSR4eZE+mVSKz1PhI29LTF28FRP57CLdMOhkkKPc8t
	u44xQxwe+XSDrnlQeKknDe3wmoTRvhOCo/xVZkbB+y2hd65BR8oazO0MS2S04PsmNL3kbVzIkfzYB
	OSYust4q7SMAkkg3xQXA2c+SxOMsN5Pw+Z+EsKYksqHj55eLlX5WWJ1G4uTWQODTYV39P5/XvvAwg
	W2SOL1iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1SCS-000000039qA-022t;
	Mon, 29 Apr 2024 14:41:48 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1SCK-000000039la-0RZi;
	Mon, 29 Apr 2024 14:41:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CDAA4CE0AB0;
	Mon, 29 Apr 2024 14:41:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7307CC113CD;
	Mon, 29 Apr 2024 14:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714401696;
	bh=JEfYMeBJOiHNAWe4+hJZqGxv7XM4utWyxu6aJe0ctqM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=mvdPOYQ2lylbTa663fLAJVJeNVyOjkeFmUH3B97UTHaqDr/w9U+Vc4Dr82Uvz+7/k
	 QkbEKQmgAsCP+lQIO2O26JQ8cf/SSzmWqu+Ma8fQPY1esjGT9/W8tuZh/pgfC/0D6Z
	 5iHthO5ZeqBdOEwD4sk6tceN1aCtmkUdtCuL2LYgaXQ+r1HT7xpz5z16rnMQxEFphJ
	 UWMHVnAPyd8JxXIQS/2CPSaSdAmdpsEU3vTw4WsEE5BGWzAnqUjkFrrW8okqT0Y1K6
	 /Zfpcpwt+FEnW02X34meBl1CULNDw/YPVnu8bIcEEwS9GGYMX7s5utVwMHBIBBMLVS
	 gcusE43a0ipqg==
Date: Mon, 29 Apr 2024 09:41:34 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-arm-kernel@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org
In-Reply-To: <20240428123618.72170-1-amadeus@jmu.edu.cn>
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
Message-Id: <171440141099.1676491.7602268087983618249.robh@kernel.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa ROCK 3C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_074140_377044_0B99B0A3 
X-CRM114-Status: GOOD (  12.66  )
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


On Sun, 28 Apr 2024 20:36:16 +0800, Chukun Pan wrote:
> Changes in v2:
>   Collected Acked-by.
>   Drop cd-gpios for sdhci.
>   Add mmc-hs200-1_8v to eMMC.
>   Correct the spi max frequency.
>   Update model name and compatible.
>   Update regulator according to the schematic.
> 
> Chukun Pan (2):
>   dt-bindings: arm: rockchip: add Radxa ROCK 3C
>   arm64: dts: rockchip: Add Radxa ROCK 3C
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3566-rock-3c.dts      | 750 ++++++++++++++++++
>  3 files changed, 756 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> 
> --
> 2.25.1
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3566-rock-3c.dtb' for 20240428123618.72170-1-amadeus@jmu.edu.cn:

arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
