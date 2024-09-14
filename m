Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18BB5C02181
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGJDo8VVaUgf1+WP3TepNmp+6oHfZSFWNGpHw6zOKgs=; b=NlJ5Dcm75cqxaQ
	i1Usb1j67SycS0OQq+GOe6wqNdqCUOndEIdGw/DH39TJFX0cf+ww/NoEisnmnOjfCqRJygytCmmcf
	gmw1HwMvl7xkMjdC87iuHvlM0xmFgpgn9QvYLcIAEgJzy7KcUSSg0q9jvoL6utGmnxrnLIygH9vmH
	kKzTeJA3x3zDat+htzdPpt0E7Hd48ZQXFZgQwEDib5cvd8PqJYpY76REIDzI6J4YsWqhVzdVyaQHy
	drAPRaHWhOUkfYP4Qy06IAGPDLAJWgsrZKwsvd76EpBOhDrjcmq+nM6FVPdqbMGlDGEr6kq7ghH1g
	hB6iGqypBp2E4tCkjDEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spNcF-00000000Jmk-0QlH;
	Sat, 14 Sep 2024 07:54:47 +0000
Received: from mail-m25484.xmail.ntesmail.com ([103.129.254.84])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spNcB-00000000Jm3-1mRq
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Sep 2024 07:54:45 +0000
DKIM-Signature: a=rsa-sha256;
	b=Lf/qV3A0IKRhcVi+DbK5p4/fk+IwMhnlbxiOyvG+XacSYHQuGy5cLuOO1zU2zyLne8vxr4mRkDi4OFNv8XIjnVBmMP4kossAjvy9abav7pqNsSaANsBvz5jjY1myzf5b2n1SQPYYnv8JqrW/WeaDne1Q3hKI7kYR2I7TbSpHDwc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=TAAVcx5jRqX+wAAfVBMLIOvGooIIqUN0IwqP65uY+3w=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.67] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id EF0949007BC;
	Sat, 14 Sep 2024 15:54:30 +0800 (CST)
Message-ID: <4985f0c5-3772-4e8e-82e9-35c8ac8ae20c@rock-chips.com>
Date: Sat, 14 Sep 2024 15:54:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: fix PCIe2 regulators for
 Radxa ROCK 3A
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de,
 Jonas Karlman <jonas@kwiboo.se>
Cc: amadeus@jmu.edu.cn, linux-rockchip@lists.infradead.org
References: <20240913230604.696-1-naoki@radxa.com>
Content-Language: en-US
In-Reply-To: <20240913230604.696-1-naoki@radxa.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR0dQ1ZKQkJDQhofTRhJSEpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a91ef86bfce03a3kunmef0949007bc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PT46MRw6EDIyERw6NQEwQzBW
	DC9PCxRVSlVKTElNSEtLT0xKTElJVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPT0NPNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_005444_004365_43CD344B 
X-CRM114-Status: GOOD (  17.91  )
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

Hi Naoki,

On 2024/9/14 07:06, FUKAUMI Naoki wrote:
> currently "vcc3v3_pcie" regulator is used for PCIe2 M.2 E key
> connector, but, by schematic[1], it's incorrect. "vcc3v3_wf" regulator
> is correct one. add it and fix related vin-supply.
The fix is fine.
> changes for pinctrl are to claim all 3 pins instead of only reset pin
> as like as rk3568-rock-3b.dts.

I may missing some discussion about this, any help about this?

Seems the rk3568-rock-3b.dts is from Jonas, so I add Jonas to the mail.

> [1]https://dl.radxa.com/rock3/docs/hw/3a/radxa_rock_3a_v1310_schematic.pdf
>
> Fixes: 0fbbfb0b00d1 ("arm64: dts: rockchip: Enable PCIe controller on rock3a")
> Signed-off-by: FUKAUMI Naoki<naoki@radxa.com>
> ---
> Changes in v2:
> - split patches for PCIe2 and PCIe3
> - fix pinctrl node name to overwrite rk3568-pinctrl.dtsi
> ---
>   .../boot/dts/rockchip/rk3568-rock-3a.dts      | 28 +++++++++++++++----
>   1 file changed, 23 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 59f1403b4fa56..6f6b31b4442cd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -136,7 +136,17 @@ vcc3v3_sys: vcc3v3-sys-regulator {
>   		regulator-boot-on;
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
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
>   	};
>   
>   	vcc5v0_sys: vcc5v0-sys-regulator {
> @@ -592,9 +602,9 @@ rgmii_phy1: ethernet-phy@0 {
>   
>   &pcie2x1 {
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_reset_h>;
> +	pinctrl-0 = <&pcie20m1_pins>;
>   	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
> -	vpcie3v3-supply = <&vcc3v3_pcie>;
> +	vpcie3v3-supply = <&vcc3v3_wf>;
>   	status = "okay";
>   };
>   
> @@ -646,9 +656,17 @@ pcie {
>   		pcie_enable_h: pcie-enable-h {
>   			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
> +	};
>   
> -		pcie_reset_h: pcie-reset-h {
> -			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> +	pcie20 {
> +		pcie20m1_pins: pcie20m1-pins {
> +			rockchip,pins =
> +				/* pcie20_clkreqnm1 */
> +				<2 RK_PD0 4 &pcfg_pull_none>,

The CLKREQ is used when L1 Substate is enabled, and seems like we don't 
actually use this feature,

we may need an "supports-clkreq" like nvidia platform to support the 
clkreq signal.

Keep the CLKREQ as default GPIO function is a better choice before we 
really need it.

> +				/* pcie20_perstnm1 */
> +				<3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>,
> +				/* pcie20_wakenm1 */
> +				<2 RK_PD1 4 &pcfg_pull_none>;

I believe no one is using the wake up function with mainline code, 
because this is a sideband wakeup

by GPIO interrupt to CPU, not by PCIe controller.

So the SoC default setting as GPIO should be correct instead of set it 
as PCIe function.


Thanks,
- Kever
>   		};
>   	};
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
