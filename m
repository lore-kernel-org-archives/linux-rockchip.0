Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16FA9C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Dec 2022 19:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mB3q0wzQdRRImDHaVVBgFyyppYaenD1M5X3Y+ht05To=; b=IcfZiHt9RQpUhn
	sBcd3hzTP3Y6f+Vd8J0NfePmboHMsDbODvefAjgoG6Oy9Xhtk/IQ+BRoOIaA70a8M4t35Sp0c490R
	7SVLU2odtYCK2uYNMl1mSWshnNKm3vmhNY6Uxz4gM1aLuKG28u8gEw9pmmaTisGXTFpReTaDAXNyT
	CfMdcnx28YjgPoy+cYZKvG50hwFgdkhiEf9bwcfnmT6lMTb8Fh62+z5jweCVOEDe9mJtDSV0h/bAx
	K2dak0Yl0QX/9ynWPfrguqfCd1FC4qlu29iSFt11m0ksBXyFNBVm6CkoTIuEfXL5Unj2lKs7qdSao
	nqwn3VE2W2OQbWcZXMsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAbzy-007Xc0-PH; Wed, 28 Dec 2022 19:21:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAbzm-007XVJ-UA; Wed, 28 Dec 2022 19:21:48 +0000
Received: from [80.120.31.194] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pAbzZ-000631-1G; Wed, 28 Dec 2022 20:21:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: krzysztof.kozlowski+dt@linaro.org, piotr.oniszczuk@gmail.com, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andy Yan <andyshrk@163.com>
Cc: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable wifi module AP6398s for rk3566 box demo
Date: Wed, 28 Dec 2022 20:21:32 +0100
Message-ID: <17226287.uLZWGnKmhe@phil>
In-Reply-To: <20221225114953.3518595-1-andyshrk@163.com>
References: <20221225114915.3518502-1-andyshrk@163.com> <20221225114953.3518595-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_112147_117315_7A96AFC6 
X-CRM114-Status: GOOD (  17.14  )
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

Hi Andy,

Am Sonntag, 25. Dezember 2022, 12:49:53 CET schrieb Andy Yan:
> There is a AP6398s wifi/bt module on this board.
> Fix the sdmmc1 dt node to make wifi work.
> 
> Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  .../boot/dts/rockchip/rk3566-box-demo.dts     | 26 ++++++++++++++++---
>  1 file changed, 22 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> index d956496d5221..6c0c24226b52 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> @@ -324,8 +324,12 @@ wifi_enable_h: wifi-enable-h {
>  			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  
> +		wifi_host_wake_h: wifi-host-wake-l {
> +			rockchip,pins = <2 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
>  		wifi_32k: wifi-32k {
> -			rockchip,pins = <0 RK_PB0 2 &pcfg_pull_none>;
> +			rockchip,pins = <2 RK_PC6 1 &pcfg_pull_none>;
>  		};
>  	};
>  
> @@ -391,16 +395,30 @@ &sdmmc0 {
>  };
>  
>  &sdmmc1 {
> +	/* WiFi & BT combo module AMPAK AP6398S */
> +	#address-cells = <1>;
> +	#size-cells = <0>;
>  	bus-width = <4>;
> +	clock-frequency = <150000000>;
> +	cap-sdio-irq;
>  	cap-sd-highspeed;
> -	disable-wp;
> +	sd-uhs-sdr104;
> +	keep-power-in-suspend;
>  	mmc-pwrseq = <&sdio_pwrseq>;
>  	non-removable;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
> -	vmmc-supply = <&vcc_3v3>;
> -	vqmmc-supply = <&vcca_1v8>;

why are you removing the mmc-supplies here?
The supplies needed for mmc to work should very much be present
I think, especially to also make sure something else doesn't
turn them off.

Heiko

>  	status = "okay";
> +
> +	brcmf: wifi@1 {
> +		compatible = "brcm,bcm4329-fmac";
> +		reg = <1>;
> +		interrupt-parent = <&gpio2>;
> +		interrupts = <RK_PB2 GPIO_ACTIVE_HIGH>;
> +		interrupt-names = "host-wake";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_host_wake_h>;
> +	};
>  };
>  
>  &spdif {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
