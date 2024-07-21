Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3262FC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 17:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78qV0Wg+aGiyyaprPcXoF5ZTy82HQODJVcb/7JE9xGM=; b=Wid9e/VlBdYirt
	2Col2CJPYLk9dYMIHCggOlzzYQ6cziy1+mrtb1+iHLnGd9jAATT3Rlu6kHyrYTRVrcrce0CHNhldA
	KKdALeE5V30q9PaSAT16Ub/Fc+9NHJ5l7MgBFqAZDkONg6NQzmSHpiiDvEOTQ/FSBcGv9bSaf5Sxc
	YuqdTueqUppiOp81IDafRZ3RWhGATcqXfllP0LvsxTRDIzSETiMqp5UdbE2v9ciHXi31Na4oN7aW3
	fw4J1ujwKAm7CRKvns5FLmPK3+8o1NbZsj71L3hhZ9B76oRTtB0enSX6idxVMZz5I6z6V/4FQisPO
	AebQS80+nmlkIT5Gq0Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVacJ-00000007HHD-2sA1;
	Sun, 21 Jul 2024 17:45:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVacH-00000007HGR-01kk;
	Sun, 21 Jul 2024 17:45:02 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVacF-0007HK-FD; Sun, 21 Jul 2024 19:44:59 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: ukleinek@debian.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 11/14] arm64: dts: rockchip: define cpu-supply on the
 Qnap-TS433
Date: Sun, 21 Jul 2024 19:44:58 +0200
Message-ID: <3358212.0oRPG1VZx4@diego>
In-Reply-To: <20240721173723.919961-12-heiko@sntech.de>
References: <20240721173723.919961-1-heiko@sntech.de>
 <20240721173723.919961-12-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_104501_082040_D46FB73A 
X-CRM114-Status: GOOD (  11.40  )
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

Am Sonntag, 21. Juli 2024, 19:37:20 CEST schrieb Heiko Stuebner:
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index c593a9c2313a3..a576d45ccc3e0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -129,6 +129,16 @@ vcc5v0_otg: regulator-vcc5v0-otg {
>  		vin-supply = <&vcc5v0_usb>;
>  	};
>  
> +	vcc5v0_sys: vcc5v0-sys {

should be
	vcc5v0_sys: regulator-vcc5v0-sys {


> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
