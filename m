Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2532D1AD2A
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omIPySjGZU3r0gxKPzLdMaJ8ZEIFIm0rXBVP3vWgveI=; b=FWvp2llqqcSmVZ
	OzV7HWtSGVO8pU+xzQwTv1MaTxjfjT/1LdfPVUsmLFrHC0GeLkwmNmzspKfzTMNrd77g47JcOy9kx
	c2BS/G6NUIFNgFGbkhSBrPnTNeiAFTSecdY/a0wvl7i+qnSypklc2n8xZfqlqjponz5jXP3vWn99/
	vJDWFEBW178LbGbutqz/CsmhqkFX8hEkEE48Gr7CfuvsQYugKmyEAqCYZ8ON9kKvntS4X/bQjEQpo
	9oDYRgZ15YBsRx7NfqWiuBi8QwNHhzMouGG3TijA2xd4r0mMxwFuiSW0IgER/QqYZwI4+iSAmlYUC
	w3UtNf1kkQ/D6Xi0Qg2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zWT-0000000B3aH-2W0q;
	Wed, 16 Oct 2024 08:36:49 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zFw-0000000Azvs-44UZ
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 08:19:47 +0000
X-QQ-mid: bizesmtpip4t1729066754tsug8y4
X-QQ-Originating-IP: RT/EzDwOjaT9oMI5h96SdB9spN7uTzcIp0BYWA6kP4I=
Received: from [IPV6:240f:10b:7440:1:e88d:8fa3 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 16 Oct 2024 16:19:11 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15429359186473848303
Message-ID: <3388BA7683349F1C+520a3fa0-cd19-48d1-99ce-4ababa6405ff@radxa.com>
Date: Wed, 16 Oct 2024 17:19:11 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: fix PCIe2 regulators for
 Radxa ROCK 3A
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn, kever.yang@rock-chips.com, jonas@kwiboo.se,
 linux-rockchip@lists.infradead.org
References: <20240916014039.1918-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240916014039.1918-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: N9fLx70btMTPnB3thV4llxI0dac5C60K+hZLXbk1MCGeSUHmmYrFaO7S
	R6hl3CM26wgv2eaTf55i3weeSc5YQghufuW+lJ4aBZ1MxSiM0M0DfN2WmU5GfXdhCFZwh+l
	X21tukKsT3sa71Ma/xgnUSikmP+vQnu0nk1ONkU2DW82jzZuEFekY7lhS3tceNHdyKgJWIE
	T+uxqLrJbr24MB2HMWHWyM+vQWuJKZz6VL8X+okkqRo6PId3QaYCysBR2AvDGj9BMK9wLv8
	0nqqBraR3wZlrUikbXpW20ir51BdHhS+GtTlDvvBV6YVWw0wMwmHIAu44rDeM7dpqyKj4Lk
	LeVeuou0PQiB+kbg1UxuNRG7hoG5QM07E911rfTBU+7CqrM2bcjmiLhYcHp2HE45MTb8w8S
	Vz4jQQ3Q8Ap7HlI2HYfKVQJdij5cB39FXURIyxQBwBvyieXgAvPjYXFH+b5pG6pav7c9G8B
	sSZ4Bz1covgBlDybcO4KyN1KTkH7u36ptdzsbgn6HR52AviUJzF0KkbUSwIqWaV5fsSGtjO
	yyt7GKaKnS+AqFFkGG4jq0pdAMX/LaroL8/a6kgfLi0oboTm07WOpxDelmjjv8KCWmzaTEt
	3PfniZKl9P0JSpitVQz6QvUdLeVj1TVPGnSTvD3Vm/5xa6wuus+xiDK+JP24NC3aA+SSxtc
	qahimsvFx1A2KOHOL8blJcDWJkppWXr38/XOnVzsOkyeRAVmMLo/DY70tEw0ZK+1AXdBstc
	f1rl9zwqodJOng7nWVolKzdAZIC8Npx5dhL6Q9dCDsvFYeK5k4TJsUcQ4D/s1RYz+TfjPU3
	aYkKnSSysoxr7Ei8w+j73/+agS0/kYS/FGwlQkV+QkaX8qEKAHcbRRQw1Rq72grMonD3LuU
	Rg+h3Pc33dGMGud+rYIypppEL971bWmf9tvnHR4FJMQ=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_011945_898431_44961F30 
X-CRM114-Status: GOOD (  13.27  )
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

Hi,

can anyone review this series?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 9/16/24 10:40, FUKAUMI Naoki wrote:
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
>   .../boot/dts/rockchip/rk3568-rock-3a.dts      | 24 +++++++++++++------
>   1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 59f1403b4fa56..f94cbddf0f0c2 100644
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
> +	pinctrl-0 = <&pcie20_perstn_m1>;
>   	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
> -	vpcie3v3-supply = <&vcc3v3_pcie>;
> +	vpcie3v3-supply = <&vcc3v3_wf>;
>   	status = "okay";
>   };
>   
> @@ -643,12 +653,12 @@ led_user_en: led_user_en {
>   	};
>   
>   	pcie {
> -		pcie_enable_h: pcie-enable-h {
> -			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		pcie20_perstn_m1: pcie20-perstn-m1 {
> +			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   
> -		pcie_reset_h: pcie-reset-h {
> -			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		pcie_enable_h: pcie-enable-h {
> +			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
