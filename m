Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C96CCF2576
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Oct 2024 18:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wzSaF2JYN/9vLwGWROEzP88dnpQkcGDDPOcxc6tiNNc=; b=ncKUR9D2zBl1n6
	BvuaS0T6HLEbiNgXtU36KZuR7mkc5rCtw3CcOSbAS2EXiOZJZXnEXfr00pJQr/ZAYn+sS5fhtoJxQ
	TpxHLOs3jtRMJyO9RrWdHgVbtDpMEe0wNq0A5REriMD1l6hINYTfyxuifm8qfdRMXhU6gzUAfFJ9A
	3ndFt95NHqS8sQCR8G6I4B4aiROf3T3wyof2nuewIRx861gomY8PCSUfGT+I1cPT/suzb2Xax1Q1T
	3Z/t2TI3m5D51VYxxYuChzhSrf/EGN+bJ1O0iePm462rCSsdIW8RbDrwddcLVFGHWB/ajJFeaM2kC
	ZSf18E2f/hlWHUSkZhfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t03Eo-000000032Wc-382p;
	Sun, 13 Oct 2024 18:22:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t03DQ-000000032Qt-1gqQ;
	Sun, 13 Oct 2024 18:21:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=P95hhQv9EQTGpPqL3cZ9sFDz6v/d/ZsXagWbz/otrCs=; b=xYDjiaJAOFIhyaZwMcxn6Ta/WW
	RP9ZRqWAiE34BWiUeYDeDT1g2MgRC36HODTaCwRHC5xZO/URi0N4AZnG0c4udP3pgVwdExrGEDLui
	Yk4+glouMCI6szXes9wpTm5dQAXVUL9r9QScr0AlEJGyfLwXQK2kcRhkBsH2IbDHmdckjdeygtsVT
	UsVsTcA47t9z1SJp+TKb3/Ic+I+0w6qtXl9VHSJZd7I5crmcwbZ6M9iqjRxvB6Ro79Wxu4TYn2k1Z
	a417Ls3pl9qLHIBXd/1PaFUWvXBqoGQ91pOqwOTh3wz1+w9OOGjYMrLSE8bSi3cYjRDOZpCejyOvQ
	jApfeTbQ==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t03DA-0000r1-1Q; Sun, 13 Oct 2024 20:21:00 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Andy Yan <andyshrk@163.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Cenk Uluisik <cenk.uluisik@googlemail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Cenk Uluisik <cenk.uluisik@googlemail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add board device tree for
 rk3588-orangepi-5b
Date: Sun, 13 Oct 2024 20:20:58 +0200
Message-ID: <4956547.31r3eYUQgx@diego>
In-Reply-To: <20241013155225.26259-1-cenk.uluisik@googlemail.com>
References: <20241013155225.26259-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_112116_498866_410D5112 
X-CRM114-Status: GOOD (  20.94  )
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

Am Sonntag, 13. Oktober 2024, 17:52:18 CEST schrieb Cenk Uluisik:
> Add initial support for OPi5b that includes support for USB2, PCIe2, Sata,
> Sdmmc, SPI Flash, PMIC.

Please describe in a better way what actually makes this board different
from the original OrangePi 5.

I.e. it does look like the 5b does have an emmc where the 5 does not.

You also need a separate second patch to update
	Documentation/devicetree/bindings/arm/rockchip.yaml

You need to update the Xunlong Orange Pi 5 entry with an enum.
Please see for example the orange-pi-3 entry on how that should look.


> Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 26 +++++++++++++++++++
>
>  2 files changed, 27 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 09423070c992..45249ce15175 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -154,3 +154,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
> new file mode 100644
> index 000000000000..107b65a5e7ea
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
> @@ -0,0 +1,26 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3588s-orangepi-5.dts"

Please don't include the board dts.
Take a look for example at the rk3566-orangepi-3b on how to do this.

I.e. you want a rk3588s-orangepi-5.dtsi which then gets included
into both the original-5 as well as your 5b .


> +
> +/ {
> +	model = "Xunlong Orange Pi 5B";
> +	compatible = "rockchip,rk3588s-orangepi-5", "rockchip,rk3588";
> +};
> +
> +&sdhci {
> +	status = "okay";
> +};
> +
> +&sfc {
> +	status = "disabled";
> +};
> +
> +&wireless_bluetooth {
> +	status = "okay";
> +};
> +
> +&wireless_wlan {
> +	status = "okay";
> +};

both the wireless_bluetooth as well as the wireless_wlan phandles
are not part of the orange pi 5 in mainline. So this probably doesn't
even compile?


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
