Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B456C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 14:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUDFsrwKGrt2KJb0oqgBksYJfa7I7mLA/AxM9MdZ700=; b=EQ95Y4jgjz/39d
	TAS35/kUIRYi9V7ReGq24+4L9KvZ6F6jwzaaFTETmp6ios6XWJsOAdNy1iBTXgjPvNjPJCiOhYEEU
	saSEmVkRTcHs6WMi/iJMq/5oaMKM72EnXH6ns1AjTmff+NmducUss6XKZTFGX9MmuRZiFexji5mOJ
	6b2nuLCli/Lz6HqT9bxZjDRko2rGYdm1v6lDPGFsqSuoMZOZP/DwnD6/VdroK3jj2ux6PTXyVBHUd
	AU2AauayFw3vSO75jjyyZQzCI4hC+7QHf0HC9ZHLRvQJLmAzPNUgYI9Xb49mB92ZelPP1zQ0P2bWs
	S6AlctXdofVHZVL/830A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYjl-0000000AtHp-1TAB;
	Wed, 10 Jul 2024 14:56:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYhx-0000000At1a-101G;
	Wed, 10 Jul 2024 14:55:48 +0000
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sRYhs-0001Wz-A6; Wed, 10 Jul 2024 16:54:08 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Anand Moon <linux.amoon@gmail.com>
Cc: Anand Moon <linux.amoon@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
Date: Wed, 10 Jul 2024 16:54:07 +0200
Message-ID: <2356091.ECZNHGQPT7@diego>
In-Reply-To: <20240710142001.7234-1-linux.amoon@gmail.com>
References: <20240710142001.7234-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_075413_324760_B90E4078 
X-CRM114-Status: GOOD (  19.90  )
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

Am Mittwoch, 10. Juli 2024, 16:19:56 CEST schrieb Anand Moon:
> Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> signals. Rename node from 'pcie3' to 'pcie30x4' to align with schematic
> nomenclature.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 20 +++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 2e7512676b7e..a9b55b7996cf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -301,7 +301,7 @@ &pcie30phy {
>  
>  &pcie3x4 {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie3_rst>;
> +	pinctrl-0 = <&pcie30x4_perstn_m1 &pcie30x4_clkreqn_m1 &pcie30x4_waken_m1>;
>  	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc3v3_pcie30>;
>  	status = "okay";
> @@ -340,14 +340,22 @@ pcie2_2_rst: pcie2-2-rst {
>  		};
>  	};
>  
> -	pcie3 {
> -		pcie3_rst: pcie3-rst {
> -			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> +	pcie30x4 {
>  		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
>  			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
> +
> +		pcie30x4_clkreqn_m1: pcie30x4-clkreqn-m1 {
> +			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		pcie30x4_waken_m1: pcie30x4-waken-m1 {
> +			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		pcie30x4_perstn_m1: pcie30x4-perstn-m1 {
> +			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};

I'm not sure what you're going for here, but defining them as gpio makes
them essentially unused? Shouldn't they go to the pcie controller?

From what I found for example
The PERST# signal is used to indicate when the power supply is within its specified voltage tolerance and is stable.

At least you'll need to explain more in the commit message.



Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
