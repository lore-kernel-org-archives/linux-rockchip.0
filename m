Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E63A7E7718B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 12:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lZBxC6n4G+edr3Xvbotdb142ETGi6O1XS6Mw2nRQs8c=; b=MLAPJk5JsnStS2h9xaPV6Md7DN
	9uMAdnfFzGB0+7tbidNgWXLs2qTAfH+hGTNC51SLxQKQFuntdJMxuRTe+qdHBOyVGPuvx4ZeT9Eye
	tqmkmigSjMWanL5gX4Dmit1Ob8TuL5xlfYYHFkxEejR0QqBmv5bGNzdIqGTGCXrNga6m/vv9q+gKp
	JtUSpVtdxbJc1qApbR0yOqskba9TyShhYpZ7uvwXflYouMAH5A2oeNeCkJrkcX47S2mlea9TGT4P9
	BhtKrzeKMe9gEoEqvZ6IF/YnZYvXzND2uPalcL70FNldauEBPyaBHyJ92RRtU4+plcEKUbzGxXiW4
	cY4ccsuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPhy1-0000000A1CB-1qtQ;
	Mon, 23 Dec 2024 12:55:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPhv6-0000000A0nZ-140H;
	Mon, 23 Dec 2024 12:52:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7CA105C58E0;
	Mon, 23 Dec 2024 12:51:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3E48C4CED3;
	Mon, 23 Dec 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734958343;
	bh=DZLOOBiciJyhBDbKsGMbSYPglw0YxTgZsF13HIoYz+M=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=nbcVR4s6J3hbdtJ9pz2NUcqJSVhM2pStEpJ0Pwzw1QiQvpS9Jz63F0VCghs0zpkjS
	 UQg5VIhMx+Ck8WYPRy97+PfuwVCCm/onNwk1kWnSw08v2koP7NHThRg+xfssOgZ2WV
	 Zjex9HxkPbwqQPT4T7V6y4jRjd0MrxvGE6GB/yybVzC5AZ1V9tQvJh1e4tEEL+/E/Y
	 U4gI3+Huui1A7SSwOCj6/RST2iURB/SHYhNnAsvJ5Ym4Yt3LMkRykum3dVs3R0so2J
	 MUkkFKTkodryU/Z8Aj/I1PdDGbmRg5nYRNNEQ2vT/DyiAg0QJS1b/WGazZ/r9RQogB
	 PVrtDFaZQ1Qeg==
Date: Mon, 23 Dec 2024 06:52:21 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: tglx@linutronix.de, liujianfeng1994@gmail.com, heiko@sntech.de, 
 marcin.juszkiewicz@linaro.org, krzk+dt@kernel.org, tim@feathertop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 macromorgan@hotmail.com, conor+dt@kernel.org, jonas@kwiboo.se, 
 sebastian.reichel@collabora.com, andyshrk@163.com, dmt.yashin@gmail.com, 
 jbx6244@gmail.com, maz@kernel.org, alchark@gmail.com, dsimic@manjaro.org, 
 linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241222030355.2246-1-naoki@radxa.com>
References: <20241222030355.2246-1-naoki@radxa.com>
Message-Id: <173495825045.503766.3208217124829960779.robh@kernel.org>
Subject: Re: [PATCH 0/3] rockchip: Add support for RK3582
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_045224_382885_E1E13546 
X-CRM114-Status: GOOD (  14.99  )
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


On Sun, 22 Dec 2024 03:03:52 +0000, FUKAUMI Naoki wrote:
> Rockchip RK3582 is a scaled down version of Rockchip RK3588(S).
> 
> - Dual Cortex-A76 and quad Cortex-A55 CPU
> - No GPU
> - 5TOPS NPU
> - H.264/H.265 video encoder up to 4K@60fps
> 
> This patch series adds RK3582 support to the GIC and the Radxa E52C
> compact network computer.
> 
> FUKAUMI Naoki (3):
>   irqchip/gic-v3: Enable Rockchip 3588001 erratum workaround for RK3582
>   dt-bindings: arm: rockchip: Add Radxa E52C
>   arm64: dts: rockchip: Add Radxa E52C
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 729 ++++++++++++++++++
>  drivers/irqchip/irq-gic-v3-its.c              |   3 +-
>  4 files changed, 737 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3582-radxa-e52c.dtb' for 20241222030355.2246-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: adc-keys: 'key-vendor' does not match any of the regexes: '^button-', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/input/adc-keys.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: pwm-leds: led-1:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-4-4100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-4-4100:00:link' does not match '^cpu[0-9]*$'
	'r8169-4-4100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-4-4100:00:link' does not match '^mmc[0-9]+$'
	'r8169-4-4100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: pwm-leds: led-1: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: pwm-leds: led-2:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-3-3100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-3-3100:00:link' does not match '^cpu[0-9]*$'
	'r8169-3-3100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-3-3100:00:link' does not match '^mmc[0-9]+$'
	'r8169-3-3100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: pwm-leds: led-2: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
