Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E670C54FAD
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 12:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IM/28t/uJFOTO2avZ8OwQrHXBVFjdMLtQhYC2xIs1Mo=; b=oilzYd7E66qsJ4sT34fSQIr2tR
	7BRme0K5pTKfBYuYRn8LPN0EQLQgaTE7LDIvp5w+cpbaEw4JP0kaTbbyPnuFkdGBAWnXUkW/oj5Zs
	/DQaFObQNmOdHuOxfSpa0CF9IE2o0PASewL2YEcs8UiczArPVqFxT9qWP8BOekgAMhzd0C1taLxCc
	ZAbRTD5qU+4h5M3QaxwspwYorHJdAQJHfqbseMu85WZpDrhz3WEpNaUMF5l8S/WfbFgjUTGgP6cJO
	9B76WxataAH4JAVOUABJVEGCY9mBIoOKQWNZVw54e+TUHkektkA9TWx/v3I3aCpS0/tSN9e/Puech
	Vbci9rvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIGl-0000000FR3u-1MbE;
	Wed, 28 Aug 2024 12:59:27 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIEt-0000000FQHk-3Qlv;
	Wed, 28 Aug 2024 12:57:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A286BA40806;
	Wed, 28 Aug 2024 12:57:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B39ECC4FF1D;
	Wed, 28 Aug 2024 12:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724849477;
	bh=TSbxJkBH805/VqkXTXpPL73x/9GZAvFJvnqNtqHAuA4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=jUW0x9PbFTtb8Bihj1gzPs9QgpnpFDocnEoGrLM2aIwsdEhIYZ0lxc7NwI9AIoww8
	 OeGZXRAV8Nuwt8Nj5/5/x63cgiDx6WWJ53XDRYq59WMQif/9JLxnUC00E1bltqkzdJ
	 IqO+bQBET9IshPXUnZteazT5/kvz9B95ECph60dAfFyVN8dyA8bpfrheKicto2c12D
	 svTu3Ckpmg522KQ5ZN2e49LtoweMUN9sSBbMG3CtdPiaGQqRSmiCFmo7dF/DCVMZpL
	 cU7Q19Boat78iQNn58A6ucFcjYa5oKP8FMgR3chtFT5ypuCrn2VkfFY9b0xfGrcUej
	 1QaoYXR8FvfmQ==
Date: Wed, 28 Aug 2024 07:51:16 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jacobe Zang <jacobe.zang@wesion.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 linux-arm-kernel@lists.infradead.org, asahi@lists.linux.dev, 
 Muhammed Efe Cetin <efectn@protonmail.com>, 
 Arend van Spriel <arend.vanspriel@broadcom.com>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
 Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240828-dts-v13-0-6bff9896d649@wesion.com>
References: <20240828-dts-v13-0-6bff9896d649@wesion.com>
Message-Id: <172484936695.3462781.6421342148961590287.robh@kernel.org>
Subject: Re: [PATCH v13 0/2] Add Wi-Fi support for Khadas Edge2 and
 fallback compatible for Apple
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_055732_513730_CA39224B 
X-CRM114-Status: GOOD (  22.43  )
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


