Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58DE3E6FE46
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ArJmr5nWd/vYq2NK48nv9eytpNX4zqJSVmgO0FDBP8c=; b=v2LvnkeTAqwetfv83NtK1KqCZS
	xvgPzZ9w0UNTfFA7TtCAu9398gzkcnkTnXFKCcmshYDZIexpnr2+VO+ppz694uG6vvWvkl/eX4X/0
	ym8SeWY2JBUE8gToV6zV2fFDmhW32dto9zwdrKMBGeV/83VQ7PBm+Iltkx6OWvmLMXu4YojBXaH3s
	v7esf2+I9joRDACEkHIz+VKvT3JXzlH0yhH5FXYt0+1yNd/uMCFrDgtMVLM/Jpp3iY3NzHcV40qAv
	3OVAEcDu8UXLXACHIMWXKh9VlzMOTYkEkxEFxNVDdlAKI0AuLcEEwfc8yn8kWfvxsssDA8OztRtAt
	jToeJogw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smen8-0000000DRuq-2jxN;
	Fri, 06 Sep 2024 19:38:46 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smem6-0000000DRfB-33JS;
	Fri, 06 Sep 2024 19:37:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DEEF7A4528E;
	Fri,  6 Sep 2024 19:37:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B79E2C4CEC4;
	Fri,  6 Sep 2024 19:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725651460;
	bh=/gQVnhBcmD3QxeQHO0/3XmA2xRdVRLa4Aw/l+eidKOE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=jVNyp0soCew9Hfm+BeUEMc/ns9Gb80ux/ROoM0TTwcRqgsJXF5LoK4APuKU9kJ8i+
	 ZLD3/YljHH8H3Jnjd1h5kEJNDatEu2dAxS45OEEKUjtLLyDswA3Rr2F1GkxHS3jWPp
	 YiFd93NNKq4gOqqHhKgOHjW2mqUIuKL8YbaCkNG7YcBoyoIpdby+iJcHJq2ML5vNd2
	 hE77NWCiQA/YDbwPZ2gUpSWB10PA48jruX620hcEqqemOLbwG9XQID4afAuTyDE8ZJ
	 xX/v8DdtH67hpOk4pc6G668vpHFlDd2jwO13OQr9VWoPcrTu/J6VKSTFAf9QSBESGk
	 PNPZIEfP+Wa9A==
Date: Fri, 06 Sep 2024 14:37:39 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>, 
 Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
 devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240906045706.1004813-1-bigfoot@classfun.cn>
References: <20240906045706.1004813-1-bigfoot@classfun.cn>
Message-Id: <172565139759.2035112.3019218754029920923.robh@kernel.org>
Subject: Re: [PATCH v2 0/3] Add support for Ariaboard Photonicat RK3568
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_123742_914990_2521DA87 
X-CRM114-Status: GOOD (  14.73  )
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


On Fri, 06 Sep 2024 12:57:03 +0800, Junhao Xie wrote:
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
> Junhao Xie (3):
>   dt-bindings: vendor-prefixes: Add Shanghai Novotech Ariaboard
>   dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
>   arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3568-photonicat.dts   | 595 ++++++++++++++++++
>  4 files changed, 603 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3568-photonicat.dtb' for 20240906045706.1004813-1-bigfoot@classfun.cn:

arch/arm64/boot/dts/rockchip/rk3568-photonicat.dtb: bluetooth: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/net/bluetooth/qualcomm-bluetooth.yaml
arch/arm64/boot/dts/rockchip/rk3568-photonicat.dtb: phy@fe8c0000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml
arch/arm64/boot/dts/rockchip/rk3568-photonicat.dtb: rfkill-modem: 'reset-gpios' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/net/rfkill-gpio.yaml






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
