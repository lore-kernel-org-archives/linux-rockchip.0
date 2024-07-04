Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C15FEC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 10:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yjhWjS2YPKWNAH1U3E7Sjm4t6tfVU+4N1dhZWmTVaw=; b=WQPlT11xxPM1w2
	EmeXEGj0yRJTHkevm92+jupgKlOyu5OvST0EqGGEkRsxZi5Q0vTknMttAzmW6gDnvD8NbRH/ynVa6
	0IpExUjgCK/q5UEF7sshB/exK+94OUExvB0NUNP0rr8TsvUUHtv9xBlxIATNqDRsvEnbjCut18VJt
	kNka0dmfGaxBFLvr4LFVy4S7LPIyDlbfSo0tVLBnC41oqdiIqZIV4aRiTOy9ET5/Je9+j6v2utnn3
	KpubLgG6Frj3WJKdmDUBmX4MaKESJ9enqZGpxYvkIeuDUP6RgrutT8ZiT+ri7YBQLfN90kGwSg8nW
	uAeUmm11sZt4g3XQXEPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPJno-0000000Csr5-24AM;
	Thu, 04 Jul 2024 10:35:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPJna-0000000CsnL-1JPx;
	Thu, 04 Jul 2024 10:34:47 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPJnY-0007sF-N5; Thu, 04 Jul 2024 12:34:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dsimic@manjaro.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: add ROCK 5 ITX board
Date: Thu, 04 Jul 2024 12:34:43 +0200
Message-ID: <2025932.PIDvDuAF1L@diego>
In-Reply-To: <20240704095524.788607-3-heiko@sntech.de>
References: <20240704095524.788607-1-heiko@sntech.de>
 <20240704095524.788607-3-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_033446_388339_997F7BB0 
X-CRM114-Status: GOOD (  23.69  )
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

Am Donnerstag, 4. Juli 2024, 11:55:24 CEST schrieb Heiko Stuebner:
> The ROCK 5 ITX as the name suggests is made in the ITX form factor and
> actually built in a form to be used in a regular case even providing
> connectors for regular front-panel io.
> 
> It can be powered either by 12V, ATX power-supply or PoE.
> 
> Notable peripherals are the 4 SATA ports, M.2 M-Key slot, M.2 E-key slot,
> 2*2.5Gb PCIe-connected Ethernet NICs.
> 
> As of yet unsupported display options consist of 2*HDMI, DP via USB-c,
> eDP + 2*DSI via PCB connectors.
> 
> USB ports are 4*USB3 + 2*USB2 on the back panel and 2-port front-panel
> connector.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../boot/dts/rockchip/rk3588-rock-5-itx.dts   | 1186 +++++++++++++++++
>  2 files changed, 1187 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index e8eba631da23e..41ee495a91f6b 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -129,6 +129,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtbo
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> new file mode 100644
> index 0000000000000..605277525a4ad
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -0,0 +1,1186 @@

[...]

> +/* FUSB302 and LCD1 connector */
> +&i2c8 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c8m4_xfer>;
> +	status = "okay";
> +
> +	usbc0: usb-typec@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usbc0_int>;
> +		vbus-supply = <&typec_vin>;
> +
> +		usb_con: connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			data-role = "dual";
> +			power-role = "dual";
> +			try-power-role = "sink";
> +			op-sink-microwatt = <1000000>;
> +			sink-pdos =
> +				<PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
> +			source-pdos =
> +				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;

as sigmaris noted on IRC:
  I think the usb-c-connector on the Rock 5 ITX dts should not be a PD sink.
  The schematic from Radxa shows TYPEC_VIN only connected to the output
  of regulator U2603, there is no power path I can see for it to power the
  board [...] and powering via USB-C isn't mentioned in the other docs

  and I'd remove try-power-role and sink-pdos (try-power-role seems
  optional if power-role is not dual)

  and also remove op-sink-microwatt




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