On Wed, 28 Aug 2024 16:45:39 +0800, Jacobe Zang wrote:
> Add basic Wi-Fi support on Khadas Edge2. Wireless driver need to check "brcm,bcm4329-fmac"
> compatible so add it to Apple's devices.
> 
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
> Changes in v13:
>  - Change patch 2/2 argument from driver to bindings.
> 
>  - Link to v12: https://lore.kernel.org/all/20240828033953.967649-1-jacobe.zang@wesion.com/
> 
> Changes in v12:
>  - Add fallback compatible for Apple's devices
> 
>  - Link to v11: https://lore.kernel.org/all/20240816015214.1271162-1-jacobe.zang@wesion.com/
> 
> Changes in v11:
>  - Split DTS and submit separately
> 
>  - Link to v10: https://lore.kernel.org/all/20240813082007.2625841-1-jacobe.zang@wesion.com/
> 
> Changes in v10:
>  - Use ret instead unused probe_attach_result in sdio.c
> 
>  - Link to v9: https://lore.kernel.org/all/20240810035141.439024-1-jacobe.zang@wesion.com/
> 
> Changes in v9:
>  - Add return -ENODEV error pointer from brcmf_sdio_probe as the default for the fail path
>  - Add if statement for brcmf_of_probe in common.c
>  - Retain modifications to of.c other than the return values
> 
>  - Link to v8: https://lore.kernel.org/all/20240805073425.3492078-1-jacobe.zang@wesion.com/
> 
> Changes in v8:
>  - Add appropriate errno's for return values that will be
>     send to bus when error occurred.
> 
>  - Link to v7: https://lore.kernel.org/all/20240802025715.2360456-1-jacobe.zang@wesion.com/
> 
> Changes in v7:
>  - Change brcmf_of_probe prototypes from void to int, add appropriate errno's for return
>     value, move clock check to the end of brcmf_of_probe
>  - Add "brcm,bcm4329-fmac" compatible for wifi node
> 
>  - Link to v6: https://lore.kernel.org/all/20240731061132.703368-1-jacobe.zang@wesion.com/
> 
> Changes in v6:
>  - Move "brcm,bcm4329-fmac" check to the top of brcmf_of_probe in of.c
>  - Add return if clk didn't set in DTS
> 
>  -Link to v5: https://lore.kernel.org/all/20240730033053.4092132-1-jacobe.zang@wesion.com/
> 
> Changes in v5:
>  - Add more commit message to the clock in bindings
>  - Use IS_ERR_OR_NULL as a judgment condition of clk
> 
>  - Link to v4: https://lore.kernel.org/all/20240729070102.3770318-1-jacobe.zang@wesion.com/
> 
> Changes in v4:
>  - Change clock description in dt-bindings
>  - Move enable clk from pcie.c to of.c
>  - Add compatible for wifi node in DTS
>  - Add random seed flag for firmware download
> 
>  - Link to v3: https://lore.kernel.org/all/20240630073605.2164346-1-jacobe.zang@wesion.com/
> 
> Changes in v3:
>  - Dropped redundant parts in dt-bindings.
>  - Change driver patch title prefix as 'wifi: brcmfmac:'.
>  - Change DTS Wi-Fi node clock-name as 'lpo'.
> 
>  - Link to v2: https://lore.kernel.org/all/20240624081906.1399447-1-jacobe.zang@wesion.com/
> 
> Changes in v2:
>  - Add SoB tags for original developer.
>  - Add dt-bindings for pci14e4,449d and clocks.
>  - Replace dev_info to brcmf_dbg in pcie.c
> 
>  - Link to v1: https://lore.kernel.org/all/20240620020015.4021696-1-jacobe.zang@wesion.com/
> 
> ---
> Jacobe Zang (2):
>       arm64: dts: rockchip: Add AP6275P wireless support to Khadas Edge 2
>       arm64: dts: apple: add "brcm,bcm4329-fmac" fallback compatible
> 
>  arch/arm64/boot/dts/apple/t8103-jxxx.dtsi             |  2 +-
>  arch/arm64/boot/dts/apple/t8112-j413.dts              |  2 +-
>  arch/arm64/boot/dts/apple/t8112-j493.dts              |  2 +-
>  arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts | 16 ++++++++++++++++
>  4 files changed, 19 insertions(+), 3 deletions(-)
> ---
> base-commit: dabcfd5e116800496eb9bec2ba7c015ca2043aa0
> change-id: 20240828-dts-1b163375c49c
> 
> Best regards,
> --
> Jacobe Zang <jacobe.zang@wesion.com>
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


New warnings running 'make CHECK_DTBS=y apple/t8112-j413.dtb apple/t8112-j493.dtb rockchip/rk3588s-khadas-edge2.dtb' for 20240828-dts-v13-0-6bff9896d649@wesion.com:

arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: wifi@0,0: compatible: 'oneOf' conditional failed, one must be fixed:
	['pci14e4,449d', 'brcm,bcm4329-fmac'] is too long
	'pci14e4,449d' is not one of ['brcm,bcm43143-fmac', 'brcm,bcm4341b0-fmac', 'brcm,bcm4341b4-fmac', 'brcm,bcm4341b5-fmac', 'brcm,bcm4329-fmac', 'brcm,bcm4330-fmac', 'brcm,bcm4334-fmac', 'brcm,bcm43340-fmac', 'brcm,bcm4335-fmac', 'brcm,bcm43362-fmac', 'brcm,bcm4339-fmac', 'brcm,bcm43430a0-fmac', 'brcm,bcm43430a1-fmac', 'brcm,bcm43455-fmac', 'brcm,bcm43456-fmac', 'brcm,bcm4354-fmac', 'brcm,bcm4356-fmac', 'brcm,bcm4359-fmac', 'brcm,bcm4366-fmac', 'cypress,cyw4373-fmac', 'cypress,cyw43012-fmac', 'infineon,cyw43439-fmac']
	'pci14e4,449d' is not one of ['brcm,bcm4329-fmac', 'pci14e4,43dc', 'pci14e4,4464', 'pci14e4,4488', 'pci14e4,4425', 'pci14e4,4433']
	from schema $id: http://devicetree.org/schemas/net/wireless/brcm,bcm4329-fmac.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: wifi@0,0: Unevaluated properties are not allowed ('clock-names', 'clocks', 'compatible' were unexpected)
	from schema $id: http://devicetree.org/schemas/net/wireless/brcm,bcm4329-fmac.yaml#
arch/arm64/boot/dts/apple/t8112-j493.dtb: wifi@0,0: compatible: 'oneOf' conditional failed, one must be fixed:
	['pci14e4,4425', 'brcm,bcm4329-fmac'] is too long
	'pci14e4,4425' is not one of ['brcm,bcm43143-fmac', 'brcm,bcm4341b0-fmac', 'brcm,bcm4341b4-fmac', 'brcm,bcm4341b5-fmac', 'brcm,bcm4329-fmac', 'brcm,bcm4330-fmac', 'brcm,bcm4334-fmac', 'brcm,bcm43340-fmac', 'brcm,bcm4335-fmac', 'brcm,bcm43362-fmac', 'brcm,bcm4339-fmac', 'brcm,bcm43430a0-fmac', 'brcm,bcm43430a1-fmac', 'brcm,bcm43455-fmac', 'brcm,bcm43456-fmac', 'brcm,bcm4354-fmac', 'brcm,bcm4356-fmac', 'brcm,bcm4359-fmac', 'brcm,bcm4366-fmac', 'cypress,cyw4373-fmac', 'cypress,cyw43012-fmac', 'infineon,cyw43439-fmac']
	from schema $id: http://devicetree.org/schemas/net/wireless/brcm,bcm4329-fmac.yaml#
arch/arm64/boot/dts/apple/t8112-j493.dtb: wifi@0,0: Unevaluated properties are not allowed ('compatible', 'local-mac-address' were unexpected)
	from schema $id: http://devicetree.org/schemas/net/wireless/brcm,bcm4329-fmac.yaml#
arch/arm64/boot/dts/apple/t8112-j413.dtb: wifi@0,0: compatible: 'oneOf' conditional failed, one must be fixed:
	['pci14e4,4433', 'brcm,bcm4329-fmac'] is too long
	'pci14e4,4433' is not one of ['brcm,bcm43143-fmac', 'brcm,bcm4341b0-fmac', 'brcm,bcm4341b4-fmac', 'brcm,bcm4341b5-fmac', 'brcm,bcm4329-fmac', 'brcm,bcm4330-fmac', 'brcm,bcm4334-fmac', 'brcm,bcm43340-fmac', 'brcm,bcm4335-fmac', 'brcm,bcm43362-fmac', 'brcm,bcm4339-fmac', 'brcm,bcm43430a0-fmac', 'brcm,bcm43430a1-fmac', 'brcm,bcm43455-fmac', 'brcm,bcm43456-fmac', 'brcm,bcm4354-fmac', 'brcm,bcm4356-fmac', 'brcm,bcm4359-fmac', 'brcm,bcm4366-fmac', 'cypress,cyw4373-fmac', 'cypress,cyw43012-fmac', 'infineon,cyw43439-fmac']
	from schema $id: http://devicetree.org/schemas/net/wireless/brcm,bcm4329-fmac.yaml#
arch/arm64/boot/dts/apple/t8112-j413.dtb: wifi@0,0: Unevaluated properties are not allowed ('compatible', 'local-mac-address' were unexpected)
	from schema $id: http://devicetree.org/schemas/net/wireless/brcm,bcm4329-fmac.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
