Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15ACFD1627E
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 14:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JgQnjXrBIEYRc0++UwUXv2Uhx8SV4nIa9u1qV6SUHmM=; b=jsPzvCoWB+WAca1WORvRrrx+iH
	uioqXrMDBLA0M8Y9yHDmqKpJx4+00y+lDD9pNVyidYq8/5mTKfv/KVIv732sAA4PZTjciJx6tBL26
	SXzuyn0DhYIJgke2w8qEtmslE9wCDhCsLCGwVHXCC7UF5X8kOVOkP3LMhsLSphQmVsg51YkkOb3I4
	tXGgh5rwcCYsXuvLkH+3I3uOkDqTRHe/7lBcDsLuYCu0Ib+plabkSA4f9aZljGKF04FyKfdkBlIx3
	7VSOwn9OdEjwNt2XReyOYfj2q2poFTIhTFGS/idFuRFURf1F4j4H7mtmmn3Y8dI+TLC41UIc9HAhf
	pklXQMRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0MPQ-00000005Ya0-0duo;
	Mon, 14 Oct 2024 14:50:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LhU-00000005PTi-0OlM;
	Mon, 14 Oct 2024 14:05:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 115355C57D8;
	Mon, 14 Oct 2024 14:05:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07BE5C4CEC3;
	Mon, 14 Oct 2024 14:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728914731;
	bh=UR9QzHv4Tlg7eSv5ldrag2JVOWLwv94dSbZYXgs2ksU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=c2Abom9pwOo7M9hucnFxshR0LFAqMccXdVJbY+51XHlhOIRIVXYfURw0W9DZkGLmx
	 DVpKsnz1kc6twZG7MuX5BuCjV0pymh2GxrM2HPLjMs/bhelLMQs/x0Lcc5ZIPe2cFt
	 ZUfKvTy/Fqw0ag2nVZN+6RDJSCl0/72vRuxiygyW30NVPksesxCxW1NHXb8iEtDziP
	 q0b6uxtrV4052ZNNzdQy/mOc5NjGVv2wlFGk0YqqGa/z9xrkC4FIENaJEUJN/HHtTl
	 OxpZfWnGTavRpk3xCbms6WW0iVEsl8+s6jj6jao+Rl0kW6f4UFFtSU4NYcCuM6JNkq
	 WFbkkdDTuO+NA==
Date: Mon, 14 Oct 2024 09:05:30 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
 Heiko Stuebner <heiko@sntech.de>, Chris Morgan <macromorgan@hotmail.com>, 
 Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>, 
 linux-arm-kernel@lists.infradead.org, Tim Lunn <tim@feathertop.org>, 
 linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>, 
 Jonas Karlman <jonas@kwiboo.se>, 
 Michael Riesch <michael.riesch@wolfvision.net>, Jing Luo <jing@jing.rocks>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Jimmy Hon <honyuenkwun@gmail.com>
In-Reply-To: <20241014113026.78853-1-cenk.uluisik@googlemail.com>
References: <20241014113026.78853-1-cenk.uluisik@googlemail.com>
Message-Id: <172891445477.1127378.13874736914700071280.robh@kernel.org>
Subject: Re: [PATCH v4 1/2] arm64: dts: rockchip: Add rk3588-orangepi-5b
 device tree and refactor
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_070532_250971_7E960264 
X-CRM114-Status: GOOD (  20.58  )
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


On Mon, 14 Oct 2024 13:29:55 +0200, Cenk Uluisik wrote:
> Implements a slightly modified rk3588s-orangepi-5b.dts
> from the vendor. Unfortunately the &wireless_bluetooth
> and &wireless_wlan are not implemented yet.
> 
> Bigger parts of the rk3588s-orangepi-5.dts file were
> moved into a new rk3588s-orangepi-5.dtsi file, so
> that both device trees from the orangepi-5 and 5b
> include from it and avoid including from the .dts.
> 
> This changes the Orange Pi 5's sdmmc alias to be mmc1,
> breaking existing users if they used the /dev/mmc0 device
> file, so it's consistent with all the other rk3588 DTS,
> which, is also the new default that rockchip wants to use.
> https://github.com/orangepi-xunlong/linux-orangepi/commit/bce92d16b230b8e93c2831fb7768839fd7bbab04
> Therefore also add the sdhc alias to be mmc0 on the
> rk3588s-orangepi-5b.dts.
> 
> How does this board differ from the original Orange Pi 5?
>   - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
>     slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses combphy0_ps
>     for the WiFi.
>   - The Orange Pi 5 with the M.2 socket has a regulator defined hooked to
>     "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has GPIO0_C5
>     hooked to BT_WAKE_HOST.
>   - builtin eMMC storage
>   - no SPI NOR flash (u-boot, preboot etc. initiates
>       from within the eMMC
>       storage)
>   - ap6275p Wifi module (like the Orange Pi 5 Plus)
>   - builtin BlueTooth module
> 
> Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 798 +-----------------
>  ...orangepi-5.dts => rk3588s-orangepi-5.dtsi} |  36 +-
>  .../boot/dts/rockchip/rk3588s-orangepi-5b.dts |  27 +
>  4 files changed, 73 insertions(+), 789 deletions(-)
>  rewrite arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts (95%)
>  copy arch/arm64/boot/dts/rockchip/{rk3588s-orangepi-5.dts => rk3588s-orangepi-5.dtsi} (96%)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-orangepi-5.dtb rockchip/rk3588s-orangepi-5b.dtb' for 20241014113026.78853-1-cenk.uluisik@googlemail.com:

arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dtb: gpio-func: leds-gpio: {'rockchip,pins': [[0, 2, 0, 245]], 'phandle': 253} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dtb: vcc-3v3-sd-s0-regulator: Unevaluated properties are not allowed ('enable-active-low' was unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fixed-regulator.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
