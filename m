Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D80C54734
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 08:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SVlw+XhlnfK0vXqYpQXilWrIsa7E4gwRMikaeymf3U=; b=egogJuNj8V8Wmc
	EQUEFB2daKSQq6v25AXUghFjSsnSz/9ttpGov5b/GlHCK0e8yxNRLB4KWAI4etG4djIAcf0M3fJts
	9mi6csMI+GHGsXEYmw8wRfDXLMXYpvYc9TTMH/0CBE8/M0KJYqMNU5YAQAGP5QsRhzf3Uo5Hdux6R
	TRJOh85lKtifO/2rJuVLmjU0l9RRIf8muNzp4tOmz2VmYnSPF1ZZ+S5sR/xDt0nxi2AH5w1lW0FKb
	8NPMswYxO2h7LNuUbvsQNaT6vu4QzPcCiZkokad74X2VPMDh/4xmARgUP5wh+HFoON4ztBZlwOkXa
	N8nUUyMdOdqTlRAzhDiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDtZ-0000000EVSJ-1tZC;
	Wed, 28 Aug 2024 08:19:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDsG-0000000EV8m-3UUW;
	Wed, 28 Aug 2024 08:17:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=G16Cw7bgMc7vHgddMhzU1OMDwhZPTsB9GNDj45toMmk=; b=EA3/9y6jLVDQ69JXYFMNe5CJ/b
	WVoPHoD6Q+2ZmX6uJKp3I78VVUC2+YSYXafqNQVnFGkCFIQA66rJZW16wFhI5u/gsgtZQ3Do34G2E
	M7PrCZjr6GxTLQMBJ3nWJWuwNFgu0PMu2dudypYHpcbNyLbPQrs2aoyjiZwI76fomvyYSOKe+UCLr
	XGHc7wMqjfAYwTxIc+4rMytC/geQVWc7M1ZfodEWZr1ViYZ53QSup/cJLA/O9xqPzep7u8T73NtT1
	Vk7ymorqCro1MFf6rYSAXJG7+Ea77Zs86jxiu2Q6BGrFWkEWKRft7bxTJBed07hcJ9cmLZR+2LjLz
	mjtshd6Q==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjDs1-0003fe-SE; Wed, 28 Aug 2024 10:17:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Jacobe Zang <jacobe.zang@wesion.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 asahi@lists.linux.dev, Jacobe Zang <jacobe.zang@wesion.com>,
 Muhammed Efe Cetin <efectn@protonmail.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: [PATCH v12 0/2] (no cover subject)
Date: Wed, 28 Aug 2024 10:18:46 +0200
Message-ID: <2106034.K71DO8KEF6@diego>
In-Reply-To: <20240828-dts-v12-0-80b6f240f67f@wesion.com>
References: <20240828-dts-v12-0-80b6f240f67f@wesion.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_011752_934408_0EF5C7F1 
X-CRM114-Status: GOOD (  21.72  )
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

Hi,

Am Mittwoch, 28. August 2024, 09:58:48 CEST schrieb Jacobe Zang:
> Add basic Wi-Fi support on Khadas Edge2. Wireless driver need to check "brcm,bcm4329-fmac"
> compatible so add it to Apple's devices.
> 
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
> Changes in v12:

I think that did go wrong?
The earlier version was already a v12?

Was this sent accidentially?


Heiko

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
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
