Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64198C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 22:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iko6O8xMxvbsfHDQKBjvLhBGEXG+UDgjKSA76wj/14k=; b=MD6bVc5PxUv77i
	8Tem6nOtLQZj94ZdiAH6sA2+fZbHZMTASfMES0gGIU+C8EWnEBmU1mkRzhX77mDHZXTVAA7kOtXQR
	vbAnDb0nXAcPVqGCWilxAwaS3zjlY/FcFtw3aB75dSVAnBPxxQ6B4d15hvDfnmBsVtGvg/12sUj07
	nIeh/ldxJ47Us6CTygt5rHyfFQ6QwXNirTgf7uhzrW/Vkrvvkabhn4VuWeEw15RVun9CI/wxkcldv
	qoznhT+BV/nieSPSIoLvg73hLUEN6v6qfbjeQkOSSq1+CF8nJnmlnkisFEoNOSb7294z84SXiKDej
	pfzKvWVjO3Zfl38DGejA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJL1v-001egU-1a;
	Fri, 29 Dec 2023 22:08:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJL1s-001efn-2Q
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Dec 2023 22:08:33 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rJL1o-0004Bc-LT; Fri, 29 Dec 2023 23:08:28 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Shantur Rathore <i@shantur.com>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
Date: Fri, 29 Dec 2023 23:08:27 +0100
Message-ID: <2323515.eGJsNajkDb@diego>
In-Reply-To: <20231222141616.508073-1-i@shantur.com>
References: <20231222141616.508073-1-i@shantur.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_140832_811256_015CF9A9 
X-CRM114-Status: GOOD (  18.49  )
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
Cc: linux-rockchip@lists.infradead.org, dsimic@manjaro.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Rathore:
> USB port regulators should be controlled by PHYs
> so we remove always-on property and let PHYs manage the
> regulator.
> 
> phy-supply isn't sconfugred for the TypeC port and now that we are
		^^ configured ?

> removing regulator-always-on, we need to fix the phy-supply
> so the PHYs are able to turn power to type-c port.
> 
> Series-version: 2
> 
> Signed-off-by: Shantur Rathore <i@shantur.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index bca2b50e0a..f7273f7990 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc5v0_host_en>;
>  		regulator-name = "vcc5v0_host";
> -		regulator-always-on;
>  		vin-supply = <&vcc5v0_usb>;
>  	};
>  
> @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc5v0_typec_en>;
>  		regulator-name = "vcc5v0_typec";
> -		regulator-always-on;
>  		vin-supply = <&vcc5v0_usb>;
>  	};
>  
> @@ -859,6 +857,7 @@ &u2phy0 {
>  	status = "okay";
>  
>  	u2phy0_otg: otg-port {
> +		phy-supply = <&vcc5v0_typec>;
>  		status = "okay";
>  	};

Just to explain for me, what is supplying the "other" OTG port
	u2phy1_otg: otg-port {}

in u2phy1 ... this one is status okay, but does not have any phy
supply?


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
