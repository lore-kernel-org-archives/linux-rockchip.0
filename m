Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 624AAC54E49
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 09:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cxKNBTF6F9njgiZXk/T5Utyfop8iEs8MPmbftuy9KI=; b=SmTeCrrznzp5Tf
	UbJy4wqONKR9mFkhc5NZy8FjOkQjrdM8lvFvdWbcxYQPR/dfYnvKQ7KQCuZwxUuQGx7uMwe19DKni
	v1Mchv1qsRvtNQdBDCflMRc41kQiVvWy/WYiUs4aDyp1CjMJUDr4cD6DSA6F5xVffmz9AGc9TDXCW
	4CvmZrrxBvRDjKAO5epzetU4iwYyeZitZXXotKvea3DIYYKV05ZFYtcF63BDWK6ognzTdVo4ZsPJ6
	ggw0pQmBVE99ke9wjo8UdMGPp6yYQKIyE+RlvXBJCGqbTvbgHdlu6WNNM2JD9tbgUq/4K2z7hX92B
	2ipiw5eOOcd6N1L4TVtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4Ix-00000008HgN-0Cyb;
	Mon, 04 Mar 2024 09:08:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4It-00000008HfO-1qP1;
	Mon, 04 Mar 2024 09:08:12 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rh4Ij-0007Mu-6e; Mon, 04 Mar 2024 10:08:01 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 04 Mar 2024 10:07:59 +0100
Message-ID: <3082796.ktpJ11cQ8Q@diego>
In-Reply-To: <20240304084612.711678-2-ukleinek@debian.org>
References: <20240304084612.711678-2-ukleinek@debian.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_010811_510624_EED17329 
X-CRM114-Status: GOOD (  21.47  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Uwe,

Am Montag, 4. M=E4rz 2024, 09:46:11 CET schrieb Uwe Kleine-K=F6nig:
> While it requires to have the right phy driver loaded (i.e. motorcomm)
> to make the phy asserting the right delays, this is generally the
> preferred way to define the MAC <-> PHY connection.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>
> ---
> Hello,
> =

> Andrew already pointed out when I posted the patch introducing the gmac0 =
node
> that rgmii-id would be the preferred way to setup things. Back then this =
didn't
> happen because this change broke reception of network packets. However th=
is
> only happend because I didn't have the right phy driver loaded.

trying to understand how the (not) loaded module fits into this :-)
The mdio-bus is supposed to probe the phy and load the appropriate module.

From your description it sounds like the correct phy module needs to be
actually loaded? Or was that meant to be a "requires to have the right phy
driver compiled" instead?


Heiko



> Best regards
> Uwe
> =

>  arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/ar=
m64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index 6a998166003c..36ad48d46bc1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -20,15 +20,13 @@ &gmac0 {
>  	assigned-clock-rates =3D <0>, <125000000>;
>  	clock_in_out =3D "output";
>  	phy-handle =3D <&rgmii_phy0>;
> -	phy-mode =3D "rgmii";
> +	phy-mode =3D "rgmii-id";
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&gmac0_miim
>  		     &gmac0_tx_bus2
>  		     &gmac0_rx_bus2
>  		     &gmac0_rgmii_clk
>  		     &gmac0_rgmii_bus>;
> -	rx_delay =3D <0x2f>;
> -	tx_delay =3D <0x3c>;
>  	status =3D "okay";
>  };
>  =

> =

> base-commit: 67908bf6954b7635d33760ff6dfc189fc26ccc89
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
