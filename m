Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A12C3065C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 09:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ABhEszHquRs7G6nqmQUYhdsxrkUM6zUl6BJRyM5OeDU=; b=Tu8F+/Cvz8S058s8lRaFH0kCPH
	7thZ3c9B1MnROvKlqKWvz9A11QG+9ZlSw9Jrtxy4Czs4StFGd6YqQb9a+gOULFw5lcQwLDhpeOKu6
	7k3kF85Cl6LUTFJmkului7kppaqswYF6MR8y9hFJ3GSNTWl/tVHu9qYMG2I0uVtCv91dV3E2niOxj
	9KbYn8j41wPB47aRWNnEg9xHP+2y4LgKh0y0rGVp7esUfQGzj9H3APSRv+vP2gfjN/QcWL/gwDKPD
	PcAjDQA79AgZmyW2QTRMOXTLhgYTC6ul++t9abZHxwRjlT54PdjXiszm2SN1KiJRdpCJUGE7bAidY
	Tx6SU50w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPIvv-0000000CllZ-0c36;
	Thu, 04 Jul 2024 09:39:19 +0000
Received: from out-182.mta1.migadu.com ([95.215.58.182])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPIvh-0000000Cliz-1jlP
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 09:39:07 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720085943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UZNJgxosyNiX9qzr7UAd3UGX4gQYJbfBUAOEaVCsycc=;
	b=toPUSqyTaxviu1wd/DydUpiw5NbI2i+Z+8iYr6E7THqkDPne/3+wn3cbC39DEOqVO/yl8u
	uy9P0BQegT8m1QaGHbYfasbtgKeMvCQi27ouoenBZrPu2AUiiRRmD09m+BmCBH7JLGo3Xe
	k31WqK2mX/Bdj8hcxbzWejYNPpX2Vv2JCwLeMXA2hrru95GkiT5SKVZqr/MSmGzBSNWp6e
	4E6Y/Dc9iMw+U1ritSCvTGlCalOohN82MFsQJIvG+4BSej2vQtFp96BYTsjtbAzYYBSyPj
	tgW8MkwSM5Z4n1jd+XA7aZX9LBEtH1ieYFBDor1Q1p8iIIQUbdAxuFCNz3df7w==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: heiko@sntech.de
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add rock5 itx board
Date: Thu, 04 Jul 2024 11:38:51 +0200
Message-ID: <2278169.QnsP76Vvrg@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240703210524.776455-3-heiko@sntech.de>
References: <20240703210524.776455-1-heiko@sntech.de>
 <20240703210524.776455-3-heiko@sntech.de>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_023905_834195_481E7267 
X-CRM114-Status: GOOD (  10.01  )
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
Content-Type: multipart/mixed; boundary="===============6825108074763733304=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6825108074763733304==
Content-Type: multipart/signed; boundary="nextPart2395254.yhVh8MZHF5";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2395254.yhVh8MZHF5
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add rock5 itx board
Date: Thu, 04 Jul 2024 11:38:51 +0200
Message-ID: <2278169.QnsP76Vvrg@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240703210524.776455-3-heiko@sntech.de>
MIME-Version: 1.0

Hi Heiko,

Thanks for submitting this. A quick scan indicates it should work with a 
(recent) Debian kernel OOTB :-)

On Wednesday, 3 July 2024 23:05:24 CEST Heiko Stuebner wrote:
> +&sdhci {
> +       bus-width = <8>;
> +       no-sdio;
> +       no-sd;
> +       non-removable;
> +       max-frequency = <200000000>;
> +       mmc-hs400-1_8v;
> +       mmc-hs400-enhanced-strobe;
> +       mmc-hs200-1_8v;
> +       status = "okay";
> +};
> +
> +&sdmmc {
> +       max-frequency = <200000000>;
> +       no-sdio;
> +       no-mmc;
> +       bus-width = <4>;
> +       cap-mmc-highspeed;
> +       cap-sd-highspeed;
> +       disable-wp;
> +       sd-uhs-sdr104;
> +       vmmc-supply = <&vcc_3v3_s3>;
> +       vqmmc-supply = <&vccio_sd_s0>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
> +       status = "okay";
> +};
> +
> +/* M.2 E-KEY */
> +&sdio {
> +       broken-cd;
> +       bus-width = <4>;
> +       cap-sdio-irq;
> +       disable-wp;
> +       keep-power-in-suspend;
> +       max-frequency = <150000000>;
> +       mmc-pwrseq = <&sdio_pwrseq>;
> +       no-sd;
> +       no-mmc;
> +       non-removable;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&sdiom0_pins>;
> +       sd-uhs-sdr104;
> +       vmmc-supply = <&vcc3v3_ekey>;
> +       status = "okay";
> +};
> +
> +&sfc {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&fspim2_pins>;
> +       status = "okay";

Shouldn't those properties be sorted alphabetically? Or at least consistently?
Note that the same issue is present on other places too, but I believe the 
above quoted part shows the issue enough.

Cheers,
  Diederik
--nextPart2395254.yhVh8MZHF5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoZtqwAKCRDXblvOeH7b
bnCgAP4zrwaK/BWbiaA7rwRd9f/pdJv8MIIlT6RlMaMJjpj3PgD9G3dQjI2QUesx
hlmHmGB3VmWGdOoIuqbJNtvDZ/bNtgs=
=ja2L
-----END PGP SIGNATURE-----

--nextPart2395254.yhVh8MZHF5--





--===============6825108074763733304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6825108074763733304==--




