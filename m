Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD01C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Oct 2022 07:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGFs0EsEsdvKMleQrQWNTIJTbDJfyz1kFuY55gwU+kE=; b=B9NUW5Rlrb+mVf
	Mi6PeeG3Ybog/kDpZnCT+RXQtKR2mXVdTyvzCI+0kPSgyr79vhf+89vJmp9oXYc04wtZF95pPiYqm
	SBzgzdIP8/8rqWzfIQpgCkL8wz31dlanzrIqMY5vXPz9BdIWfZqGQZyxcYet3cSITNQUEiu1+hvlk
	OEuvNcQWvk0PwgAj45CgPwmYZWPobfLFYqmF+hAbIy6vyVbZ2FEn782sM68nLRnqoxGWglnvRO8AV
	5b+uazhyR4IgMlpisVEfOA+ihX/zbIOYtPrvmIOhs2y7ljXt5wpjNQKpDjvD2ebEmbOUxjwIA28fR
	UDGlApnFjHk2EsfCFdwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofz8y-00CueZ-8g; Wed, 05 Oct 2022 07:48:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofz8w-00Cudw-C1; Wed, 05 Oct 2022 07:48:39 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ofz8t-0007vf-3a; Wed, 05 Oct 2022 09:48:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux.amoon@gmail.com, Chukun Pan <amadeus@jmu.edu.cn>
Cc: krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, michael.riesch@wolfvision.net, robh+dt@kernel.org, Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Rename pinctrl label of pcie2x1 on rock-3a
Date: Wed, 05 Oct 2022 09:48:34 +0200
Message-ID: <2128313.Icojqenx9y@diego>
In-Reply-To: <20220926180102.37614-3-amadeus@jmu.edu.cn>
References: <20220926061420.1248-1-linux.amoon@gmail.com> <20220926180102.37614-1-amadeus@jmu.edu.cn> <20220926180102.37614-3-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_004838_432528_00AA27C3 
X-CRM114-Status: GOOD (  16.37  )
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

Am Montag, 26. September 2022, 20:01:01 CEST schrieb Chukun Pan:
> Distinguish it from the pinctrl label of pcie3x2 added later.
> Also added comments to the pcie2x1 node.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 8adf672709e8..1b195355da2a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -539,8 +539,9 @@ rgmii_phy1: ethernet-phy@0 {
>  };
>  
>  &pcie2x1 {
> +	/* M.2 slot */
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_reset_h>;
> +	pinctrl-0 = <&ngffpcie_reset_h>;

please always try to use pin-names as they are in device-schematics.
I.e. if the reset-pin is named pcie_reset_h there, it should stay that way.
Following schematics names makes looking up things way easier.

Heiko

>  	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc3v3_pcie>;
>  	status = "okay";
> @@ -582,7 +583,7 @@ pcie_enable_h: pcie-enable-h {
>  			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  
> -		pcie_reset_h: pcie-reset-h {
> +		ngffpcie_reset_h: ngffpcie-reset-h {
>  			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
