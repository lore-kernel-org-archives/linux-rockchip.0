Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FC93E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 15:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:From:MIME-Version:Date:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZaj4Q39FmERiKWW+BsVBdg6QCut9h94lHzoV0k7hZg=; b=OSBy8MjWvYw6fT
	9TlvDh6TuuWbpX6svSSIQLjduv/02Tv6xRlQnct2QwVD7FoaVZODchw/e+qhUCaZNZZ0o8qSNHap/
	cvlPyIwgkQWbwsI1zntEY0jglENLKcWTq+mR8fUNiI2dmRb0U933gnatmCIKF3GqYhKC0KVe3A1wF
	QGMgZqXwLxru7EC/PtC6B6dM4ayJVxdxZMbtKELnAiZghteHfrDXjKOhPn7rI3RllPPx8+4ht38DP
	+tihtQ5rJ4wOWei+SHLeOhOf3fPMeQ2YvV9NXQI2DHzXifp+om70Z0/nRCyxiMSA4JjxARB1EWhgR
	YuRDAafcQlufepMHk22w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRCA3-00000000WJr-0gjV;
	Fri, 27 Dec 2024 15:21:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRC76-00000000Vlg-0JJa
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 15:18:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EE3F25C48FF;
	Fri, 27 Dec 2024 15:18:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BA45C4CEDC;
	Fri, 27 Dec 2024 15:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735312735;
	bh=5YTHa4eGEJf77KnvTKYeMSXaNSW6u8Zplgoi6QVQbqM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=QN+EisPs5fr9OHhUvbGfLiJkrkQwqGF0hURfjktsHHcKLRrGp2zVg2fWpV6R4ZG9g
	 PjBYZPdnTcNAaM3kVhnLibrqvRxUxJxguEf7hv9TtjgdLJqo9Hot7njLfAWLjp/UvN
	 3f+MjhAAkWT6HN7YLbb+NTvxA0gDnGhwYaY5DGhmKfpD5GyN8YCeG5nv3DGq+ETyab
	 mZCAQTlpXo4i1e6EDTE70D4EyibOaId8v57NUtOQt54i7XeZesRdrsYOtTfBar987c
	 pcCaJKRtCovqQAmK1mnNoH7Gu63JSvAsJjnfCe2/jLyVulYJxbM5jduA27lcRO+WNZ
	 DLz7csgJaFZlQ==
Date: Fri, 27 Dec 2024 09:18:53 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241226024630.13702-1-naoki@radxa.com>
References: <20241226024630.13702-1-naoki@radxa.com>
Message-Id: <173531253348.3886444.7367728987902291048.robh@kernel.org>
Subject: Re: [PATCH v3 0/2] rockchip: Add support for RK3582
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_071856_206543_0B4747E6 
X-CRM114-Status: GOOD (  14.97  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com, jonas@kwiboo.se, cfsworks@gmail.com, dmt.yashin@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org, dsimic@manjaro.org, marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net, macromorgan@hotmail.com, jbx6244@gmail.com, jing@jing.rocks, krzk+dt@kernel.org, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Thu, 26 Dec 2024 02:46:28 +0000, FUKAUMI Naoki wrote:
> Rockchip RK3582 is a scaled down version of Rockchip RK3588(S).
> 
> - Dual Cortex-A76 and quad Cortex-A55 CPU
> - No GPU
> - 5TOPS NPU
> - H.264/H.265 video encoder up to 4K@60fps
> 
> This patch series adds support for the Radxa E52C compact network
> computer based on the RK3582.
> 
> FUKAUMI Naoki (2):
>   dt-bindings: arm: rockchip: Add Radxa E52C
>   arm64: dts: rockchip: Add Radxa E52C
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   6 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 743 ++++++++++++++++++
>  3 files changed, 750 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3582-radxa-e52c.dtb' for 20241226024630.13702-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: leds-1: led-1:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-4-4100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-4-4100:00:link' does not match '^cpu[0-9]*$'
	'r8169-4-4100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-4-4100:00:link' does not match '^mmc[0-9]+$'
	'r8169-4-4100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: leds-1: led-1: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: leds-1: led-2:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-3-3100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-3-3100:00:link' does not match '^cpu[0-9]*$'
	'r8169-3-3100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-3-3100:00:link' does not match '^mmc[0-9]+$'
	'r8169-3-3100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: leds-1: led-2: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
