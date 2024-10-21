Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7799AD15DB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 15:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CifbxyhDI+hQ7/DMlPA1ToiONmzmp49qlkp8aFp7Sw=; b=1RFALng9Cviapq
	DTK2R/xocahOASYBWb8agGJSSC9Y+DB0dJa9a75mtEw4ROLTROXK95inJ9LtpX4ZDfgPCxgS9ZJML
	Gc1eiX924E430DRUgwuyOA2E2UVQpTANTTaq0AyRiew55wi77xAstZnlad30Cyk/b9rCZ0TflUVGo
	OV1Ay7EGrjiQ7snDdrOzQl1J5uwp4PEp52gJfCItRJI2XKO8ezA2nOQLIfq+/Qvz/f7TeEJi6SIOf
	dcWvJLu2WE3EL/y0Jqy/L0Kvh4cZXnowlFEgq9yn10X8a805x95n148W37U8tNwzKstAw5HOk7dwZ
	KM82uGiHlXNSZy5ut6lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uYe-00000007pf5-1v46;
	Mon, 21 Oct 2024 15:43:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uWQ-00000007p7o-3Zkg
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 15:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5eWUB0bhWVd6Mle/G4aOJcrtxhFTAUWDTc+WH8RpAFc=; b=gC1tKQi6rVU9vxFDWUE1Y9Nc1i
	SewJTi7hiIOiWCTozWClHMPgkBa/nifg+WtA4fkkFY7LkgqKdK0UQWog6/DPcb7axuY0ae+KCp4Mf
	FiTwL61GKVOJL4+5jRb1zIJI+SdvDT0ZRUtNXwxXOS0bVTYD4VElyIn4NAebu072vXiOzTYAxNnBH
	u9jwFCHS812vBnWsynz2B+d5mX2JTfp2WxSDxNilr4Ck0f2RIgNWZv6PMABGGXhPh9t1junfVPKpW
	p9hk3FgkmjLkK7J4uBfXmhKalp0HopVmwFGboSk5l0FaIbYcCbDUh0wH6Xvu8APG0la13gYrEu1JU
	M8ZS1YPg==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t2uWG-0005fx-QK; Mon, 21 Oct 2024 17:40:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: amadeus@jmu.edu.cn, kever.yang@rock-chips.com, jonas@kwiboo.se,
 linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: fix PCIe2 regulators for Radxa ROCK
 3A
Date: Mon, 21 Oct 2024 17:40:32 +0200
Message-ID: <8441998.T7Z3S40VBb@diego>
In-Reply-To: <20240916014039.1918-1-naoki@radxa.com>
References: <20240916014039.1918-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084042_949324_7717B24F 
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

Hi,

Am Montag, 16. September 2024, 03:40:38 CEST schrieb FUKAUMI Naoki:
> currently "vcc3v3_pcie" regulator is used for PCIe2 M.2 E key
> connector, but, by schematic[1], it's incorrect. "vcc3v3_wf" regulator
> is correct one. add it and fix related vin-supply.
> 
> [1] https://dl.radxa.com/rock3/docs/hw/3a/radxa_rock_3a_v1310_schematic.pdf
> 
> Fixes: 0fbbfb0b00d1 ("arm64: dts: rockchip: Enable PCIe controller on rock3a")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v3:
> - fix pinctrl just for reset pin as GPIO
> Changes in v2:
> - split patches for PCIe2 and PCIe3
> - fix pinctrl node name to overwrite rk3568-pinctrl.dtsi
> ---
>  .../boot/dts/rockchip/rk3568-rock-3a.dts      | 24 +++++++++++++------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 59f1403b4fa56..f94cbddf0f0c2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -136,7 +136,17 @@ vcc3v3_sys: vcc3v3-sys-regulator {
>  		regulator-boot-on;
>  		regulator-min-microvolt = <3300000>;
>  		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc12v_dcin>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc3v3_wf: vcc3v3-wf-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_wf";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc3v3_sys>;
>  	};
>  
>  	vcc5v0_sys: vcc5v0-sys-regulator {
> @@ -592,9 +602,9 @@ rgmii_phy1: ethernet-phy@0 {
>  
>  &pcie2x1 {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_reset_h>;
> +	pinctrl-0 = <&pcie20_perstn_m1>;

the patch is about fixing regulator supplies for the pcie controller,
not about changing the pinctrl. So this change is quite unrelated and
definitly needs a separate patch.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
