Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47AEEC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Aug 2024 13:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjlW26662bb1HBHJVjpooVcOMCK5lStMPS50Ib5kcdo=; b=kk5kfQqNuF5eHo
	q1e2/4xO6EF5ne4t3LGHq126hwdntG+X82W1yu+Mcm32ixMv7RXnxneyAHMoSktgJN+hNp8NR8jhw
	qwV9ZDyEju7yD1GubkmYwcD1Lpf/1iPG6ZWt0SdYoN1H/FMgFMW8MAaP+Rl1orRP2ZjUh7hdm3Aqu
	5YND7wh4S1NR0/QLOR3ynRdEIptyFFVgjirmEtuXEc/JlCSKAO6kygGfw/sLZrult7nLeEbpLgeQh
	bUwDZ2sN7xp2Cr8t6UEVOXnZHuidV43rZmaJPjmKfK/wS3zd+TXSZBwVmrEhRcwvXXQ3wWRVEj8hV
	cqIzSfvIxLHvcnNOpn/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saFCV-0000000BVNy-3eUM;
	Sat, 03 Aug 2024 13:53:39 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saFBz-0000000BVH8-0XVq;
	Sat, 03 Aug 2024 13:53:08 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8D4BF40D5C;
	Sat,  3 Aug 2024 15:53:05 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FuwoRZpePIE6; Sat,  3 Aug 2024 15:53:04 +0200 (CEST)
Date: Sat, 3 Aug 2024 21:52:25 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1722693184; bh=bk7/OnAhj274Gt5seZW+zqWCGaoFoFkkGV82e3GwOrk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gOgkOQJpxMfbXYQd8qL7FCNVf7zizoNVInDiTebd67Uk70rmq/VjfEF28HdK69pUK
	 XlAU+DqegjVRtbXasANSLLNva59LJHAihKT5fruTZ2dHCEcyNQSRjdmM9tMISLCH44
	 c0GjDhTJjoYxufwo0oteneTEglmbPeh/fn1NiePkGhCX0qVRspvSksmx/Rsh1JZp8s
	 RKW+ek/xqJ6MaCFlXVTvag79wkI+/lfWnQOTeIkCzvaQhvUOOWQLE+x1hedu/HIHjz
	 32G4nDQKzG3T2/WpKq9Ej6j1JHYx7w/5wK2w5lc1wQZz1s7MobgJyqBLOq8l9rwU+T
	 xWwSVOeh0v78A==
From: Yao Zi <ziyao@disroot.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add Radxa e20c board
Message-ID: <Zq41xr3fYoXqLjIF@ziyaolaptop.my.domain>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <20240803125510.4699-6-ziyao@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240803125510.4699-6-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_065307_328986_DCD77472 
X-CRM114-Status: GOOD (  17.83  )
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

On Sat, Aug 03, 2024 at 12:55:11PM +0000, Yao Zi wrote:
> Add board-level device tree for Radxa e20c board[1]. This basic
> implementation supports boot into a kernel with only UART console.
> Other features will be added later.
> 
> [1]: https://docs.radxa.com/en/e/e20c
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 22 +++++++++++++++++++
>  2 files changed, 23 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index fda1b980eb4b..ecdd767d0323 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -74,6 +74,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-radxa-e20c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg-arc-d.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg-arc-s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> new file mode 100644
> index 000000000000..534bd47e9971
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (c) 2020 Rockchip Electronics Co., Ltd
> + * Copyright (c) 2024 Radxa Limited
> + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> + */
> +
> +/dts-v1/;
> +#include "rk3528.dtsi"
> +
> +/ {
> +	model = "Radxa E20C";
> +	compatible = "radxa,e20c", "rockchip,rk3528";
> +
> +	chosen {
> +		stdout-path = "serial5:115200n8";

There is an error, stdout-path should be "serial0:1500000n8".
Sorry for my mistake, will be corrected in next revision.

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
