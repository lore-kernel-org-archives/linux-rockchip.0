Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BD80D6EC05
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Nov 2024 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tkoOt594uHvQDtuLw9yNxtC65pB1h8lCaomM8jqkuuc=; b=QgYmpYwcvVr4Db
	WNDMzWSSmG4iYyIvo8eqpChfBvdCKssxBsDxWJ+rny4561upd87GGSYlXynsxV7A2NTLcsujtQqvK
	zL0e1eS8rvveaAx70GIGMCl6/3HIzMxUEoUmRWjiLcWyWdwpYBGPArV5KDH/LPaxCboq6h9cxLFoq
	8GpWyRyulsYGhL9IYTVnUh9dp0BSe6XAkIamyuoY8ESelBj7alOhlwBrzhM3v0XPFAnQ8EsVwlp0q
	URuP/qJgMjEKWzwpWD+lSaTGVVBd3R+MxcV1M1EOnRDBcelzAHTBUp3WDsDGD5rnCJ//15S31OVsm
	Z/JwIa0JdtL8DtReTXvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzzJ-000000003tc-2l9o;
	Fri, 29 Nov 2024 12:20:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzzG-000000003s4-3YJ2
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Nov 2024 12:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=W5a3HwcPTaak4cutycrCi/YaxLnuO0j5R5s4U8p5IJo=; b=2yVkBRBmkEBP0bBxu4TchU+Oiu
	8/H4rEuUVYymo0Y+ITzXhAZCR7Uk/gbYx0ycL6bKFsFpapEmEnkbZyvqiZleXy9SONyxyWW+HxDy+
	iFrDBfJ+RPW4fRMXbdsigA1rI0RsADGmK9VsGn/RQZa/nxUvl5CWIUbAhIHs5J3f7euivggAQomr6
	n0L7zlpRzKoToswfRMJS634BG+NEagUNv1iu+Q68ZwWmrJ2XfeIAzK9isNWRWJd/8Pj5nSEqQY4b3
	nCO2HtWVODuxoAKcXp41/Lmwmtfq67thI7Q34dMpVohiJ3YiwmC7FFcgCrHtVzzH+XQXu9cd3ZKZ6
	RIAI9YYw==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tGzyn-0006p4-BZ; Fri, 29 Nov 2024 13:20:13 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>, dsimic@manjaro.org, didi.debian@cknow.org
Subject: Re: [PATCH] arm64: dts: rockchip: add support for device tree overlays for
 Radxa devices
Date: Fri, 29 Nov 2024 13:20:12 +0100
Message-ID: <1952472.6tgchFWduM@diego>
In-Reply-To: <20241129002419.60404-1-naoki@radxa.com>
References: <20241129002419.60404-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_042042_906675_A4B9E31F 
X-CRM114-Status: GOOD (  16.83  )
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

Hey,

Am Freitag, 29. November 2024, 01:24:19 CET schrieb FUKAUMI Naoki:
> since Radxa devices use device tree overlays[1][2][3], make base .dts
> support them.

this essentially doubles the sizes of generated DTBs.

In previous iterations there were concerns that this might overload
allocated memory in legacy firmware that might still run on people's
devices.

I'm not sure if someone did look deeper into that meanwhile and you
can't of course not require people to update u-boot just for a kernel
upgrade. Hence previous overlays do not enable those options but instead
depend on "distributions" to handle that.

So I'm definitly not sure how to proceed with this.


Heiko

> [1] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> [2] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
> [3] https://github.com/radxa-pkg/radxa-overlays
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile | 28 +++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 86cc418a2255..cac3f39af82a 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -1,4 +1,32 @@
>  # SPDX-License-Identifier: GPL-2.0
> +
> +# Enables support for device tree overlays for Radxa devices
> +DTC_FLAGS_rk3308-rock-pi-s := -@
> +DTC_FLAGS_rk3308-rock-s0 := -@
> +DTC_FLAGS_rk3328-rock-pi-e := -@
> +DTC_FLAGS_rk3399-rock-4c-plus := -@
> +DTC_FLAGS_rk3399-rock-4se := -@
> +DTC_FLAGS_rk3399-rock-pi-4a-plus := -@
> +DTC_FLAGS_rk3399-rock-pi-4a := -@
> +DTC_FLAGS_rk3399-rock-pi-4b-plus := -@
> +DTC_FLAGS_rk3399-rock-pi-4b := -@
> +DTC_FLAGS_rk3399-rock-pi-4c := -@
> +DTC_FLAGS_rk3399pro-rock-pi-n10 := -@
> +DTC_FLAGS_rk3528-radxa-e20c := -@
> +DTC_FLAGS_rk3566-radxa-cm3-io := -@
> +DTC_FLAGS_rk3566-radxa-cm3.dtsi := -@
> +DTC_FLAGS_rk3566-radxa-zero-3e := -@
> +DTC_FLAGS_rk3566-radxa-zero-3w := -@
> +DTC_FLAGS_rk3566-rock-3c := -@
> +DTC_FLAGS_rk3568-radxa-cm3i.dtsi := -@
> +DTC_FLAGS_rk3568-radxa-e25 := -@
> +DTC_FLAGS_rk3568-rock-3a := -@
> +DTC_FLAGS_rk3568-rock-3b := -@
> +DTC_FLAGS_rk3588-rock-5-itx := -@
> +DTC_FLAGS_rk3588-rock-5b := -@
> +DTC_FLAGS_rk3588s-rock-5a := -@
> +DTC_FLAGS_rk3588s-rock-5c := -@
> +
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
