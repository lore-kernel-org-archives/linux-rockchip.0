Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65CFFC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 10:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3i80fVzLFFRSq0EyQsLyqPy8Z2Cn4moooz+0VY3sFho=; b=0AeDAnrfrPDJnl
	iqV3BIz/80qv6Teo9zm7XjicnPG+yvGQKchpl2E7fmy2oGvTF73E8KhWnXDXyxDq+9JQSJCkVTiw+
	skFnZrz4wC8HN+atRW1gruANCcB4gFyaQLSjtOksb3tlKHhjSNqXO9R2mgB3IPYdZS2nKvQGmjX1M
	1OwHtZymNHbvDJVaykzdZ85YTMB+DIDIRYIbR8zd7rRrCgUF114qQDDWkMCPjRicrm3iK8eHVNHTA
	GSw8UIa1Hws1Wcf6RgJVCe8fHvgZZeXr9pBVwEw72q1WYH9V7rClS2s8olH8IomPW7eoIZrUh29Ec
	PmVPwvzaQDNp3ydy1pkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5lkd-008qOP-NK; Thu, 15 Dec 2022 10:46:07 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5lkX-008qLZ-JX
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 10:46:06 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id d131so3010956ybh.4
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Dec 2022 02:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g4OANl98v7AsQNyM9MzFGjzQDPVC11SlfN97nYRM26M=;
        b=HATD9ebn1O4Qe9c48sjUXAUACDR2u0tYEcJ04UcaOb0gqbvdOEQy2WjU0t1s3K2D+d
         hTGexmJ2/+rL6tOQkJQ/3tejDSjhAmBG8VRo4cm155V0nitfr4/bQmeoNi077uwsxJry
         Oj18WXHOfkY2k34B49RLNqdRYMEAXcdsm7S9ovabE7u89CgLSVoIfpPVrg4GKeHMdxv8
         uU44PZhK8mLJGaxZYdUaW+31l66+FxLUC2QYr2xBEzGB1JRWXSNPhoqSXNyG+xjwEsM+
         FFkfBnC5jXmnkDy9HxV6UXMDhr0atuXFz4P1NmkeU4G2NVrRMhOq6k7HLMF2ix5C2L4e
         mY1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g4OANl98v7AsQNyM9MzFGjzQDPVC11SlfN97nYRM26M=;
        b=eCq0S1Z5ZKrLo/aWXCnXXmMzh0sI93R1MBti4mHp6b9W5tS46ErNdEh1Zd0dS+sMLv
         S4+iYc3T9vcw/B9Ngr4RM/Pb29pIC9pODv0kdcZZVJUYjej7pQKvpNCuua5pkewcCCIy
         gwAytLvuU5LuFYXYRdMTeiFaqpd2vPpCWifxpX1evBQMz/F8dA2YG9ZjiYGGtYcMZ9Ix
         lmexaAVJErZY8CRGBwwJ+E6kN7cfFQJHU85YxO3A+cURYcBByfXFq6IUmcKQ2SYg3n2b
         euMzAeljEbFCmFKjAVCTtcyyPfSd9NUk39KpXqg13/xr6qmWjd/nzAYNr0T2VTs7jD08
         Yvyg==
X-Gm-Message-State: ANoB5pnfd6FEyiwl8Ka2/iM6vayRvUyBYl8V1r9mlog/zaDUrusFsLMz
	hkbPWHyUxnbs2NcdB3Hu7kQkEYdXzu3GBw+yEbL+jw==
X-Google-Smtp-Source: AA0mqf7Z4XI6vc3xWXyspQ0xcWrrGQnaStwZknIY6SMWJ6WCjrysAtVnuDCBX1G9UHn5YWlcNtdhi44B/vwv4QrYGIY=
X-Received: by 2002:a25:8084:0:b0:700:331d:69b4 with SMTP id
 n4-20020a258084000000b00700331d69b4mr19031068ybk.101.1671101159112; Thu, 15
 Dec 2022 02:45:59 -0800 (PST)
