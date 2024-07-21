Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60DCBC3DA61
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 17:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgqEUQYT4BbDZkslf0ML5qs4kqS5EqrolS+53O+Uh8A=; b=GTtiwEgjCKPPpM
	+U3hlOPvU/5LY+Dkw2gblXJ0k+mqmLdabRN7tuk3sLNF/wh6M2N1j2ZeZeYWcPf5eqdop4WLb/vCv
	nk5b8UsAs51E0fyrQgAUY3wo3O1r35CdRNkzwWSaRHlemDwyInoJzO0+u6sNGDqHRzMAj6v1sdZO2
	mj3Mvuo1EYPmjxcyMyIJHm45vrefIg5Z04NSe/owIoQky4MLz1AP9SkvQ1rKTlFZ70C32rPhxtU0I
	ACN7WFPbI/S1qZQgTQViZtJMMKeKpMf4P4xjILcoiyufuMKCnX/B0uqgxf8OApSalvn9dTI+X8kOP
	hJYXzj8vSisRxcataWlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVadG-00000007HRF-11PC;
	Sun, 21 Jul 2024 17:46:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVadD-00000007HQd-1SNn;
	Sun, 21 Jul 2024 17:46:00 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVadB-0007IK-S6; Sun, 21 Jul 2024 19:45:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: ukleinek@debian.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 12/14] arm64: dts: rockchip: add missing pmic information on
 Qnap-TS433
Date: Sun, 21 Jul 2024 19:45:57 +0200
Message-ID: <1843564.b8e9qBsS6s@diego>
In-Reply-To: <20240721173723.919961-13-heiko@sntech.de>
References: <20240721173723.919961-1-heiko@sntech.de>
 <20240721173723.919961-13-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_104559_421118_67F4B888 
X-CRM114-Status: GOOD (  11.68  )
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

Am Sonntag, 21. Juli 2024, 19:37:21 CEST schrieb Heiko Stuebner:
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index a576d45ccc3e0..779e1b8a35ca5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -101,6 +101,16 @@ vcc3v3_pcie: regulator-vcc3v3-pcie {
>  		vin-supply = <&dc_12v>;
>  	};
>  
> +	vcc3v3_sys: vcc3v3-sys {

should be
	vcc3v3_sys: regulator-vcc3v3-sys {


> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
