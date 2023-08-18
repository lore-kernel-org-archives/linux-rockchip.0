Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B1F2EE499B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Aug 2023 21:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0S5CiHR6gEsf6OWtxFA8beaf5AsT7sg5qrKmFQhLTb0=; b=IRaFcXd8Kom/Wd
	TMOuL9zBacXhK4E4G/TFhrEMZAwhvyqWVl21WM0AZE0oPGn3tft5kl0aRGEH5FaNjnHRA/zyc6Ibt
	fIpRttPRd8vBh8llFzxjz1HIf81RpiuSWyoh9kh36gfRe1X6NIg8JQTTBcpfGDBCkWhuTA/obPgeE
	8/d2aXrNSxv6qwzM4AHawGSpGNqJcm5RWkM++RUhFxNZC28aEboFBrbHwKWzPtGf3NferBHP2HAdz
	Kkb+gGJTi4QMnTmVzmKUNyC9C/1Fmv35DOs78ovIvALSxx+RoA00FzFaYfCCy1mfvnI4tLuq/04iZ
	IWYI9kUp9Lx1J0d0fy9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qX7QD-00A50K-1c;
	Fri, 18 Aug 2023 21:54:21 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qX7QA-00A4zg-1M
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Aug 2023 21:54:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=qeXAbHvNitTFm4cEy03EvZZa2UPZe6OGwywOZibvvjM=;
	b=Ic+M+DTWya+c2KGKgZMxF18ywtY01nCEyeCkL+Q+gDU2MVoV/i0YSqTLMncc5VYNfu9r
	KYbLUZlba3jdCjJGmjSAboag8uAQFPI3HRdHJKDvK6oxlwaAGlQlnThdbx88Ad6FTA6Kfc
	JrGh87wP4wfQvi+6o9ayiy1PgUpcG8ItJRh6Y+A4cEgY6qvLnLG+9eHFf2PvUvcWGRtX4K
	OUHS2YA5MOS2uQPNtcRfNnvQFOLJUgtiJYIkft9AoKykvVg7wBLQgl7jRbfLrqpCH+50ld
	UabCmJ3FEuMw+suTMUhJrZwBQntBjBJW4r8bfGCa5VwkoYXW6/brg6QVazOcwVGA==
Received: by filterdrecv-84b96456cb-5hl7m with SMTP id filterdrecv-84b96456cb-5hl7m-1-64DFE885-7
        2023-08-18 21:54:13.415450006 +0000 UTC m=+8633757.384197490
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-6 (SG) with ESMTP
	id cPUyzc9dQ4SEYPR19RR_gw
	Fri, 18 Aug 2023 21:54:13.157 +0000 (UTC)
Message-ID: <23e9beba-92cf-4f89-a8a9-49e6d83aacc3@kwiboo.se>
Date: Fri, 18 Aug 2023 21:54:13 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Orange Pi 5
Content-Language: en-US
References: <cover.1692372351.git.efectn@6tel.net>
 <201e8df24c3a2f25c13d3f1d129f8be4fe2eb97a.1692372351.git.efectn@6tel.net>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <201e8df24c3a2f25c13d3f1d129f8be4fe2eb97a.1692372351.git.efectn@6tel.net>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h7acr64auAJIdVSfd?=
 =?us-ascii?Q?JfNj8LCzOOTJYbb7HIT2GhOxWYwywFIGennykEL?=
 =?us-ascii?Q?HoHPtVx5otYbY3ofWaJ8eD5gaFX016mUgCLGoPc?=
 =?us-ascii?Q?WwTC=2F9p1hxWDi5raQN7cmQYczD2pKwSlLvByJoE?=
 =?us-ascii?Q?lyJidOFCtUQLFiKSM0mq9X9EHAXjfN9SeYYqDNg?=
 =?us-ascii?Q?CPby+ufZO7cU1sGGYwQ4g=3D=3D?=
To: Muhammed Efe Cetin <efectn@6tel.net>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
	sebastian.reichel@collabora.com, megi@xff.cz
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_145418_595491_34F708CF 
X-CRM114-Status: GOOD (  13.80  )
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

On 2023-08-18 18:05, Muhammed Efe Cetin wrote:
> Add initial support for OPi5 that includes support for USB2, PCIe2, Sata,
> Sdmmc, SPI Flash, PMIC.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 687 ++++++++++++++++++
>  2 files changed, 688 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index e7728007fd1b..c29386106b7a 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -105,3 +105,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> new file mode 100644
> index 000000000000..f396b1285d73
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> @@ -0,0 +1,687 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +

[...]

> +
> +&gmac1 {
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy1>;
> +	phy-mode = "rgmii-rxid";
> +	pinctrl-0 = <&gmac1_miim
> +		     &gmac1_tx_bus2
> +		     &gmac1_rx_bus2
> +		     &gmac1_rgmii_clk
> +		     &gmac1_rgmii_bus>;
> +	pinctrl-names = "default";
> +	snps,reset-gpio = <&gpio3 RK_PB2 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 20000 100000>;

snps,reset props are deprecated, use reset-gpios in rgmii_phy1.

> +	tx_delay = <0x42>;
> +	status = "okay";
> +};
> +

[...]

> +
> +&mdio1 {
> +	rgmii_phy1: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;
> +	};
> +};
> +

[...]

> +
> +&sfc {
> +	pinctrl-0 = <&fspim0_pins>;
> +	pinctrl-names = "default";
> +	max-freq = <100000000>;

This prop is not used, drop it.

> +	#address-cells = <1>;
> +	#size-cells = <0>;

You already have #address-cells and #size-cells in rk3588s.dtsi.

> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0x0>;
> +		spi-max-frequency = <100000000>;
> +		spi-tx-bus-width = <1>;
> +		spi-rx-bus-width = <4>;

spi- props should be in alphabetical order, rx before tx.

> +		#address-cells = <1>;
> +		#size-cells = <0>;

You can also drop #address-cells and #size-cells here.

Regards,
Jonas

> +	};
> +};
> +

[...]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
