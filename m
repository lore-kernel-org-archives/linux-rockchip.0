Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7247FC48BE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 13:08:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F1CA061205
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 13:08:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F1CA061205
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NB0Hw2DLflTukqBbJCvoE8gnyi/5So0xQYyyakyNiqI=; b=PZc4+pfl+YiyX6
	buegxwhmvbC1/k9s/rlM59hw1Lq5rSI4fnRlIbt1HO9sWb3nhh80RyuCN06532juX4wPERHItQ8/o
	RHWYxaXCkVIyRxcuSTolixyx5aNgOU1nbQQj85g+GLhzEOyt8tVGgU9H0GlTJveMhJLibcC2h9F09
	R83Dz6wlh54AMQZwQ1n6aWMe68tULgdGzgnK5EJZduxaSfOa2mNlWBegztwpD/mvTNNJF5G4xJS+Z
	R9OJo4eTGnBGpzE86gZHoIcXvtaJUiXkrdiSlt81O2o08f7fXvvti0kA94LyLAP/i5nwaZ9avkF8/
	fnprDfdQT4Oo5qakQLvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luEEf-00E7gy-GY; Fri, 18 Jun 2021 13:08:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luEEd-00E7gV-7n; Fri, 18 Jun 2021 13:08:36 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1luEEZ-00022y-QZ; Fri, 18 Jun 2021 15:08:31 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add RK3399 Rock Pi 4a plus board
Date: Fri, 18 Jun 2021 15:08:31 +0200
Message-ID: <4545451.QWXsJ6tzlI@diego>
In-Reply-To: <20210617044955.598994-2-knaerzche@gmail.com>
References: <20210617044955.598994-1-knaerzche@gmail.com>
 <20210617044955.598994-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_060835_339926_5F192F92 
X-CRM114-Status: GOOD (  22.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Am Donnerstag, 17. Juni 2021, 06:49:54 CEST schrieb Alex Bee:
> Rock Pi 4a plus board is the successor of Rock Pi 4a board.
> 
> Differences to the original version are
> - has RK3399 OP1 SoC revision
> - has eMMC (16 or 32 GB) soldered on board (no changes required,
>   since it is enabled in rk3399-rock-pi-4.dtsi)
> - dev boards have SPI flash soldered, but as per manufacturer response,
>   this won't be the case for mass production boards
> 
> I didn't add yet another compatible, since the small set of differences
> are captured by the device tree.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile              |  1 +
>  .../boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts   | 14 ++++++++++++++
>  2 files changed, 15 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index c3e00c0e2db7..dbd7d37950f1 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -43,6 +43,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4a-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
> new file mode 100644
> index 000000000000..2deaab7f9307
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a-plus.dts
> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Akash Gajjar <Akash_Gajjar@mentor.com>
> + * Copyright (c) 2019 Pragnesh Patel <Pragnesh_Patel@mentor.com>
> + */
> +
> +/dts-v1/;
> +#include "rk3399-rock-pi-4.dtsi"
> +#include "rk3399-op1-opp.dtsi"
> +
> +/ {
> +	model = "Radxa ROCK Pi 4A plus";
> +	compatible = "radxa,rockpi4a", "radxa,rockpi4", "rockchip,rk3399";

hmm, I don't really follow why you're re-using the radxa,rockpi4a
compatible. I'd assume this should be radxa,rockpi4a+ or something?

I.e. if a bootloader needs to select the matching devicetree from a list
of available devicetrees, this could end up running a regular rockpi4a
(without +) using the OP1 operating points and thus at way too high
frequencies.


Heiko


> +};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
