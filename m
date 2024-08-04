Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BC71C3DA64
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 05:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Twq+96tXxeMR95528jRwJAs+yiwTU15MBPyrWEef6aw=; b=18hwQ1h/A6t2mHz9tRup4un81Z
	ouzkHvS3t6rPlmG9Ws6T8sDYA7AK59s4jQPYZ1jKWwG4TjkcV9KTrZ2hhjcP5TofLZeLjQI/PEVrq
	S5F0HfO0CmI7phsA+YRXe9Hzdk2/6KyHNHL//wKnxJDwT5Fj55jEhh64bjA+EpU9r8utFCLOvXS+1
	HOkBy34PduG3mEhs6VIHWvR1qyrvZeWAxvGRu5FnDU2PEeWqSc8plps+PsBQJpXDuKx8DYOYS1nPp
	cmHL1qlHPbmPxjh3i+uIxPKzDuUl6njYyL5bEuorGNHb2ztEc9D9PVSHqC+Xj87aQFZPEuDzEfgJI
	HIQdb7mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saU4z-0000000Chyr-30NS;
	Sun, 04 Aug 2024 05:46:53 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saTzA-0000000CgR7-1hCG;
	Sun, 04 Aug 2024 05:40:55 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722750047;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+tX3JvGIYlx8csPMqWm0u4u7fIhbdLPz4xTLWRhyYx0=;
	b=c6oCsVeP2bTK+Msyv/P1exnF7+kUkx5p/WsUrZWotPvOa0XmVdPIp8kE072+nTtYRWrryN
	I06nFgWlycEFyp1DRJIyl2Ldew5Yun727GhOBdSKh7jus5zaB9gMkrmEauZN1Rct+71Q90
	CeRQ0WK2CEp4YQSGJ+OtEDNmuwlIZwTwzU/6QJCSb07ew5Qz8lcx6FtB/s6Bt0HSFAMZHL
	R8FZEXa7EDaEkyJJqblMJyphyylrN9yICfB8p1lAYW/vmipoLqsIePcWqYjkqpPaMOtR7L
	PLqd++Wx/FZhP53R19siZulStRSMqu7B9QVLz3dXxgIR8rNVgpiXTIM62jkQrQ==
Date: Sun, 04 Aug 2024 07:40:43 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Jonas
 Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, Andy Yan
 <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>, Jagan Teki
 <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH 0/4] Add initial support for Rockchip RK3528 SoC
In-Reply-To: <20240803125510.4699-2-ziyao@disroot.org>
References: <20240803125510.4699-2-ziyao@disroot.org>
Message-ID: <0c77f99f4af96807a2a8c3028e3c1d4d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_224053_251132_A81301D7 
X-CRM114-Status: GOOD (  13.40  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello all,

On 2024-08-03 14:55, Yao Zi wrote:
> Rockchip RK3528 is a quad-core ARM Cortex-A53 SoC designed for
> multimedia application. This series add a basic device tree with CPU,
> interrupts and UART nodes for it and is able to boot into a kernel with
> only UART console.
> 
> Has been tested on Radxa E20C board[1] with vendor U-boot, successfully
> booted into initramfs with this log[2].

I wonder will at least the RK3528 datasheet become available publicly?

> [1]: https://docs.radxa.com/en/e/e20c
> [2]: https://gist.github.com/ziyao233/b74523a1e3e8bf36286a572e008ca319
> 
> Yao Zi (4):
>   dt-bindings: serial: snps-dw-apb-uart: Document Rockchip RK3528
>   dt-bindings: arm: rockchip: Add Radxa E20C board
>   arm64: dts: rockchip: Add base DT for rk3528 SoC
>   arm64: dts: rockchip: Add Radxa e20c board
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../bindings/serial/snps-dw-apb-uart.yaml     |   1 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  22 +++
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 182 ++++++++++++++++++
>  5 files changed, 211 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528.dtsi
> 
> 
> base-commit: 94ede2a3e9135764736221c080ac7c0ad993dc2d

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
