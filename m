Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA77AC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Aug 2024 16:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ox94cwmIPInOVCivaNfqB8z/6OI6zWqFXVbi6wZrjRs=; b=noHU6asJDtUcOY
	kibLcLYbMwESuiZR1Q308eXCeTeI/BT/57pHuXTIhMHwPRkZ4JG4VXMUOOGb3svFLc3c1PAe9UbNU
	vIS9O9J4+JGKa703CScya9G5TFljUr3gqgijkIjM7To4W3SxKGMUJ2vXHqTQOBUiivzbqWZc25w7m
	ErTLsJs3I9bwv4JTjAbSzdT9ce3806LQN9sYxShDxr8BPB+jE/jVquEMW1u84CY7HfhMb97shUPeQ
	YPINgI0lhyQ8ykf8zHJD5AwGxmc8871fUA5Clnl66Mm0gj3gcp6iT1W6j2v/rYwtMId5EsGib1HF7
	ZPFSUxQraBmmtcEtJPoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgRzF-000000063y1-1ToD;
	Tue, 20 Aug 2024 16:45:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgQx7-00000005rZF-0ZsN
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Aug 2024 15:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fr89VNofrNpzTT8UG3T7ThNsQxNp+Jhex3I5Mm+FIqg=; b=vrVo7mJq3+ggj6ByXH0zU3QnKA
	Usga7A3HSO8vVfjXPfdiYptL1LppNDxD6biijQMGRcpbovoBL4ZeSixm14av5YACIflbHDTOG9FYe
	FJSawyfX3s/zAwkGHY4mk1ZujKsxL8uOJ9sMHNd/gnOR/dnM2nMF86lUttqtZ1MI649dXsvqP+jN7
	LM0pwngG4VayISLF+7m1BKomBXg2C+k7kDKF4I2ohTaq8TKd7Zm9sCVc6yLlnfSQZyJpCzHDANl/e
	+JPRLghZGvVBU9fgwM8AGknhd/MxRSihxsK5YqPYpoWC7JI+2NguuZWcGtKCFzM1swojQcOwZbD6o
	UrzF//Hg==;
Received: from i53875aca.versanet.de ([83.135.90.202] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sgQx3-0000C4-A2; Tue, 20 Aug 2024 17:39:17 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Cc: linux-rockchip@lists.infradead.org,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add FriendlyELEC NanoPC-T6 LTS
Date: Tue, 20 Aug 2024 17:39:42 +0200
Message-ID: <2663332.tIAgqjz4sF@diego>
In-Reply-To: <20240820-friendlyelec-nanopc-t6-lts-v1-1-da1273c3e08e@juszkiewicz.com.pl>
References: <20240820-friendlyelec-nanopc-t6-lts-v1-1-da1273c3e08e@juszkiewicz.com.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_083921_234922_7C7F77FF 
X-CRM114-Status: GOOD (  25.86  )
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

Hi Marcin,

Am Dienstag, 20. August 2024, 16:42:08 CEST schrieb Marcin Juszkiewicz:
> From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> 
> FriendlyELEC introduced new version of NanoPC-T6 SBC.
> 
> MiniPCIe slot got removed and USB 2.0 configuration has changed.
> There are two external accessible ports and two ports on internal
> header.
> 
> There is on-board USB hub which provides:
> - one external connector (bottom one)
> - two internal ports on pin header
> - m.2 E port
> 
> Top USB 2.0 connector comes directly from SoC.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
> FriendlyELEC introduced new version of NanoPC-T6 SBC.
> 
> MiniPCIe slot got removed and USB 2.0 configuration has changed.  There
> are two external accessible ports and two ports on internal header.
> 
> There is on-board USB hub which provides:
> - one external connector (bottom one)
> - two internal ports on pin header
> - m.2 E port
> 
> Top USB 2.0 connector comes directly from SoC.
> 
> I am not sure should it be separate source file or should it be
> integrated into rk3588-nanopc-t6.dts one. The differences are small:
> 
> - no vdd_4g_3v3 regulator on LTS
> - no vcc5v0_host_20 regulator on non-LTS
> - LTS one has more complex USB 2.0 setup
> 
> When I merge LTS differences into NanoPC-T6 dts file then my
> NanoPC-T6 LTS board boots fine. But I have no way to test on non-LTS
> one.
> ---
>  arch/arm64/boot/dts/rockchip/Makefile              |  1 +
>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     | 60 ++++++++++++++++++++++

missing dt-binding addition (in a separate patch) to
Documentation/devicetree/bindings/arm/rockchip.yaml

Please group with the other nanopc-t6, look at the other FriendElec
entries for inspiration.


>  2 files changed, 61 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index fda1b980eb4b..0f982c741243 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -128,6 +128,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
> new file mode 100644
> index 000000000000..13f273cfe94f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
> @@ -0,0 +1,60 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2023 Thomas McKahan
> + * Copyright (c) 2024 Marcin Juszkiewicz
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include "rk3588-nanopc-t6.dts"
> +
> +/ {
> +	model = "FriendlyElec NanoPC-T6 LTS";
> +	compatible = "friendlyarm,nanopc-t6-lts", "rockchip,rk3588";
> +
> +	vcc5v0_host_20: vcc5v0-host-regulator {

most recent naming suggestion is would be regulator-foo.
Also please double check with the schematics what's the actual
name, your phandle doesn't match the regulator-name below.

> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&usb20_host_pwren>;
> +		pinctrl-names = "default";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-name = "vcc5v0_host";
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +};

Cheers
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