MIME-Version: 1.0
References: <20221214182247.79824-1-sebastian.reichel@collabora.com> <20221214182247.79824-4-sebastian.reichel@collabora.com>
In-Reply-To: <20221214182247.79824-4-sebastian.reichel@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Thu, 15 Dec 2022 16:15:47 +0530
Message-ID: <CA+VMnFzMgOC7sgcpQ7nZx2gaJfqqvRu8RxETguaBHN1Lg_nG_w@mail.gmail.com>
Subject: Re: [PATCHv6 3/7] arm64: dts: rockchip: Add base DT for rk3588 SoC
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_024601_866300_2A824332 
X-CRM114-Status: GOOD (  17.72  )
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

On Wed, 14 Dec 2022 at 23:53, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> From: Kever Yang <kever.yang@rock-chips.com>
>
> This initial version supports (single core) CPU, dma, interrupts, timers,
> UART and SDHCI. In short - everything necessary to boot Linux on this
> system on chip.
>
> The DT is split into rk3588 and rk3588s, which is a reduced version
> (i.e. with less peripherals) of the former.
>
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, squash and reword commit message]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi  |   58 +
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 1703 +++++++++++++++++++++
>  2 files changed, 1761 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> new file mode 100644
> index 000000000000..d085e57fbc4c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> @@ -0,0 +1,58 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.

< snip>

> +       qos_vop_m0: qos@fdf82000 {
> +               compatible = "rockchip,rk3588-qos", "syscon";
> +               reg = <0x0 0xfdf82000 0x0 0x20>;
> +       };
> +
> +       qos_vop_m1: qos@fdf82200 {
> +               compatible = "rockchip,rk3588-qos", "syscon";
> +               reg = <0x0 0xfdf82200 0x0 0x20>;
> +       };
> +
> +       gmac1: ethernet@fe1c0000 {
> +               compatible = "rockchip,rk3588-gmac", "snps,dwmac-4.20a";
> +               reg = <0x0 0xfe1c0000 0x0 0x10000>;
> +               interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH 0>,
> +                            <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH 0>;
> +               interrupt-names = "macirq", "eth_wake_irq";
> +               clocks = <&cru CLK_GMAC_125M>, <&cru CLK_GMAC_50M>,
> +                        <&cru PCLK_GMAC1>, <&cru ACLK_GMAC1>,
> +                        <&cru CLK_GMAC1_PTP_REF>;
> +               clock-names = "stmmaceth", "clk_mac_ref",
> +                             "pclk_mac", "aclk_mac",
> +                             "ptp_ref";
> +               power-domains = <&power RK3588_PD_GMAC>;
> +               resets = <&cru SRST_A_GMAC1>;
> +               reset-names = "stmmaceth";
> +               rockchip,grf = <&sys_grf>;
> +               rockchip,php-grf = <&php_grf>;
> +               snps,axi-config = <&gmac1_stmmac_axi_setup>;
> +               snps,mixed-burst;
> +               snps,mtl-rx-config = <&gmac1_mtl_rx_setup>;
> +               snps,mtl-tx-config = <&gmac1_mtl_tx_setup>;
> +               snps,tso;
> +               status = "disabled";
> +
> +               mdio1: mdio {
> +                       compatible = "snps,dwmac-mdio";
> +                       #address-cells = <0x1>;
> +                       #size-cells = <0x0>;
> +               };

One nick with dtbs_check,
ethernet@fe1c0000: Unevaluated properties are not allowed ('reg',
'interrupts', 'interrupt-names', 'power-domains', 'resets',
'reset-names', 'snps,axi-config', 'snps,mixed-burst',
'snps,mtl-rx-config', 'snps,mtl-tx-config', 'snps,tso', 'mdio',
'stmmac-axi-config', 'rx-queues-config', 'tx-queues-config' were
unexpected)

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
