Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E3CCC27C4F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 17:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3leXf7JedrqFz46zf+/fe3zwcB/rHUprm8YLq6/3Bx0=; b=3Tk/elcHYroXMOcZwAPrZy0Wt1
	PsFXboP+2bht2hK7wmGYU7NvknjAp8AxGKNRTFpQoC9nhHZjHgUxX8TT2Szdwq4G/kvpsWaJ5egvR
	qFHiwi97ucMRXY64jt6o7PXKmkow+vSSPgdWYtYnn8uzvLCVMze4eSFzvY9g5dINk/bCSNO+I7VmY
	XO+seqz24paEEkpON6MvXKQFbHWdvh5/5pPvHhLBI2IY1pUKRHypjdaLDI2JI68zxFYHTXwaYRqqg
	vhUwz023RQyI9pZ7p4RohW2HBhcAMR4TeW56NnfMMTYg0Sk+MKsKmKrKq2Zx2mTd23WjVxUmnkTSI
	9XfSR+1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHoEK-0000000HWdF-1ZS4;
	Thu, 13 Jun 2024 17:27:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHoEG-0000000HWbP-2va0;
	Thu, 13 Jun 2024 17:27:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D7D7A61BC4;
	Thu, 13 Jun 2024 17:27:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 537E7C2BBFC;
	Thu, 13 Jun 2024 17:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718299635;
	bh=QmGHUd+e/PjYuv8/57wzZ877J2mB2nvVZfL6iFjG7tM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=BiGYcrq4OSaFZAawU5+kEhyxy5h9CTqza9TtHfxn3ERWJgkMm1uufUVzzRyJeWQKN
	 mMioEzlk1qcVFL6eZfhz19bNI0MTTChoFv716sLJH34QBE0BmkyDRv2s4EAPhxeUWq
	 d0mGe/ptW83ZDRpc4bnZzH+9D+6a8SSHzHG9czpVmDl2tgTwYXQQ6AFaOLOL4o4jPA
	 r0869V14us0L+/UtZ/SoWWiZMvJMetGEPXIWTX4WYR5zKlg3uIQJAuNEUdE5Decbly
	 /FZK2DrIe2JU8KAw1R7RGuYzLkG9VSHyVXVGYGdNUfm5E0dRkRkYbqv4aDv5i6YSHX
	 Ji+9V66juyIRA==
Date: Thu, 13 Jun 2024 11:27:14 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sebastian Kropatsch <seb-dev@mail.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 devicetree@vger.kernel.org
In-Reply-To: <20240612205056.397204-1-seb-dev@mail.de>
References: <20240612205056.397204-1-seb-dev@mail.de>
Message-Id: <171829929814.2050024.4291220614091376028.robh@kernel.org>
Subject: Re: [PATCH 0/5] Refactor, fix and improve NanoPi R6 series
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_102716_886246_BFF9677D 
X-CRM114-Status: GOOD (  19.75  )
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


On Wed, 12 Jun 2024 22:48:09 +0200, Sebastian Kropatsch wrote:
> Hello,
> 
> This patch series fixes a lot of minor issues in the current devicetree
> for the FriendlyElec NanoPi R6 series (R6C and R6S), as well as adding
> support for the GPU and one USB3 port which was previously disabled.
> 
> To aid with these patches, I have refactored the devicetrees in such a
> way that they will now share a common dtsi source file in a similar
> fashion than what the NanoPi R5C and R5S are already doing.
> This makes changes which only affect one of the boards easier, less
> error-prone and more maintainable. Also we don't need to work with
> /delete-node/ and /delete-property/ this way :)
> 
> Cheers,
> Sebastian
> 
> PS: Additional comments in patch 2 and 3.
> 
> ---
> 
> Sebastian Kropatsch (5):
>   arm64: dts: rockchip: Add common definitions for NanoPi R6C and R6S
>   arm64: dts: rockchip: Fix regulators, gmac and naming on NanoPi
>     R6C/R6S
>   arm64: dts: rockchip: Improve LEDs on NanoPi R6C/R6S
>   arm64: dts: rockchip: Enable lower USB3 port on NanoPi R6C/R6S
>   arm64: dts: rockchip: Enable GPU on NanoPi R6C/R6S
> 
>  ...-nanopi-r6s.dts => rk3588s-nanopi-r6.dtsi} | 242 +++---
>  .../boot/dts/rockchip/rk3588s-nanopi-r6c.dts  |  48 +-
>  .../boot/dts/rockchip/rk3588s-nanopi-r6s.dts  | 743 +-----------------
>  3 files changed, 193 insertions(+), 840 deletions(-)
>  copy arch/arm64/boot/dts/rockchip/{rk3588s-nanopi-r6s.dts => rk3588s-nanopi-r6.dtsi} (81%)
> 
> --
> 2.43.0
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-nanopi-r6c.dtb rockchip/rk3588s-nanopi-r6s.dtb' for 20240612205056.397204-1-seb-dev@mail.de:

arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: leds: led-1:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'stmmac-0:01:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'stmmac-0:01:link' does not match '^cpu[0-9]*$'
	'stmmac-0:01:link' does not match '^hci[0-9]+-power$'
	'stmmac-0:01:link' does not match '^mmc[0-9]+$'
	'stmmac-0:01:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: leds: led-1: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: leds: led-2:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-3-3100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-3-3100:00:link' does not match '^cpu[0-9]*$'
	'r8169-3-3100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-3-3100:00:link' does not match '^mmc[0-9]+$'
	'r8169-3-3100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: leds: led-2: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: leds: led-1:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'stmmac-0:01:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'stmmac-0:01:link' does not match '^cpu[0-9]*$'
	'stmmac-0:01:link' does not match '^hci[0-9]+-power$'
	'stmmac-0:01:link' does not match '^mmc[0-9]+$'
	'stmmac-0:01:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: leds: led-1: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: leds: led-2:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-3-3100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-3-3100:00:link' does not match '^cpu[0-9]*$'
	'r8169-3-3100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-3-3100:00:link' does not match '^mmc[0-9]+$'
	'r8169-3-3100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: leds: led-2: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: leds: led-3:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-4-4100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-4-4100:00:link' does not match '^cpu[0-9]*$'
	'r8169-4-4100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-4-4100:00:link' does not match '^mmc[0-9]+$'
	'r8169-4-4100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: leds: led-3: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
