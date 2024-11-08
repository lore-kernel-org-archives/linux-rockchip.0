Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E44A5D64074
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 17:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/C0GaTMbZstSY9HIjBejakOKaPz9WVvYZ007cJpQ5/0=; b=bhaDe2ronOtej0q8iHcXYjECPG
	LPWkgk8hC9l9DWEfECTEdCCqNP0JpDYKRRsCiwGErVBJuogZVVc4o6xB1MTPrTw4c6M+u75U/iWt+
	+6niyj14PJj0tZFXlsZRy49suAh3djFowIeO8ZpSgKQNtJq7dGdWY2Q0HjoBf6MxC+OSGH+iHEbLA
	TxCvTH9YT615oaEWXgMJsgoOuzNuD9wV4bPoPwFuSPVGQbFsMNtXwsVcaoGlWwWdcBygvmqhFLYLJ
	oZ2+4lsXseuuBmAVH3s/OlWGSoadhGqy2d+HiSX8lNeMRGCLXxfYtW8UiDBQgJ7ExtVQuXUPi+xQV
	ki39q/4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9T4S-0000000BTQI-3fQK;
	Fri, 08 Nov 2024 17:46:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9R4l-0000000B3sf-3Iop;
	Fri, 08 Nov 2024 15:39:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 285FC5C5C9B;
	Fri,  8 Nov 2024 15:38:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3653CC4CECD;
	Fri,  8 Nov 2024 15:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731080346;
	bh=KT2dAWjXA9NMpRhfbfW5C2O9VQR+4LIDwzYJziTxKsE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=R19ORny+GXiSW78nbHyYvvhMTMgiAabRb3pWyM4iE8Vf89/slkYk1Y8BUpojMURgC
	 m4HAUuMkP2GljDJ1q3e9baivK6wVWADdP8BP1ZrOLbhIyghSoP4smcJRX7Iz88sq5j
	 Ab0QHP1djW1Ml1b5aJPnmpyzwDXXKNGh/c4ADayc61UiTuW8jrG5nIm33BEirQlzn7
	 ZKkpfvxr1eS/++nJqWf6VAZcvzH5geSxSda666Uz2p6YdA5h5RUHPv7FKjwDP7pk9P
	 zdS7J51KpXlFXRfO90yq9f8h+sIMS2+AQuZFIPjtaWeIy3HtqMIUQdGoGxtIKCJUGE
	 g7Kg7vca8GWfg==
Date: Fri, 08 Nov 2024 09:39:04 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: Dragan Simic <dsimic@manjaro.org>, Conor Dooley <conor+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>, 
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>
In-Reply-To: <20241108031847.700606-1-bigfoot@classfun.cn>
References: <20241108031847.700606-1-bigfoot@classfun.cn>
Message-Id: <173108022869.2219990.8289858768145189769.robh@kernel.org>
Subject: Re: [PATCH v5 0/3] Add support for Ariaboard Photonicat RK3568
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_073907_938477_59A410EB 
X-CRM114-Status: GOOD (  17.84  )
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


On Fri, 08 Nov 2024 11:18:44 +0800, Junhao Xie wrote:
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
> Changed from v1:
> - move some general nodes (firmware, ramoops, reboot-mode) to rk356x.dtsi
> - gmac1 change to phy-mode rgmii-id
> - corrected some regulator to be closer to schematics
> - rename rk3568-ariaboard-photonicat.dts to rk3568-photonicat.dts
> https://lore.kernel.org/lkml/20240904111456.87089-1-bigfoot@classfun.cn/
> 
> Changed from v2:
> - remove unused headers
> - corrected some regulator to be closer to schematics
> - remove usb_host1_ohci, usb_host1_ehci, usb2phy1_host that have no connection
> https://lore.kernel.org/lkml/20240906045706.1004813-1-bigfoot@classfun.cn/
> 
> Changed from v3:
> - corrected some regulator to be closer to schematics
> - changed to using clk32k_out1 in xin32k
> https://lore.kernel.org/lkml/20240911122809.1789778-2-bigfoot@classfun.cn/
> 
> Changed from v4:
> - corrected some regulator to be closer to schematics
> - corrected some label to match node name
> - use resets props in phy node instead deprecated snps,reset-gpio
> https://lore.kernel.org/lkml/20240914145549.879936-1-bigfoot@classfun.cn/
> 
> Junhao Xie (3):
>   dt-bindings: vendor-prefixes: Add prefix for Ariaboard
>   dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
>   arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3568-photonicat.dts   | 600 ++++++++++++++++++
>  4 files changed, 608 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
> 
> --
> 2.47.0
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3568-photonicat.dtb' for 20241108031847.700606-1-bigfoot@classfun.cn:

arch/arm64/boot/dts/rockchip/rk3568-photonicat.dtb: bluetooth: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/net/bluetooth/qualcomm-bluetooth.yaml#
arch/arm64/boot/dts/rockchip/rk3568-photonicat.dtb: phy@fe8c0000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3568-photonicat.dtb: rfkill-modem: 'reset-gpios' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/net/rfkill-gpio.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
