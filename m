Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD918C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 09:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bEP+J58KvHl256Me6hBHlPripvQ5e6IwPpxmqvgNu+g=; b=PxR8zQkVL67er9ozThg1eKwfOA
	oat9pZe4ozm20MSqhHvmfIaN0neSnrUMOyyiPc2Y9pBFj8HHhuf1osEqiMjKD8VLFgonKFtEM9R0e
	UChnuXA2oiSh9lYYY7vhI7QH4utkt0ZolZFqaTliYjCUbOi4DO/nANwEzMt0RIHzSHD4/W1joum4e
	BeFAHkr2taYobTtC7MjkcjKsShLhToIlwzBr/IdDCtjh8AScr56cN/AgGyZm+lP28pqe/VT8Nww1h
	DAMxFwXlZ6qPLMtguttqxJSZrfwZK1t0ywNp5NFPh/i0MrI98yRXnRPxVlDQy4HNHUlzzAOgHasSo
	4EC8oAAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKahV-00000008a7M-3idN;
	Fri, 21 Jun 2024 09:36:57 +0000
Received: from out-181.mta1.migadu.com ([2001:41d0:203:375::b5])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKahS-00000008a5q-1YdS
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 09:36:56 +0000
X-Envelope-To: daniel@makrotopia.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1718962608;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7tocwp9lNfOnGFlQhgrKD+Lp7CcVz+tHpAKPZsWSJzg=;
	b=UTGblEpVdd3T+psQYU9COc2q3jV5L5PhuGGv2162hEoex83pduUNObt1D5UEm/fv7Jj39H
	cgAwnVpYY54HNcEc7qlPAM6jZ6Ullzwc6AQ4ltqbeeyOJYvuRSLFWsdXtPknfR8ZPQdtkq
	6g44YJSyOaDW8mAL+EdmTlOwzzog1LMdMLho/hYfSqHpwPj/I66Bxc6x/s0gnmNPdis+Y1
	VYBwo4Kpkw+msHIBUTxd9Dygl1SIgx1QZWIyWytFO73/7YptRo//l8XkyrvdPjZ1Yv1mP7
	KjrYoFl4Y1h8FJveU68MBYGwtSJ3GBQozEwb+NlcqOFR8Yrr8GsRJ8ItLGoWNg==
X-Envelope-To: aurelien@aurel32.net
X-Envelope-To: olivia@selenic.com
X-Envelope-To: herbert@gondor.apana.org.au
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: ukleinek@debian.org
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: linux.amoon@gmail.com
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: martin@kaiser.cx
X-Envelope-To: ardb@kernel.org
X-Envelope-To: linux-crypto@vger.kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: daniel@makrotopia.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Daniel Golle <daniel@makrotopia.org>,
 Aurelien Jarno <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Anand Moon <linux.amoon@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Martin Kaiser <martin@kaiser.cx>,
 Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add DT entry for RNG to RK356x
Date: Fri, 21 Jun 2024 11:36:45 +0200
Message-ID: <5870442.3KgWVfgXFx@bagend>
Organization: Connecting Knowledge
In-Reply-To: <bd08c142ce6b32cd98014c875c7ccf3657c63f23.1718921174.git.daniel@makrotopia.org>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <bd08c142ce6b32cd98014c875c7ccf3657c63f23.1718921174.git.daniel@makrotopia.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_023654_596205_8917B5A2 
X-CRM114-Status: GOOD (  11.95  )
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
Content-Type: multipart/mixed; boundary="===============3512351518946740198=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3512351518946740198==
Content-Type: multipart/signed; boundary="nextPart2326598.u92GhurISB";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2326598.u92GhurISB
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Cc: Daniel Golle <daniel@makrotopia.org>
Date: Fri, 21 Jun 2024 11:36:45 +0200
Message-ID: <5870442.3KgWVfgXFx@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Friday, 21 June 2024 03:25:30 CEST Daniel Golle wrote:
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index d8543b5557ee..57c8103500ea
> 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -1855,6 +1855,15 @@ usb2phy1_otg: otg-port {
>                 };
>         };
> 
> +       rng: rng@fe388000 {
> +               compatible = "rockchip,rk3568-rng";
> +               reg = <0x0 0xfe388000 0x0 0x4000>;
> +               clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
> +               clock-names = "core", "ahb";
> +               resets = <&cru SRST_TRNG_NS>;
> +               reset-names = "reset";
> +       };
> +
>         pinctrl: pinctrl {
>                 compatible = "rockchip,rk3568-pinctrl";
>                 rockchip,grf = <&grf>;
> --

I had placed the node between ``sdhci: mmc@fe310000`` and
``i2s0_8ch: i2s@fe400000`` which I think is the proper order.

Cheers,
  Diederik
--nextPart2326598.u92GhurISB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZnVJrQAKCRDXblvOeH7b
biBSAQCMa4hNIGCHuiNhbaI8GKE6K+tGfAz4PV8PCWjZL2SX8gEAp/afD39PReUl
9q2MBI5TXF+g0+JU6oBWjxcSlvzXcAw=
=IJaH
-----END PGP SIGNATURE-----

--nextPart2326598.u92GhurISB--





--===============3512351518946740198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3512351518946740198==--




